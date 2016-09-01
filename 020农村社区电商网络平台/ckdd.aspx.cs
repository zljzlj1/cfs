using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ckdd : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            GridView2_content();
            GridView3_content();

        }
    }
    protected void GridView2_content()
    {
        string vUserID = Session["UserID"].ToString();

        string strSQ = "select receman,Orderxx.ddid,gmrq,spmc,ddxqid,sjqr,fh,sfzf,ddhd,recephone,receadress from Sp,Orderxx,[Order] where Sp.spid=Orderxx.spid and Orderxx.ddid=[Order].ddid and [Order].UserID='" + vUserID + "' and zt='False' order by gmrq desc ";
       DataSet ds = DBA.GetDataSet(strSQ);
        GridView2.DataSource = ds.Tables["datatable"].DefaultView;
        GridView2.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label5.Visible = true;
            Label5.Text = "暂无数据";

        }

    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
     
            GridView2.PageIndex = e.NewPageIndex;
            GridView2_content();

       }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView3.PageIndex = e.NewPageIndex;
        GridView3_content();

    }
    protected void GridView3_content()
    {
        string vUserID = Session["UserID"].ToString();
        string strSQ = "select Orderxx.ddid,gmrq,spmc,num,spjg,ddxqid,sjqr,fh,yhsfzf,ddhd from Sj,Sp ,Orderxx,[Order] where  Sp.spid=Orderxx.spid and Orderxx.ddid=[Order].ddid and Orderxx.sjid=Sj.sjid and [Order].UserID='" + vUserID + "' and zt='True' order by gmrq desc ";
        DataSet ds = DBA.GetDataSet(strSQ);
        GridView3.DataSource = ds.Tables["datatable"].DefaultView;
        GridView3.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label2.Visible = true;
            Label2.Text = "暂无数据";

        }

    }
  
}