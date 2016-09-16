using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_userorder : System.Web.UI.Page
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

        string strSQ = "select distinct[Order].ddid,totalprice,gmrq,sfzf,Username from Orderxx,[Order],[User] where  Orderxx.ddid=[Order].ddid  and [Order].UserID=[User].UserID  and zt='False'  and sfzf='" + DropDownList1.SelectedItem.Value + "'  order by gmrq desc ";
       DataSet ds = DBA.GetDataSet(strSQ);
        GridView2.DataSource = ds.Tables["datatable"].DefaultView;
        GridView2.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label5.Visible = true;
            Label5.Text = "暂无数据";

        }
        else

            Label5.Visible = false;
          

    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string s = TextBox3.Text;
        if (s != "")
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








   

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2_content();
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ss();
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView2.EditIndex = (int)e.NewEditIndex;
          string t = TextBox3.Text;

          if (t != "" )
          {
              string sql = "select distinct[Order].ddid,gmrq,sjqr,fh,sfzf,Username,totalprice from Orderxx,[Order],[User] where  Orderxx.ddid=[Order].ddid and [Order].UserID=[User].UserID  and zt='False' and sfzf='" + DropDownList1.SelectedItem.Value + "'   and [Order].ddid like '%" + t + "%' order by gmrq desc  ";
              DataSet ds = DBA.GetDataSet(sql);
              GridView2.DataSource = ds.Tables["datatable"].DefaultView;
              GridView2.DataBind();
              TextBox3.Text="";
          }
          else
  GridView2_content();


    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {//
        string k = GridView2.DataKeys[e.RowIndex].Value.ToString();
        CheckBox ck = (CheckBox)GridView2.Rows[e.RowIndex].Cells[4].Controls[0];
        string str;
        if (ck.Checked == true)
        {
               str = "True";
        }
        else
        {
         str = "False";
        }


        string sql = " update [Order] set sfzf='" + str + "' where ddid='" + k + "' ";
        DataSet ds = DBA.GetDataSet(sql);

        GridView2.EditIndex = -1;
        GridView2_content();






    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        GridView2_content();
    }
    protected void ss()
    {

        string t = TextBox3.Text;

        if (t != "" )
        {
            string sql = "select distinct[Order].ddid,gmrq,sjqr,fh,sfzf,Username,totalprice from Orderxx,[Order],[User] where  Orderxx.ddid=[Order].ddid  and [Order].UserID=[User].UserID  and zt='False'  and sfzf='" + DropDownList1.SelectedItem.Value + "'   and [Order].ddid like '%" + t + "%' order by gmrq desc  ";
          DataSet ds = DBA.GetDataSet(sql);
            GridView2.DataSource = ds.Tables["datatable"].DefaultView;
            GridView2.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此订单信息！');", true);
                GridView2_content();

            }

        }
        else if (t == "" )
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView2_content();
        }




    }

}