using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class xgsjgg : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        string vxqid = Request.QueryString["id"].ToString();

       /* string sql = "select qb from Sjxqxx  where Sxqid='" + vxqid + "'";
        OleDbDataReader drs = DBA.GetDataReader(sql);*/


     


        if (!IsPostBack)
        {

            dl();   string sql = "select rcpxqmc,rcpxqsl,jg,xqdw,Sjxqxx.ncplbid from Sjxqxx,Ncplb where Sjxqxx.ncplbid=Ncplb.ncplbid and qb='False' and xqid='" + vxqid + "'";
      OleDbDataReader dr = DBA.GetDataReader(sql);

      if (dr.Read())
      {
          TextBox1.Text = dr["rcpxqmc"].ToString();
          TextBox2.Text = dr["rcpxqsl"].ToString();
          TextBox3.Text = dr["jg"].ToString();
          TextBox4.Text = dr["xqdw"].ToString();
    
          DropDownList1.SelectedValue = dr["ncplbid"].ToString();
          
      }
          string sq = "select     zpxx,zpgw from Sjxqxx where  qb='True' and xqid='" + vxqid + "'";
      OleDbDataReader d = DBA.GetDataReader(sq);

      if (d.Read())
      {
      
    content1.Value = d["zpxx"].ToString();
       TextBox5.Text=d["zpgw"].ToString();
          
      }
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
        string vxqid = Request.QueryString["id"].ToString();
     
        if (TextBox1.Text!= "" && TextBox2.Text!= "" && TextBox3.Text!= "" && TextBox4.Text!= "" && content1.Value == ""&&TextBox5.Text == "")
        {
            string sql = "update Sjxqxx set sjid='" + Session["sjid"].ToString() + "',rcpxqmc='" + TextBox1.Text + "',rcpxqsl='" + TextBox2.Text + "',jg='" + TextBox3.Text + "',fbsj='" + d + "',xqdw='" + TextBox4.Text + "',ncplbid='" + DropDownList1.SelectedItem.Value + "',qb='False' where xqid='" + vxqid + "'";
      
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('修改成功!');</script>");

        }
        else
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('填写详细农产品信息!');</script>");

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
        string vxqid = Request.QueryString["id"].ToString();
      
        if (content1.Value!= ""&& TextBox5.Text!= "" && TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text == "" && TextBox4.Text == "")
        {
            string sql = "update Sjxqxx  set zpxx='" + content1.Value + "',sjid='" + Session["sjid"].ToString() + "',fbsj='" + d + "',qb='True',zpgw='" + TextBox5.Text+"' where xqid='"+vxqid+"'";
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('修改成功!');</script>");

        }
        else
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('填写招聘信息!');</script>");

    }
}