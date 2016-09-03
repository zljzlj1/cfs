using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_xgxdz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
      
        TextBox3.BackColor = System.Drawing.Color.Transparent;

        if (!IsPostBack)
        {
        
            GridView3_content();
      

        }
    }
  
    protected void GridView3_content()
    {
        string strS = "select sm,xid,xm from Ads,Adx where Ads.sid=Adx.sid";
        DataSet ds = DBA.GetDataSet(strS);
        GridView3.DataSource = ds.Tables["datatable"].DefaultView;
        GridView3.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label7.Visible = true;
            Label7.Text = "暂无数据";
            Label5.Visible = false;
            Label6.Visible = false;
            LinkButton9.Visible = false;
            LinkButton10.Visible = false;
            LinkButton11.Visible = false;
            LinkButton12.Visible = false;
        }
        else
        {
            Label7.Visible =  false;
         
            Label5.Visible =true;
            Label6.Visible = true;
            LinkButton9.Visible = true;
            LinkButton10.Visible = true;
            LinkButton11.Visible = true;
            LinkButton12.Visible = true;
        }
        Show2();
    }
  
    private void Show2()
    {//显示当前页数和总页数
        Label5.Text = "第 " + (GridView3.PageIndex + 1).ToString() + " 页";
        if (GridView3.PageCount == 0)
            Label6.Text = "总共 " + 1 + " 页";
        else
            Label6.Text = "总共 " + GridView3.PageCount.ToString() + " 页";

    }
    
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string x = TextBox3.Text;

        if (x != "" || x != null)
        {
            GridView3.PageIndex = e.NewPageIndex;
            ss2();
        }
        else
        {
            GridView3.PageIndex = e.NewPageIndex;
            GridView3_content();
        }


    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vxid = GridView3.DataKeys[e.RowIndex].Value.ToString();
        string strS = "delete from Adx where xid='" + vxid + "'";//删除记录
        int i = DBA.ExeSqlRows(strS);
        if (i == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
        }
 
        if ((GridView3.Rows.Count) % (GridView3.PageSize) == 1)//判断最后一页是否只有一条记录
        {
            if (GridView3.PageIndex > 1)
            {
                GridView3.PageIndex = GridView3.PageIndex - 1;

            }
        }
        TextBox3.Text = "";
        if (TextBox3.Text == "" || TextBox3.Text == null)
            GridView3_content();
        
    }
   
    protected void ss2()
    {

        string t = TextBox3.Text;

        if (t != "" && t != null)
        {
            string sql = "select xm,xid,sm from Ads,Adx  where Adx.sid=Ads.sid and Adx.xm  like '%" + t + "%'";
            DataSet ds = DBA.GetDataSet(sql);
            GridView3.DataSource = ds.Tables["datatable"].DefaultView;
            GridView3.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此县信息！');", true);
                GridView3_content();

            }
            else
                Show2();
        }
        else if (t == "" || t == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView3_content();
        }


    }
    protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView3.EditIndex = (int)e.NewEditIndex;
          string t = TextBox3.Text;

          if (t != "" && t != null)
          {
              string sql = "select xm,xid,sm from Ads,Adx  where Adx.sid=Ads.sid and Adx.xm  like '%" + t + "%'";
              DataSet ds = DBA.GetDataSet(sql);
              GridView3.DataSource = ds.Tables["datatable"].DefaultView;
              GridView3.DataBind();
              TextBox3.Text="";
          }
          else
        GridView3_content();
    }
    protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView3.EditIndex = -1;
        GridView3_content();
    }
    protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string k = GridView3.DataKeys[e.RowIndex].Value.ToString();
        string vxm = ((TextBox)(GridView3.Rows[e.RowIndex].Cells[2].Controls[0])).Text.Trim();
        string sql = " update Adx set xm='" + vxm + "' where xid='" + k + "' ";
        DataSet ds = DBA.GetDataSet(sql);
        GridView3.EditIndex = -1;
        GridView3_content();

    }
 
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
            //当鼠标移开时还原背景色
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[4].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[2].Text + "\"县名信息吗?')");
            }

        }

    }
    protected void link2(object sender, EventArgs e)
    {
        string argq = ((LinkButton)sender).CommandArgument.ToString();
        switch (argq)
        {//根据不同的arguement值,进行相应的操作：
            case "n2":
                if (GridView3.PageIndex < GridView3.PageCount - 1)//判断是否为最后一条记录
                {
                    GridView3.PageIndex = GridView3.PageIndex + 1;//读取到下一页
                }
                break;//返回
            case "p2":
                if (GridView3.PageIndex > 0)//判断是否为第一页
                {
                    GridView3.PageIndex = GridView3.PageIndex - 1;//读取到前一页的内容
                }
                break;
            case "l2":
                if ((GridView3.PageCount - 1) > 0)
                    GridView3.PageIndex = (GridView3.PageCount - 1);//读取最后一页
                break;
            default://不满足上述情况，则读取首页的内容
                GridView3.PageIndex = 0;
                break;
        }

        if (TextBox3.Text == "" || TextBox3.Text == null)
            GridView3_content();
        else
            ss2();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        ss2();
    }
  
}