using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class scncp : System.Web.UI.Page
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

    protected void Button2_Click(object sender, EventArgs e)
    {
       
       
      
     
        string d= DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" )
        {  decimal vtgsl =Convert.ToDecimal(TextBox2.Text);
   decimal vprice = Convert.ToDecimal(TextBox4.Text);  string picture = Session["filename"].ToString();
        string vxxxx = TextBox5.Text;
        string vxqdw = TextBox3.Text;
            string ncplbid = DropDownList1.SelectedItem.Value;
        string vrcpname = TextBox1.Text;
       string SQLStr = "insert into Ncpinfor(rcpname,tgsl,xqdw,price,xxxx,ncplbid,fbrq,UserID,rcppic)values ('" + vrcpname + "','" + vtgsl + "','" + vxqdw + "','" + vprice + "','" + vxxxx + "','" + ncplbid + "','" + d + "','" + Session["Userid"].ToString() + "','" + picture + "')";
            DBA.ExeSql(SQLStr);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('农产品上传成功！');</script> ");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
             TextBox5.Text = "";
             Image1.ImageUrl = "";
            DropDownList1.SelectedIndex = 0;
        }
        else
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('请填写必要信息！');</script> ");
         
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string filename = FileUpload1.FileName;
            Session["filename"] = "~/UploadFiles/ncp\\" + filename;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/ncp\\" + filename));
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
}