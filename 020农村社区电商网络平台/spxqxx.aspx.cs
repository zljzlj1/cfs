using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class spxqxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public decimal kc=0;
    public int sjid=0;
    public int sjdjl=0;
    public decimal vspjg=0;
    public decimal ktfy = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
       

        string vspid = Request.QueryString["id"].ToString();
        string vspdjl = Request.QueryString["spdjl"].ToString();
        string vsjdjl = Request.QueryString["sjdjl"].ToString();
        string vsjid = Request.QueryString["sjid"].ToString();
        int a = 0; int b = 0;
        a = Convert.ToInt32(vspdjl) + 1; b = Convert.ToInt32(vsjdjl) + 1;
        string sql = "update Sj set sjdjl='"+b+"' where sjid='"+vsjid+"'";
        DBA.ExeSql(sql);
        string sq = "update Sp set spdjl='" + a + "' where spid='" + vspid + "'";
        DBA.ExeSql(sq);
        string sqll = "select sjid,sjdjl,sjmc,rzsj,lxdh,ktfy,sjtp from Sj where sjid='" + vsjid + "' ";
        OleDbDataReader dr = DBA.GetDataReader(sqll);
        if (dr.Read())
        { 
        Label1.Text=dr["sjmc"].ToString();
        Label2.Text = Convert.ToDateTime(dr["rzsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
        Label3.Text = dr["lxdh"].ToString();
        Image1.ImageUrl = dr["sjtp"].ToString();
        ktfy = Convert.ToDecimal(dr["ktfy"].ToString());
        Label5.Text = dr["ktfy"].ToString();
        string xsjid = dr["sjid"].ToString();
        sjid = Convert.ToInt32(xsjid);
        string djl = dr["sjdjl"].ToString();
        sjdjl = Convert.ToInt32(djl);
        }
        string sll = "select spmc,kcsl,spxx,xsdw,lbmc,sptp,spjg,xssl from Sp,Splb where Sp.splbid=Splb.splbid and spid='" + vspid + "' ";
        OleDbDataReader drs = DBA.GetDataReader(sll);

        if (drs.Read())
        {
           lblPName.Text = drs["spmc"].ToString();
          string t = drs["spjg"].ToString();

          if (t == "0.00") lblPFPrice.Text = "面议";
          else
              lblPFPrice.Text=t;
           Label7.Text = drs["lbmc"].ToString();
            Image2.ImageUrl = drs["sptp"].ToString();
            Label6.Text = drs["xsdw"].ToString();
            Label4.Text = drs["spxx"].ToString();
            Label9.Text = drs["xssl"].ToString();
            Label10.Text = drs["xsdw"].ToString();
            string vkcsl = drs["kcsl"].ToString();
           kc = Convert.ToDecimal(vkcsl);
           string jg = drs["spjg"].ToString();
           vspjg = Convert.ToDecimal(jg);
        }
        if (!IsPostBack)
        {
            Repeater();
        }
       // Repeater();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UserID"] != null)
        {
            if( TextBox3.Text!= "")
            { string vspid = Request.QueryString["id"].ToString();
            string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
            string strSQ = "insert into Spplb(UserID,sppjxx,sppltime,spid)values('" + Session["UserID"] + "','" + TextBox3.Text + "','" + d + "','" + vspid + "')";
            DBA.ExeSql(strSQ);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('发表成功!'); </script>");
            TextBox3.Text = "";
            Repeater();
            }
            else
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('输入评论内容!'); </script>");
          
  }
        else
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('请登录之后在评论'); location='index.aspx';</script>");
    
    }
    public void Repeater()
    {
          string vspid = Request.QueryString["id"].ToString();

          string sql = "select Username,sppjxx,sppltime from Spplb,[User],Sp where Spplb.UserId=[User].UserID and Sp.spid=Spplb.spid and Sp.spid='" + vspid + "' order by sppltime desc ";
       DataSet ds = DBA.GetDataSet(sql);
        Repeater1.DataSource = ds.Tables["datatable"].DefaultView;
        Repeater1.DataBind();
    }


    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        decimal d = 0;
        if (Session["UserID"] != null)
        {
            string vspid = Request.QueryString["id"].ToString();
           string vsjid = Request.QueryString["sjid"].ToString();
            string num=TextBox2.Text;
           decimal sl=Convert.ToDecimal(num);
            if(sl>0&&sl<=kc)
            {
                if(DropDownList1.SelectedItem.Value=="False")
                d = vspjg * sl+ktfy;
                else
             d = vspjg * sl;
           string strSQ = "insert into Gwc(UserID,num,jg,spid,sjid,zt)values('" + Session["UserID"] + "','" + TextBox2.Text + "','"+d+"','" + vspid + "','"+vsjid+"','"+DropDownList1.SelectedItem.Value+"')";
            DBA.ExeSql(strSQ);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('成功加入购物车!');location='gwc.aspx'; </script>");

         
   


            }
            else 
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('库存数量不足!'); </script>");
    
         }
        else
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('请登录之后在购买'); location='index.aspx';</script>");
   
    }

   
}