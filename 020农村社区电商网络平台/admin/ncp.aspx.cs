using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_ncp : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.BackColor = System.Drawing.Color.Transparent;
        TextBox1.BackColor = System.Drawing.Color.Transparent;
        if (!IsPostBack)
        {
            GridView2_content();

        }
       
    }
    protected void GridView2_content()
    {
        string strSQ = "select  * from Ncplb";
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
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[3].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"商品类别信息吗?')");
            }

        }

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vncplbid = GridView2.DataKeys[e.RowIndex].Value.ToString();
        string strSQ = "delete from Ncplb where ncplbid='" + vncplbid + "'";//删除记录
        int i = DBA.ExeSqlRows(strSQ);

        if (i == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);

        }
        if ((GridView2.Rows.Count) % (GridView2.PageSize) == 1)//判断最后一页是否只有一条记录
        {

            if (GridView2.PageIndex > 1)
            {
                GridView2.PageIndex = GridView2.PageIndex - 1;

            }
           
        } if (TextBox2.Text == "" || TextBox2.Text == null)
                GridView2_content();
            else
                ss1();
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView2.EditIndex = (int)e.NewEditIndex;
        if (TextBox2.Text != "" || TextBox2.Text != null)
        {
            string t = TextBox2.Text;

            string sql = "select * from Ncplb where ncpname like '%" + t + "%'";
            DataSet ds = DBA.GetDataSet(sql);
            GridView2.DataSource = ds.Tables["datatable"].DefaultView; GridView2.DataBind();
            TextBox2.Text = "";
        }
        else

            GridView2_content();


    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string k = GridView2.DataKeys[e.RowIndex].Value.ToString();
        string vncpname = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[1].Controls[0])).Text.Trim();

        string sql = " update Ncplb set ncpname='" + vncpname + "' where ncplbid='" + k + "' ";
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

        if (t != "" && t != null)
        {
            string sql = "select * from Ncplb  where ncpname like '%" + t + "%'";
            DataSet ds = DBA.GetDataSet(sql);
            GridView2.DataSource = ds.Tables["datatable"].DefaultView;
            GridView2.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此农产品类别信息！');", true);
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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text != "")
        {
            string sqll = "select ncpname from Ncplb where ncpname='" + TextBox1.Text + "'";

            DataSet ds = DBA.GetDataSet(sqll);
            if (ds.Tables[0].Rows.Count == 0)
            {
                string sql = "insert into Ncplb (ncpname) values('" + TextBox1.Text + "')";
                DBA.ExeSql(sql);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加成功！');", true);
                TextBox1.Text = null;

            }
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加失败，该品种已存在！');", true);


        }
        else
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);

    }

}