using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class xgncp : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dl();
            gw();
        }
    }
    private void gw()
    {
        string vid = Request["id"].ToString();
        string str = "select rcpname,tgsl,xqdw,price,xxxx,ncplbid,fbrq,rcppic from Ncpinfor where ncpid='" + vid+"'";
        OleDbDataReader dr = DBA.GetDataReader(str);
        if (dr.Read())
        {
            Label1.Text = dr["fbrq"].ToString();
            TextBox1.Text = dr["rcpname"].ToString();
            TextBox2.Text = dr["tgsl"].ToString();
            TextBox3.Text = dr["xqdw"].ToString();
            TextBox4.Text = dr["price"].ToString();
            Image1.ImageUrl = dr["rcppic"].ToString();
            Session["filename"] = dr["rcppic"].ToString();
            content1.Value = dr["xxxx"].ToString();

            DropDownList1.SelectedValue = dr["ncplbid"].ToString();
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
        string vncplbid = DropDownList1.SelectedItem.Value;
        string vrcpname = TextBox1.Text;
        string vtgsl = TextBox2.Text;
        string picture = Session["filename"].ToString();
        string vxxxx = content1.Value;
        string vxqdw = TextBox3.Text;
        string vprice = TextBox4.Text;
        string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
        decimal b = Convert.ToDecimal(vtgsl);
        decimal a = Convert.ToDecimal(vprice);
        string strsql = "Update Ncpinfor set ncplbid='" + vncplbid + "',rcpname='" + vrcpname + "', tgsl='" + b + "',xxxx='" + vxxxx + "', xqdw='" + vxqdw + "' rcppic='" + picture + "',fbrq='" + d + "',price='" + a + "'where  ncpid='" + Request["id"].ToString() + "'";
        DBA.ExeSql(strsql);
        ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('修改成功!');</script>");
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