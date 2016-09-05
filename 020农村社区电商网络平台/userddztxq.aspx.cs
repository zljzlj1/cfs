using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class userddztxq : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Label2.Text = Request.QueryString["id"].ToString();
            Label3.Text = Convert.ToDateTime(Request.QueryString["oid"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
     
            GridView2_content();


        }
    }
    protected void GridView2_content()
    {
        string vid = Request.QueryString["id"].ToString();
        string strSQ = "select spmc,ddxqid,sjqr,fh,yhsfzf,sjmc,num,spjg,tyjg from Sj,Sp,Orderxx,[Order] where Sp.spid=Orderxx.spid and Orderxx.ddid=[Order].ddid and Sj.sjid=Orderxx.sjid  and zt='True' and Orderxx.ddid='" + vid + "' ";

        DataSet ds = DBA.GetDataSet(strSQ);
        GridView2.DataSource = ds.Tables["datatable"].DefaultView;
        GridView2.DataBind();


    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView2.PageIndex = e.NewPageIndex;
        GridView2_content();

    }

       public Decimal sum = 0;
 
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex >= 0)
       
       sum += Convert.ToDecimal(e.Row.Cells[4].Text);
       
    }
}