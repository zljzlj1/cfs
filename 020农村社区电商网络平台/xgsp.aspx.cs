using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class xgsp : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Session["filename"] = null;
            GridView5_content();
            dl();
        }

    }
    protected void GridView5_content()
    {
        string vspid = Request.QueryString["id"].ToString();
   
        string strSj = "select kcsl,spmc,sptp,spjg,spxx,splbid,xsdw from Sp where  spid='" + vspid + " '";
        OleDbDataReader dr = DBA.GetDataReader(strSj);
        if (dr.Read())
        {
           TextBox1.Text = dr["spmc"].ToString();
             TextBox2.Text = dr["kcsl"].ToString();
             TextBox3.Text = dr["xsdw"].ToString();
             TextBox4.Text = dr["spjg"].ToString();
                 TextBox5.Text = dr["spxx"].ToString(); 
              Image1.ImageUrl = dr["sptp"].ToString();
            Session["filename"] = dr["sptp"].ToString();
            

            DropDownList1.SelectedValue = dr["splbid"].ToString();
 
        }

    }
    private void dl()
    {

        string SQL = "select * from Splb";//查询语句
        DataSet ds = DBA.GetDataSet(SQL);

        DropDownList1.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList1.DataTextField = "lbmc";
        DropDownList1.DataValueField = "splbid";
        DropDownList1.DataBind();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string filename = FileUpload1.FileName;
            Session["filename"] = "~/UploadFiles/sj\\" + filename;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/sj\\" + filename));
            Image1.ImageUrl = Session["filename"].ToString();
            int filesize = FileUpload1.PostedFile.ContentLength;

            if (filesize > 1024 * 1024)
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('文件大小不能超过1M!');</script>");
                return;
            }
            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            //允许许文件的扩展名保存到数组
            string[] allowExtension = { ".jpg", ".gif", ".txt", ".xls", ".png" };
            //在数组中查找是否存在fileExtension
            if (!allowExtension.Contains(fileExtension))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('不允许上传该文件!');</script>");
                return;
            }

        }
        else
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('没有上传的图片！');</script> ");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string vspid = Request.QueryString["id"].ToString();

    
        string picture = Session["filename"].ToString();

        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" )
        {
          
           
           
        

    decimal b = Convert.ToDecimal(TextBox2.Text);
        decimal a = Convert.ToDecimal(TextBox4.Text);

        string strsql = "Update Sp set spmc='" + TextBox1.Text + "',kcsl='" + b + "', xsdw='" + TextBox3.Text + "',spxx='" + TextBox5.Text + "', spjg='" + a + "' ,sptp='" + picture + "',splbid='"+ DropDownList1.SelectedItem.Value+"' where  spid='" + vspid + "'";

            DBA.ExeSql(strsql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('商品更新成功！');</script> ");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedIndex = 0;
            Image1.ImageUrl = "";
        }
        else
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('请填写必要信息！');</script> ");

        }
    }
}