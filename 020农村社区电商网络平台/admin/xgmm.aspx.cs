using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_xgmm : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.BackColor = System.Drawing.Color.Transparent;
        TextBox2.BackColor = System.Drawing.Color.Transparent;
        TextBox3.BackColor = System.Drawing.Color.Transparent;
        if (!IsPostBack)
        {
            string vadminname = Session["adminname"].ToString();
          

            string sq = "select  adminid,admm from  Admin where adminname='" + vadminname + "'";
            OleDbDataReader dr = DBA.GetDataReader(sq);
            if (dr.Read())
            {
           
                TextBox4.Text = dr["admm"].ToString();
            }


        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        if (TextBox1.Text.Trim().Equals(TextBox4.Text.Trim()))
        {

            string vadminid = Session["adminid"].ToString();

            string sql = "update  Admin set admm='" + TextBox3.Text + "'where adminid= '" + vadminid + "'";
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('更新成功!');</script>");
        }

    }
}