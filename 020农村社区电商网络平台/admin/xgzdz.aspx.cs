using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_xgzdz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox4.BackColor = System.Drawing.Color.Transparent;

        if (!IsPostBack)
        {
         
            GridView4_content();
   

        }
    }
  
    protected void GridView4_content()
    {
        string strSa = "select xm,zid,zm from Adz,Adx where Adz.xid=Adx.xid";
        DataSet ds = DBA.GetDataSet(strSa);
        GridView4.DataSource = ds.Tables["datatable"].DefaultView;
        GridView4.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Visible = true;
            Label1.Text = "暂无数据";
            Label7.Visible = false;
            Label8.Visible = false;
            LinkButton16.Visible = false;
            LinkButton15.Visible = false;
            LinkButton14.Visible = false;
            LinkButton13.Visible = false;
        }
        else
        {
            Label1.Visible = false;
        
            Label7.Visible = true;
            Label8.Visible = true;
            LinkButton16.Visible = true; 
            LinkButton15.Visible = true;
            LinkButton14.Visible = true;
            LinkButton13.Visible = true;
        }
        
        Show3();
    }
   
    private void Show3()
    {//显示当前页数和总页数
        Label7.Text = "第 " + (GridView4.PageIndex + 1).ToString() + " 页";
        if (GridView4.PageCount == 0)
            Label8.Text = "总共 " + 1 + " 页";
        else
            Label8.Text = "总共 " + GridView4.PageCount.ToString() + " 页";
    }
  
    protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string z = TextBox4.Text;

        if (z != "" )
        {
            GridView4.PageIndex = e.NewPageIndex;
            ss3();
        }
        else
        {
            GridView4.PageIndex = e.NewPageIndex;
            GridView4_content();
        }

    }
  protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vzid = GridView4.DataKeys[e.RowIndex].Value.ToString();
        string str = "delete from Adz where zid='" + vzid + "'";//删除记录
      int i=DBA.ExeSqlRows(str);
       if (i == 0)
        {
           
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
        }

        if ((GridView4.Rows.Count) % (GridView4.PageSize) == 1)//判断最后一页是否只有一条记录
        {
            if (GridView4.PageIndex>1)
            GridView4.PageIndex = GridView4.PageIndex - 1;
        }
        TextBox4.Text = "";
        if (TextBox4.Text == "" )
            GridView4_content();
     


    }

  protected void ss3()
  {

      string t = TextBox4.Text;

      if (t != "")
      {
          string sql = "select zm,zid,xm from Adz,Adx  where Adx.xid=Adz.zid and Adz.zm  like '%" + t + "%'";
          DataSet ds = DBA.GetDataSet(sql);
          GridView4.DataSource = ds.Tables["datatable"].DefaultView;
          GridView4.DataBind();

          if (ds.Tables[0].Rows.Count == 0)
          {
              ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此镇信息！');", true);
              GridView4_content();
        
          }
          else
              Show3();
      }
      else if (t == "" )
      {
          ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
          GridView4_content();
      }


  }

  protected void GridView4_RowEditing(object sender, GridViewEditEventArgs e)
  {
      GridView4.EditIndex = (int)e.NewEditIndex;
        string t = TextBox4.Text;

        if (t != "" )
        {
            string sql = "select zm,zid,xm from Adz,Adx  where Adx.xid=Adz.zid and Adz.zm  like '%" + t + "%'";
            DataSet ds = DBA.GetDataSet(sql);
            GridView4.DataSource = ds.Tables["datatable"].DefaultView;
            GridView4.DataBind();
            TextBox4.Text = "";
        }
        else
      GridView4_content();
  }
  protected void GridView4_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
  {
      GridView4.EditIndex = -1;
      GridView4_content();

  }
  protected void GridView4_RowUpdating(object sender, GridViewUpdateEventArgs e)
  {
      string k = GridView4.DataKeys[e.RowIndex].Value.ToString();
      string vzm = ((TextBox)(GridView4.Rows[e.RowIndex].Cells[2].Controls[0])).Text.Trim();
      string sql = " update Adz set zm='" + vzm + "' where zid='" + k + "' ";
      DataSet ds = DBA.GetDataSet(sql);
      GridView4.EditIndex = -1;
      GridView4_content();

  }
  protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
  {
      if (e.Row.RowType == DataControlRowType.DataRow)
      {


          e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
          //当鼠标移开时还原背景色
          e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
          if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
          {
              ((LinkButton)e.Row.Cells[4].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[2].Text + "\"镇名信息吗?')");
          }

      }

  }
  protected void link3(object sender, EventArgs e)
  {
      string a = ((LinkButton)sender).CommandArgument.ToString();
      switch (a)
      {//根据不同的arguement值,进行相应的操作：
          case "n3":
              if (GridView4.PageIndex < GridView4.PageCount - 1)//判断是否为最后一条记录
              {
                  GridView4.PageIndex = GridView4.PageIndex + 1;//读取到下一页
              }
              break;//返回
          case "p3":
              if (GridView4.PageIndex > 0)//判断是否为第一页
              {
                  GridView4.PageIndex = GridView4.PageIndex - 1;//读取到前一页的内容
              }
              break;
          case "l3":
              if ((GridView4.PageCount - 1) > 0)
                  GridView4.PageIndex = (GridView4.PageCount - 1);//读取最后一页
              break;
          default://不满足上述情况，则读取首页的内容
              GridView4.PageIndex = 0;
              break;
      }

      if (TextBox4.Text == "" )
          GridView4_content();
      else
          ss3();
  }
  protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
  {
      ss3();
  }
}