using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class tjsp : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dl();
            Session["filenamel"] = "~/UploadFiles/sj\\" + "1.jpg";  Image1.ImageUrl="~/UploadFiles/sj\\" + "1.jpg";
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
            Session["filenamel"] = "~/UploadFiles/sj\\" + filename;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/sj\\" + filename));
            Image1.ImageUrl = Session["filenamel"].ToString();
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

     
      
         
        string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" )
        { decimal b = Convert.ToDecimal(TextBox2.Text);
      decimal a = Convert.ToDecimal(TextBox4.Text);
            string picture = Session["filenamel"].ToString();
            //重名
            string SQLStr = "insert into Sp(sjid,kcsl,spmc,sptp,spjg,spxx,splbid,xsdw,spsjsj,spzt)values ('" + Session["sjid"].ToString() + "','" +b + "','" + TextBox1.Text + "','" + picture + "','" + a + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox3.Text + "','" + d + "','True')";
            DBA.ExeSql(SQLStr);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('商品上传成功！');</script> ");
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Image1.ImageUrl = "";
            DropDownList1.SelectedIndex = 0;
        }
        else
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('请填写必要信息！');</script> ");
           
        }
    }
}