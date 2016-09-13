using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_xgdz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.BackColor = System.Drawing.Color.Transparent;

        if (!IsPostBack)
        {
            GridView1_content();
   

        }

    }


    protected void GridView1_content()
    {

        string strSQL = "select * from Adsf";
        DataSet ds = DBA.GetDataSet(strSQL);
        GridView1.DataSource = ds.Tables["datatable"].DefaultView;
        GridView1.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label3.Visible = true;
            Label3.Text = "暂无数据";
            Label1.Visible = false;
            Label2.Visible = false;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
        }
        else
        {
            Label3.Visible = false;
        
            Label1.Visible = true;
            Label2.Visible = true;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton4.Visible = true;
        }
        Show();
    }

   
    private void Show()
    {//显示当前页数和总页数

        Label1.Text = "第 " + (GridView1.PageIndex + 1).ToString() + " 页";
        if (GridView1.PageCount == 0)
            Label2.Text = "总共 " + 1 + " 页";
        else
            Label2.Text = "总共 " + GridView1.PageCount.ToString() + " 页";
    }
    

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string sf = TextBox1.Text;



        if (sf != "" )
        {
            GridView1.PageIndex = e.NewPageIndex;
            ss();
        }
        else
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1_content();
        }


    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vsfid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string strSQL = "delete from Adsf where sfid='" + vsfid + "'";//删除记录
       int i= DBA.ExeSqlRows(strSQL);
           if (i == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
      
        }

        if ((GridView1.Rows.Count) % (GridView1.PageSize) == 1)//判断最后一页是否只有一条记录
        {
            if (GridView1.PageIndex>1)
            GridView1.PageIndex = GridView1.PageIndex - 1;
        }
        TextBox1.Text = "";
        if (TextBox1.Text == "" )
            GridView1_content();
       




    }
   
    protected void link(object sender, EventArgs e)
    {
        string args = ((LinkButton)sender).CommandArgument.ToString();
        switch (args)
        {//根据不同的arguement值,进行相应的操作：
            case "n":
                if (GridView1.PageIndex < GridView1.PageCount - 1)//判断是否为最后一条记录
                {
                    GridView1.PageIndex = GridView1.PageIndex + 1;//读取到下一页
                }
                break;//返回
            case "p":
                if (GridView1.PageIndex > 0)//判断是否为第一页
                {
                    GridView1.PageIndex = GridView1.PageIndex - 1;//读取到前一页的内容
                }
                break;
            case "l":
                if ((GridView1.PageCount - 1) > 0)
                    GridView1.PageIndex = (GridView1.PageCount - 1);//读取最后一页
                break;
            default://不满足上述情况，则读取首页的内容
                GridView1.PageIndex = 0;
                break;
        }

        if (TextBox1.Text == "" )
            GridView1_content();
        else
            ss();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
            //当鼠标移开时还原背景色
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[3].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"省份信息吗?')");
            }

        }



    }






    protected void ss()
    {

        string t = TextBox1.Text;

        if (t != "" )
        {
            string sql = "select Adsf.* from Adsf where  sf  like '%" + t + "%'";

            DataSet ds = DBA.GetDataSet(sql);
            GridView1.DataSource = ds.Tables["datatable"].DefaultView;
            GridView1.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此省份信息！');", true);
                GridView1_content();

            }
            else
                Show();
        }
        else if (t == "" )
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView1_content();
        }


    }
   


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = (int)e.NewEditIndex;
        string t = TextBox1.Text;

        if (t != "" )
        {
            string sql = "select Adsf.* from Adsf where  sf  like '%" + t + "%'";

            DataSet ds = DBA.GetDataSet(sql);
            GridView1.DataSource = ds.Tables["datatable"].DefaultView;
            GridView1.DataBind();
            TextBox1.Text = "";
        }
        else
        GridView1_content();
    }
   
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1_content();
    }

    
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string k = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string vSf = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.Trim();
        string sql = " update Adsf set Sf='" + vSf + "' where sfid='" + k + "' ";
        DataSet ds = DBA.GetDataSet(sql);
        GridView1.EditIndex = -1;
        GridView1_content();

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ss();
    }
    
   
   
    

}