using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Services; //引入命名空间


public partial class wdcz_ckwz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public string title = null;
 
    public static string UserID = null;
    public static string Vtxtid = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Session["Username"].ToString();
        if (Session["UserID"] != null)
        {
            UserID = Session["UserID"].ToString();
            Vtxtid = Request.QueryString["id"].ToString();
        } 
        int i = 0;
        string vtxtid = Request.QueryString["id"].ToString();
        Vtxtid = Request.QueryString["id"].ToString();
        string strSj = "select wzdjl from Txtinf where txtid='" + vtxtid + " '";
        OleDbDataReader dr = DBA.GetDataReader(strSj);
        if (dr.Read())
        {
          
             i = Convert.ToInt32(dr["wzdjl"].ToString());
            i = i + 1;
        }
        string strsql = "Update Txtinf set wzdjl='" + i + "' where txtid='" + Request["id"].ToString() + "'";
        DBA.ExeSql(strsql);
        if (!IsPostBack)
        {
            GridView5_content();
            repeat();
        }
    }
    protected void GridView5_content()
    {
        string vtxtid = Request.QueryString["id"].ToString();
        string strSj = "select titlername, txt,Username,shsj,wzdjl from [User],Txtinf where [User].UserID=Txtinf.UserID and  txtid='" + vtxtid + " '";
        // string strSj = "select  titlername, txt,Username,shsj,wzdjl from Txtinf left join[User] on [User].UserID=Txtinf.UserID where txtid=' 2  '";

        OleDbDataReader dr = DBA.GetDataReader(strSj);
        if (dr.Read())
        {
            Label2.Text = dr["Username"].ToString();
            Label3.Text = dr["wzdjl"].ToString();
            Label4.Text = Convert.ToDateTime(dr["shsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            title = dr["titlername"].ToString();
            Label6.Text = dr["txt"].ToString();
      
            
        }
    }

   protected void repeat()
   {
       string sql = "select top(12) xqid,zpgw,sjmc,fbsj from Sjxqxx,Sj where Sjxqxx.sjid=Sj.sjid and qb='True' order by  fbsj desc  ";
       DataSet ds = DBA.GetDataSet(sql);
        news.DataSource = ds.Tables["datatable"].DefaultView;
        news.DataBind();
   }


    [WebMethod]
    public static Object getCommentList()
    {
        Maticsoft.Service.Txtplb txtplbService = new Maticsoft.Service.Txtplb();
        Maticsoft.Model.Txtplb model=new Maticsoft.Model.Txtplb();
        //文章ID
        model.txtid = int.Parse(Vtxtid);
        List<Maticsoft.Model.Txtplb> list = txtplbService.searchListByModel(model);
        List<Maticsoft.ToModel.Txtplb> tolist = new List<Maticsoft.ToModel.Txtplb>();
        if (list != null)
        {
            for(int i=0;i<list.Count;i++)
            {
                Maticsoft.Model.Txtplb txtplb = list[i];
                Maticsoft.Service.User userService = new Maticsoft.Service.User();
                //查找评论人
                Maticsoft.Model.User plUsermodel = new Maticsoft.Model.User();
                plUsermodel.UserID = txtplb.plyhid;
                Maticsoft.Model.User plUser = userService.searchUserbymodel(plUsermodel);

                //查找受评论人
                Maticsoft.Model.User toPlUsermodel = new Maticsoft.Model.User();
                toPlUsermodel.UserID = txtplb.toplyhid;
                Maticsoft.Model.User toPlUser = userService.searchUserbymodel(toPlUsermodel);


                //封装返回html的数据
                Maticsoft.ToModel.Txtplb totxtplb = txtplb.ModelToModel(txtplb);
                totxtplb.plyhidstr = plUser.Username;
                totxtplb.toplyhidstr = toPlUser.Username;
                if (UserID != null) { 
                    int usetid=int.Parse(UserID);
                    //封装评论人
                    if (txtplb.plyhid == usetid)
                    {
                        totxtplb.plyhidstr= "我";
                    }
                    //封装受评论人
                    if (txtplb.toplyhid == usetid)
                    {
                        totxtplb.toplyhidstr = "我";
                    }
                }
                tolist.Add(totxtplb);
            }
            return tolist;
        }
        return null;
    }

    [WebMethod]
    public static Object setComment(String sortid, String yhpl)
    {
        Dictionary<string, Object> data = new Dictionary<string, Object>();
        Maticsoft.ToModel.Txtplb toTxtplb = new Maticsoft.ToModel.Txtplb();
        Maticsoft.Service.Txtplb txtplbService = new Maticsoft.Service.Txtplb();
        if (UserID != null)
        {
            
            if (sortid != null)
            {
                int sortId = int.Parse(sortid);
                Maticsoft.Model.Txtplb model = new Maticsoft.Model.Txtplb();
                if (sortId == 0)
                {
                    //添加根评论内容
                    model.plyhid = int.Parse(UserID);
                    model.toplyhid = int.Parse(UserID);
                    model.plsj = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
                    model.yhpl = yhpl;
                    model.sortid = sortId;
                    //文章ID
                    model.txtid = int.Parse(Vtxtid);
                    txtplbService.insertmodel(model);
                }
                else
                {
                    //添加根文件下的内容
                    Maticsoft.Model.Txtplb txtplbmodel = new Maticsoft.Model.Txtplb();
                    txtplbmodel.wzplid = int.Parse(sortid);
                    Maticsoft.Model.Txtplb txtplb = txtplbService.searchTxtplbbymodel(txtplbmodel);
                    if (int.Parse(UserID) == txtplb.plyhid) {
                        data.Add("result", false);
                        data.Add("msg", "不能评论自己的内容");
                        return data;
                    }

                    model.plyhid = int.Parse(UserID);
                    model.toplyhid = txtplb.plyhid;
                    model.plsj = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
                    model.yhpl = yhpl;
                    model.sortid = sortId;
                    //文章ID
                    model.txtid = int.Parse(Vtxtid);
                    txtplbService.insertmodel(model);
                }
                data.Add("result", true);
                data.Add("msg", "评论成功");
            }
            
        }
        else
        {
            data.Add("result", false);
            data.Add("msg", "用户还没有登录，登录后才能评论");
        }
        return data;
    }



}