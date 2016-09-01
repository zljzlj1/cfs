using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_sjxx : System.Web.UI.Page
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
    {
        string strSj = "select sjid,sjmc,rzsj,lxdh,smm,jtdz,lxrxm,sjtp from Sj";
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
            Label1.Visible =false;
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
    protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vsjid = GridView5.DataKeys[e.RowIndex].Value.ToString();
        string st = "delete from Sj where sjid='" + vsjid + "'";//删除记录
        int i = DBA.ExeSqlRows(st);
        if (i == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
        }
        if ((GridView5.Rows.Count) % (GridView5.PageSize) == 1)//判断最后一页是否只有一条记录
        {
            if (GridView5.PageIndex > 1)
            {
                GridView5.PageIndex = GridView5.PageIndex - 1;

            }

        }

        if (TextBox5.Text == "" || TextBox5.Text == null)
            GridView5_content();
        else
            ss4();
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string c = TextBox5.Text;
        if (c != "" || c != null)
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

        if (t != "" && t != null)
        {
            string sql = "select sjid,sjmc,rzsj,lxdh,smm,jtdz,lxrxm,sjtp   from Sj where sjmc like '%" + t + "%'";
            DataSet ds = DBA.GetDataSet(sql);
            GridView5.DataSource = ds.Tables["datatable"].DefaultView;
            GridView5.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此商家信息！');", true);
                GridView5_content();

            }
            else
                Show4();
        }
        else if (t == "" || t == null)
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
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[7].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"商家吗?')");
            }

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

        if (TextBox5.Text == "" || TextBox5.Text == null)
            GridView5_content();
        else
            ss4();
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        ss4();
    }
}