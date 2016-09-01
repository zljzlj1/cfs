using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class usermm : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.BackColor = System.Drawing.Color.Transparent;
        TextBox2.BackColor = System.Drawing.Color.Transparent;
        TextBox3.BackColor = System.Drawing.Color.Transparent;
       
            string vUserID = Session["UserID"].ToString();


            string sq = "select mm from  [User] where UserID='" + vUserID + "'";
            OleDbDataReader dr = DBA.GetDataReader(sq);
            if (dr.Read())
            {

                TextBox4.Text = dr["mm"].ToString();
            }


       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        if (TextBox1.Text.Trim().Equals(TextBox4.Text.Trim()))
        {

            string vUserID = Session["UserID"].ToString();

            string sql = "update  [User] set mm='" + TextBox3.Text + "' where UserID= '" + vUserID + "'";
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('修改成功!');</script>");
        }

    }
}