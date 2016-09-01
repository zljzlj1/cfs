using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.WebControls;

public partial class admin_sjorder : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            GridView2_content();
           

        }
    }
    protected void GridView2_content()
    {

        string strSQ = "select sjmc,tyjg,Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid  and zt='False'  and ddhd='" + DropDownList4.SelectedItem.Value + "' order by gmrq desc ";
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
        string s = TextBox3.Text;
        if (s != "" || s != null)
        {
            GridView2.PageIndex = e.NewPageIndex;
            ss();
        }
        else
        {
            GridView2.PageIndex = e.NewPageIndex;
            GridView2_content();

        }





    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
            //当鼠标移开时还原背景色
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");


        }
      

    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2_content();
    }
  
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ss();
    }
    protected void ss()
    {

        string t = TextBox3.Text;

        if (t != "" && t != null)
        {

            string sql = " select sjmc,tyjg,Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid  and zt='False'  and ddhd='" + DropDownList4.SelectedItem.Value + "'  and Orderxx.ddid like '%" + t + "%'  order by gmrq desc ";
           
            DataSet ds = DBA.GetDataSet(sql);
            GridView2.DataSource = ds.Tables["datatable"].DefaultView;
            GridView2.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此订单信息！');", true);
                GridView2_content();

            }

        }
        else if (t == "" || t == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView2_content();
        }




    }
}