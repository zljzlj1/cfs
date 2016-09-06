using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class xgspxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.BackColor = System.Drawing.Color.Transparent;

        if (!IsPostBack)
        {
            GridView2_content();

        }
    }
    protected void GridView2_content()
    {
        string strSQ = "select spid,kcsl,spmc,sptp,spjg,spsjsj,spzt,lbmc,xssl,Sp.splbid,Splb.splbid from Sp,Splb where Splb.splbid=Sp.splbid and sjid='" + Session["sjid"].ToString() + "' and spzt='True' order by spsjsj desc ";
     
        DataSet ds = DBA.GetDataSet(strSQ);
        GridView2.DataSource = ds.Tables["datatable"].DefaultView;
        GridView2.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label5.Visible = true;
            Label5.Text = "暂无数据";
            Label3.Visible = false;
            Label4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;
            LinkButton8.Visible = false;
        }
        else
        {
            Label5.Visible = false;
        
            Label3.Visible = true;
            Label4.Visible = true;
            LinkButton5.Visible = true;
            LinkButton6.Visible = true;
            LinkButton7.Visible = true;
            LinkButton8.Visible = true;
        }
        Show1();
    }
    private void Show1()
    {//显示当前页数和总页数
        Label3.Text = "第 " + (GridView2.PageIndex + 1).ToString() + " 页";
        if (GridView2.PageCount == 0)
            Label4.Text = "总共 " + 1 + " 页";
        else
            Label4.Text = "总共 " + GridView2.PageCount.ToString() + " 页";
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string s = TextBox2.Text;
        if (s != "" || s != null)
        {
            GridView2.PageIndex = e.NewPageIndex;
            ss1();
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
          if (((DropDownList)e.Row.FindControl("DropDownList2")) != null)
        {
            DropDownList DropDownList2 = (DropDownList)e.Row.FindControl("DropDownList2");

            //  生成 DropDownList 的值，也可以取得数据库中的数据绑定
            string sql = "select * from Splb";

            DataSet ds = DBA.GetDataSet(sql);
            DropDownList2.DataSource = ds.Tables[0].DefaultView;
            DropDownList2.DataTextField = "lbmc";
            DropDownList2.DataValueField = "splbid";
            DropDownList2.DataBind();
            




            //  选中 DropDownList
            DropDownList2.SelectedValue = ((HiddenField)e.Row.FindControl("HiddenField4")).Value;

        }

    }
   
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView2.EditIndex = (int)e.NewEditIndex;
          string t = TextBox2.Text;

          if (t != "" && t != null)
          {
              string sql = "select spid,kcsl,spmc,sptp,spjg,spsjsj,spzt,lbmc,xssl,Sp.splbid,Splb.splbid from Sp,Splb where Splb.splbid=Sp.splbid and sjid='" + Session["sjid"].ToString() + "'and spzt='True' and spmc like '%" + t + "%' order by spsjsj desc";

              DataSet ds = DBA.GetDataSet(sql);
              GridView2.DataSource = ds.Tables["datatable"].DefaultView;
              GridView2.DataBind();
              TextBox2.Text = "";
          }
          else
        GridView2_content();


    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
      
        string k = GridView2.DataKeys[e.RowIndex].Value.ToString();
 string vspmc = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[1].Controls[0])).Text.Trim();
 string vspjg = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[2].Controls[0])).Text.Trim();
    string vsplbid = ((DropDownList)GridView2.Rows[e.RowIndex].FindControl("DropDownList2")).SelectedValue;
        string vkcsl = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[4].Controls[0])).Text.Trim();
         decimal b = Convert.ToDecimal(vspjg);
       decimal a = Convert.ToDecimal(vkcsl);
        string sql = " update Sp set spmc='" + vspmc + "',spjg='" + b + "',splbid ='" + vsplbid + "', kcsl ='" + a + "' where spid='" + k + "' ";
        DataSet ds = DBA.GetDataSet(sql);
         
       
        GridView2.EditIndex = -1;
        GridView2_content();



       
      

    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        GridView2_content();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ss1();
    }
    protected void link1(object sender, EventArgs e)
    {
        string arg = ((LinkButton)sender).CommandArgument.ToString();
        switch (arg)
        {//根据不同的arguement值,进行相应的操作：
            case "n1":
                if (GridView2.PageIndex < GridView2.PageCount - 1)//判断是否为最后一条记录
                {
                    GridView2.PageIndex = GridView2.PageIndex + 1;//读取到下一页
                }
                break;//返回
            case "p1":
                if (GridView2.PageIndex > 0)//判断是否为第一页
                {
                    GridView2.PageIndex = GridView2.PageIndex - 1;//读取到前一页的内容
                }
                break;
            case "l1":
                if ((GridView2.PageCount - 1) > 0)
                    GridView2.PageIndex = (GridView2.PageCount - 1);//读取最后一页
                break;
            default://不满足上述情况，则读取首页的内容
                GridView2.PageIndex = 0;
                break;
        }

        if (TextBox2.Text == "" || TextBox2.Text == null)
            GridView2_content();
        else
            ss1();
    }
    protected void ss1()
    {

        string t = TextBox2.Text;

        if (t!=""&&t!= null)
        {
            string sql = "select spid,kcsl,spmc,sptp,spjg,spsjsj,spzt,lbmc,xssl,Sp.splbid,Splb.splbid from Sp,Splb where Splb.splbid=Sp.splbid and sjid='" + Session["sjid"].ToString() + "'and spzt='True' and spmc like '%" + t + "%' order by spsjsj desc";
         
            DataSet ds = DBA.GetDataSet(sql);
            GridView2.DataSource = ds.Tables["datatable"].DefaultView;
            GridView2.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此商品信息！');", true);
                GridView2_content();

            }
            else
                Show1();
        }
        else if (t == "" || t == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView2_content();
        }


    }
}