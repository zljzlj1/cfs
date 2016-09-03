using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class qrkhdd : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            GridView2_content();
            GridView3_content();

        }
      //  GridView2_content();
       // GridView3_content();
    }
    protected void GridView2_content()
    {
       string vsjid=Session["sjid"].ToString();
      string strSQ = "select tyjg,Orderxx.ddid,gmrq,spmc,num,spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid  and Orderxx.ddid=[Order].ddid and Sj.sjid='" + vsjid + "' and zt='False' and sjqr='" + DropDownList1.SelectedItem.Value + "'and fh='" + DropDownList2.SelectedItem.Value + "' and ddhd='" + DropDownList4.SelectedItem.Value + "' order by gmrq desc ";
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
        if (s != "" || s != null)
        {
            GridView2.PageIndex = e.NewPageIndex;
            ss();
        }
        else
        {     GridView2.PageIndex = e.NewPageIndex;
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
                ((LinkButton)e.Row.Cells[9].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[2].Text + "\"商品吗?')");
            }

        }
        
    }

  
    
  
   



    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vddxqid = GridView2.DataKeys[e.RowIndex].Value.ToString();
        string st = "delete from  Orderxx where ddxqid='" + vddxqid + "'";//删除记录
        int i = DBA.ExeSqlRows(st);
        if (i == 0)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');</script> ");

        }
        if ((GridView2.Rows.Count) % (GridView2.PageSize) == 1)//判断最后一页是否只有一条记录
        {
            if (GridView2.PageIndex > 1)
            {
                GridView2.PageIndex = GridView2.PageIndex - 1;

            }
        }
        GridView2_content();
  
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2_content();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2_content();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView3_content();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2_content();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ss1();
    }
    protected void GridView3_content()
    {
        //string vsjid = Session["sjid"].ToString();
        //int sj = Convert.ToInt32(vsjid);
        //ddid,gmrq,spmc,num,spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd 
        string strSQ = "select Orderxx.ddid,gmrq,spmc,num,spjg,tyjg,ddxqid,sjqr,fh,yhsfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Orderxx.ddid=[Order].ddid and Sj.sjid='" + Session["sjid"].ToString() + "'  and ddhd='" + DropDownList3.SelectedItem.Value + "' and zt='True'  order by gmrq desc ";
        //select   Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp ,Sj,Orderxx,[Order] where Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid and Sj.sjid='1' order by gmrq desc  ;
        DataSet ds = DBA.GetDataSet(strSQ);
        GridView3.DataSource = ds.Tables["datatable"].DefaultView;
        GridView3.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label2.Visible = true;
            Label2.Text = "暂无数据";

        }
        else
            Label2.Visible = false;
 
    }
    
    protected void ss1()
    {

        string t = TextBox2.Text;

        if (t != "" && t != null)
        {
          
            string sql = "select Orderxx.ddid,gmrq,spmc,num,SP.spjg,tyjg,ddxqid,sjqr,fh,yhsfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid  and Orderxx.ddid=[Order].ddid  and Sj.sjid='" + Session["sjid"].ToString() + "'and ddhd='" + DropDownList4.SelectedItem.Value + "' and zt='True' and  Orderxx.ddid like '%" + t + "%' order by gmrq desc  ";
            DataSet ds = DBA.GetDataSet(sql);
            GridView3.DataSource = ds.Tables["datatable"].DefaultView;
            GridView3.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('无此订单信息！');", true);
                GridView3_content();

            }
           
        }
        else if (t == "" || t == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('请输入搜索关键字！');", true);
            GridView3_content();
        }

      
      

        }
    
   
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        string s = TextBox2.Text;
        if (s != "" || s != null)
        {
            GridView3.PageIndex = e.NewPageIndex;
            ss1();
        }
        else
        {
            GridView3.PageIndex = e.NewPageIndex;
            GridView3_content();
        }

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
                ((LinkButton)e.Row.Cells[8].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[2].Text + "\"商品吗?')");
            }
        }

 
    }

    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vddxqid = GridView3.DataKeys[e.RowIndex].Value.ToString();
        string st = "delete from  Orderxx where ddxqid='" + vddxqid + "'";//删除记录
        int i = DBA.ExeSqlRows(st);
        if (i == 0)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');</script> ");

        }
        if ((GridView3.Rows.Count) % (GridView3.PageSize) == 1)//判断最后一页是否只有一条记录
        {
            if (GridView3.PageIndex > 1)
            {
                GridView3.PageIndex = GridView3.PageIndex - 1;

            }
        }
       
        GridView3_content();
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

            string sql = "select tyjg,Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid  and Sj.sjid='" + Session["sjid"].ToString() + "'and sjqr='" + DropDownList1.SelectedItem.Value + "'and fh='" + DropDownList2.SelectedItem.Value + "' and ddhd='" + DropDownList4.SelectedItem.Value + "' and zt='False' and Orderxx.ddid like '%" + t + "%' order by gmrq desc  ";
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
