using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class admin_jbxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
           
        }
    }
    private void Bind()
    {
      
        if( Session["bz"].ToString()=="y")
        Label5.Text ="是";
        else 
     Label5.Text = "否";
    string st="select * from Admin where adminid=' "+Session["adminid"]+"'";
           OleDbDataReader dr = DBA.GetDataReader(st);
           if (dr.Read())
           {
               Label1.Text = dr["adminname"].ToString();
               Label2.Text = dr["admm"].ToString();
               Label3.Text =Convert.ToDateTime( dr["logintime"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
               Label4.Text = Convert.ToDateTime(dr["sctime"].ToString()).ToString("yyyy-MM-dd HH:mm:ss"); ;
 }
    }
}