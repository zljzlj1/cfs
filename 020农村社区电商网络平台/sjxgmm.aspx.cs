using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sjxgmm : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.BackColor = System.Drawing.Color.Transparent;
        TextBox2.BackColor = System.Drawing.Color.Transparent;
        TextBox3.BackColor = System.Drawing.Color.Transparent;
      
            string vsjmc = Session["sjmc"].ToString();


            string sq = "select  smm from  Sj where sjmc='" + vsjmc + "'";
            OleDbDataReader dr = DBA.GetDataReader(sq);
            if (dr.Read())
            {

                TextBox4.Text = dr["smm"].ToString();
              
            }


      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {  string t = Session["sjid"].ToString();

        if (TextBox1.Text.Trim().Equals(TextBox4.Text.Trim()))
        {
 string sql = "update  Sj set smm='" + TextBox3.Text + "' where sjid= '" + t + "'";
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('修改成功!');</script>");
        }

    }
}