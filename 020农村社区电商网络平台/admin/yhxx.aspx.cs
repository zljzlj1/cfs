﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_yhxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox5.BackColor = System.Drawing.Color.Transparent;

        if (!IsPostBack)
        {

            GridView5_content();

        }
    }

    protected void GridView5_content()
    {  string strSj = "select UserID,Username,yb,lxdh,mm,Jtdz,truename from [User]";
        DataSet ds = DBA.GetDataSet(strSj);
        GridView5.DataSource = ds.Tables["datatable"].DefaultView;
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Visible = true;
            Label1.Text = "暂无数据";
            Label9.Visible = false;
            Label10.Visible = false;
            LinkButton17.Visible = false;
            LinkButton18.Visible = false;
            LinkButton19.Visible = false;
            LinkButton20.Visible = false;
        }
        else
        {
            Label1.Visible = false;

            Label9.Visible =  true;
            Label10.Visible = true;
            LinkButton17.Visible = true;
            LinkButton18.Visible = true;
            LinkButton19.Visible = true;
            LinkButton20.Visible = true;
        }

        GridView5.DataBind(); Show4();

    }

    private void Show4()
    {//显示当前页数和总页数
        Label9.Text = "第 " + (GridView5.PageIndex + 1).ToString() + " 页";
        if (GridView5.PageCount == 0)
            Label10.Text = "总共 " + 1 + " 页";
        else
            Label10.Text = "总共 " + GridView5.PageCount.ToString() + " 页";

    }

    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string c = TextBox5.Text;
        if (c != "" )
        {
            GridView5.PageIndex = e.NewPageIndex;
            ss4();
        }
        else
        {
            GridView5.PageIndex = e.NewPageIndex;
            GridView5_content();
        }

    }
    protected void ss4()
    {

        string t = TextBox5.Text;

        if (t != "" )
        {
         string sql = "select UserID,Username,yb,lxdh,mm,Jtdz,truename  from [User] where  Username like '%" + t + "%'";
            DataSet ds = DBA.GetDataSet(sql);
            GridView5.DataSource = ds.Tables["datatable"].DefaultView;
            GridView5.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此用户信息！');", true);
                TextBox5.Text = "";
                GridView5_content();

            }
            else
                Show4();
        }
        else if (t == "" )
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView5_content();
        }


    }




    protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
            //当鼠标移开时还原背景色
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
           

        }

    }

    protected void link4(object sender, EventArgs e)
    {
        string ar = ((LinkButton)sender).CommandArgument.ToString();
        switch (ar)
        {//根据不同的arguement值,进行相应的操作：
            case "n4":
                if (GridView5.PageIndex < GridView5.PageCount - 1)//判断是否为最后一条记录
                {
                    GridView5.PageIndex = GridView5.PageIndex + 1;//读取到下一页
                }
                break;//返回
            case "p4":
                if (GridView5.PageIndex > 0)//判断是否为第一页
                {
                    GridView5.PageIndex = GridView5.PageIndex - 1;//读取到前一页的内容
                }
                break;
            case "l4":
                if ((GridView5.PageCount - 1) > 0)
                    GridView5.PageIndex = (GridView5.PageCount - 1);//读取最后一页
                break;
            default://不满足上述情况，则读取首页的内容
                GridView5.PageIndex = 0;
                break;
        }

        if (TextBox5.Text == "" )
            GridView5_content();
        else
            ss4();
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        ss4();
    }
}