using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sjgg : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
        
         dl();
        }

    


      
      
   }
    private void dl()
    {

        string SQL = "select * from Ncplb";//查询语句
        DataSet ds = DBA.GetDataSet(SQL);

        DropDownList1.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList1.DataTextField = "ncpname";
        DropDownList1.DataValueField = "ncplbid";
        DropDownList1.DataBind();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");

      if (TextBox1.Text!= "" && TextBox2.Text!= "" && TextBox3.Text!= "" && TextBox4.Text!= "" && content1.Value == "" && TextBox5.Text == "")
        {
            string sql = "insert into Sjxqxx(sjid,rcpxqmc,rcpxqsl,jg,fbsj,xqdw,ncplbid,qb) values('" + Session["sjid"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+d+"','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "','False')";
                    DBA.ExeSql(sql);
                 ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('发布成功!');</script>");
   
        }
        else
                   ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('填写错误!');</script>");
   
     }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
        if (  TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text =="" && TextBox4.Text == "" && TextBox5.Text!= "")
        {
            string sql = "insert into Sjxqxx (zpxx,sjid,fbsj,qb,zpgw) values('" + content1.Value + "','" + Session["sjid"].ToString() + "','" + d + "','True','" + TextBox5.Text + "')";
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('发布成功!');</script>");
   
        }
        else
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('填写招聘信息!');</script>");
   
    }
}