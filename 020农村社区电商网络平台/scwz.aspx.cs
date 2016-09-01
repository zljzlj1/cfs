using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class scwz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Label2.Text = Session["Username"].ToString();
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string vtitlername = TextBox1.Text;
   string d = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        string vtxt = content1.Value;
        if (TextBox1.Text != "" && content1.Value != "")
        {
            string SQLStr = "insert into Txtinf(titlername,txt,UserID,txtrq)values('" + vtitlername + "','" + vtxt + "','" + Session["UserID"].ToString() + "','" + d + "')";

            DBA.ExeSql(SQLStr);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('文章添加成功！');</script> ");
            TextBox1.Text = "";
        

            content1.Value = "";
        }
        else
        {

            if (TextBox1.Text == "")
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('请添加文章标题！');</script> ");
            }
            if (content1.Value == "")
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('请添加文章内容！');</script> ");
            }

        }

    }
}