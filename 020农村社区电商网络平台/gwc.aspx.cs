using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class gwc : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public Decimal sum = 0;
    public int b;
    protected void Page_Load(object sender, EventArgs e)
    {
         
          if (!IsPostBack)
          {
              GridView2_content();
      
          }
         GridView2_content();
    }
   
    protected void GridView2_content()
    {
        b = 0;

       string strSQ = "select  gwid,spmc,spjg,num,ktfy,jg,sjmc,zt from Sj,Gwc,Sp where Sj.sjid=Gwc.sjid and Gwc.spid=Sp.spid and UserID= '"+Session["UserID"].ToString()+"'";
     
        DataSet ds = DBA.GetDataSet(strSQ);
        GridView2.DataSource = ds.Tables["datatable"].DefaultView;
        GridView2.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label5.Visible = true;
            Label5.Text = "暂无数据";
           
        }
         b = ds.Tables[0].Rows.Count;
    
    }
   
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      
     
            GridView2.PageIndex = e.NewPageIndex;
            GridView2_content();
       

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
                ((LinkButton)e.Row.Cells[7].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[0].Text + "\"商品吗?')");
            }
 
        }

      if (e.Row.RowIndex >= 0)
        {
           
            string a = ((HiddenField)e.Row.FindControl("HiddenField4")).Value;
            if (a=="False")
          
                sum += Convert.ToDecimal(e.Row.Cells[5].Text);
     }
       
     
       

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string vgwid = GridView2.DataKeys[e.RowIndex].Value.ToString();
        string strSQ = "delete from Gwc where gwid='" + vgwid + "'";//删除记录
        int i=DBA.ExeSqlRows(strSQ);
        
        if (i == 0) {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('存在其他记录，请删除本信息含有的其他内容，在删除本信息!！');", true);
      
        }
        if ((GridView2.Rows.Count) % (GridView2.PageSize) == 1)//判断最后一页是否只有一条记录
        {

            if (GridView2.PageIndex > 1)
            {
                GridView2.PageIndex =GridView2.PageIndex - 1;

            }
           
        }
    }
   
  



    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string strSQ = "delete from Gwc where UserID='" + Session["UserID"].ToString() + "'";//删除记录
        DBA.ExeSql(strSQ);
        ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('清空成功!'); ; </script>");
    
    }





    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (b != 0)
        { Session["sum"] = sum; Response.Redirect("shrxx.aspx?id=sum "); }
        else
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('请购物!'); ; </script>");
    
    }
}