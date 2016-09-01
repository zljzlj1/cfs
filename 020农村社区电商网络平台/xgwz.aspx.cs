using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class xgwz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            yuan();
        Label2.Text = Session["Username"].ToString();
        }
    
    }
    protected void yuan()
    { 
      string vtxtid = Request.QueryString["id"].ToString();
      if (vtxtid == null)
          ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('文章更新成功！');</script> ");

      string sql = " select titlername,txtrq,txt from Txtinf where txtid='" + vtxtid + "' ";
        OleDbDataReader dr = DBA.GetDataReader(sql);
        if(dr.Read())
        {
            TextBox1.Text = dr["titlername"].ToString();
            Label1.Text = dr["txtrq"].ToString();
            content1.Value = dr["txt"].ToString();
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string vtxtid = Request.QueryString["id"].ToString();
        string vtitlername = TextBox1.Text;
     string vtxt = content1.Value;
   string d=System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
   string sql = "update Txtinf set txtrq ='" + d + "',txt ='" + vtxt + "',titlername='" + vtitlername + "'   where txtid = '" + vtxtid + "'";
        DBA.ExeSql(sql);
      
        ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('文章更新成功！');</script> ");





    }
}