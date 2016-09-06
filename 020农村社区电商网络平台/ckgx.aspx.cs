using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class ckgx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public static int a=0;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {  string SQLStr = "select  scid from Sj where sjmc='" + Session["sjmc"] + "' ";
            OleDbDataReader dr = DBA.GetDataReader(SQLStr);
            if (dr.Read())
                a = Convert.ToInt32(dr["scid"].ToString());
            dl();
          
     DataList1_content(); //可实现分页的数据源绑定DataList1的函数
        }
     
    }
   private void dl()
    {

        string SQL = "select * from Ncplb";//查询语句
        DataSet ds = DBA.GetDataSet(SQL);

        DropDownList1.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList1.DataTextField = "ncpname";
        DropDownList1.DataValueField = "ncplbid";
        DropDownList1.DataBind();


    }
    public void PagerButtonClick(object sender, EventArgs e)
    {
       // and  Ncplb.ncplbid='" + DropDownList1.SelectedItem.Value + "' 

        string SQLStr = "select  ncpid,rcppic,rcpname,tgsl,xqdw,fbrq,price,Username,ncpname from Ncpinfor,[User],Ncplb  where Ncpinfor.UserID=[User].UserID and Ncplb.ncplbid=Ncpinfor.ncplbid and [User].cid='21' and  Ncpinfor.ncplbid='" + DropDownList1.SelectedItem.Value + "'  order by fbrq desc ";
        DataSet ds = DBA.GetDataSet(SQLStr);

        int rowSum = ds.Tables[0].Rows.Count;

        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;
        objPds.AllowPaging = true;
        objPds.PageSize = 8;

        int maxPage;//总共有多少页
        if (rowSum == 0)
        {
            Panel1.Visible = false; Label4.Visible = true; Label4.Text = "暂无数据";
            return;//如果没有数据，退出过程
        }
        else
        { Panel1.Visible = true; Label4.Visible = false; }

        if (rowSum % objPds.PageSize > 0)//计算出浏览数据的总页数
        {
            maxPage = rowSum / objPds.PageSize + 1;//有余数要加1
        }
        else
        {
            maxPage = rowSum / objPds.PageSize;//正好除尽
        }
        objPds.CurrentPageIndex = Convert.ToInt32(Session["CurPage"]) - 1;//*********************
        string arg = ((LinkButton)sender).CommandArgument.ToString();
        switch (arg)
        {
            case "next":
                if (objPds.CurrentPageIndex < (maxPage - 1))//未到末页
                {
                    objPds.CurrentPageIndex += 1;
                }
                break;
            case "prev":
                if (objPds.CurrentPageIndex > 0)
                {
                    objPds.CurrentPageIndex -= 1;
                }
                break;
            case "last":
                objPds.CurrentPageIndex = (maxPage - 1);
                break;
            default:
                objPds.CurrentPageIndex = 0;// System.Convert.ToInt32(arg)
                break;
        }
        int CurPage = objPds.CurrentPageIndex + 1;//*********************

        lblCurrentPage.Text = "第 " + CurPage.ToString() + " 页 (共" + maxPage.ToString() + "页)";
        Session["CurPage"] = CurPage;//*********************
        DataList1.DataSource = objPds;
        DataList1.DataBind();
    }


    private void DataList1_content()
    {
      string SQLStr = "select  ncpid,rcppic,rcpname,tgsl,xqdw,fbrq,price,Username,ncpname from Ncpinfor,[User],Ncplb  where Ncpinfor.UserID=[User].UserID and Ncplb.ncplbid=Ncpinfor.ncplbid and [User].cid='21' and  Ncpinfor.ncplbid='" + DropDownList1.SelectedItem.Value + "'   order by fbrq desc ";
        //string SQLStr = "select  ncpid,rcppic,rcpname,tgsl,xqdw,fbrq,price,Username,ncpname from Ncpinfor,[User],Ncplb  where Ncpinfor.UserID=[User].UserID and Ncplb.ncplbid=Ncpinfor.ncplbid and [User].cid='" + a+ "'   order by fbrq desc ";
       // string SQLStr = "select  ncpid,rcppic,rcpname,tgsl,xqdw,fbrq,price,Username,ncpname from Ncpinfor,[User],Ncplb  where Ncpinfor.UserID=[User].UserID and Ncplb.ncplbid=Ncpinfor.ncplbid and [User].cid='21'   order by fbrq desc ";
     
        DataSet ds = DBA.GetDataSet(SQLStr);

        int rowSum = ds.Tables[0].Rows.Count;
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;
        objPds.AllowPaging = true;
        objPds.PageSize =8;
        int maxPage;//总共有多少页
        if (rowSum == 0)
        {
            Panel1.Visible = false;  Label4.Visible = true; Label4.Text = "暂无数据"; return;
        }//如果没有数据，退出过程
        else
        { Panel1.Visible = true; Label4.Visible = false; }
        if (rowSum % objPds.PageSize > 0)//计算出浏览数据的总页数
        {
            maxPage = rowSum / objPds.PageSize + 1;//有余数要加1
        }
        else
        {
            maxPage = rowSum / objPds.PageSize;//正好除尽
        }
        int CurPage;//计算当前页
        CurPage = 1;
        objPds.CurrentPageIndex = CurPage - 1;
        Session["CurPage"] = CurPage;//*****************************************************
        lblCurrentPage.Text = "第 " + CurPage.ToString() + " 页 (共" + maxPage.ToString() + "页)";
        DataList1.DataSource = objPds;
        DataList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int vgoto = 1;
        if (TextBox1.Text != "")
        {
            vgoto = Convert.ToInt32(TextBox1.Text.ToString().Trim());
            Session["vgoto"] = vgoto;
            TextBox1.Text = Session["vgoto"].ToString().Trim();
            string SQLStr = "select  ncpid,rcppic,rcpname,tgsl,xqdw,fbrq,price,Username,ncpname from Ncpinfor,[User],Ncplb  where Ncpinfor.UserID=[User].UserID and Ncplb.ncplbid=Ncpinfor.ncplbid and [User].cid='21' and  Ncpinfor.ncplbid='" + DropDownList1.SelectedItem.Value + "'   order by fbrq desc ";
            DataSet ds = DBA.GetDataSet(SQLStr);
            int rowSum = ds.Tables[0].Rows.Count;
            PagedDataSource objPds = new PagedDataSource();
            objPds.DataSource = ds.Tables[0].DefaultView;
            objPds.AllowPaging = true;
            objPds.PageSize = 8;
            int maxPage;//总共有多少页

            if (rowSum == 0) { Panel1.Visible = false; Label4.Visible = true; Label4.Text = "暂无数据"; return; }
            else
            { Panel1.Visible = true; Label4.Visible = false; }
            if (rowSum % objPds.PageSize > 0)//计算出浏览数据的总页数
            {
                maxPage = rowSum / objPds.PageSize + 1;//有余数要加1
            }
            else
            {
                maxPage = rowSum / objPds.PageSize;//正好除尽
            }
            int CurPage;//计算当前页
            CurPage = vgoto;
            Session["CurPage"] = CurPage;//*****************************************************
            objPds.CurrentPageIndex = CurPage - 1;
            if (maxPage < vgoto)
{ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请重新输入！');", true); }
  else{ 
lblCurrentPage.Text = "第 " + CurPage.ToString() + " 页 (共" +maxPage.ToString() + "页)";
                DataList1.DataSource = objPds;
                DataList1.DataBind(); }
        }

 else
      ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入数据！');", true);
        }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1_content(); 
    }
}
  
   
