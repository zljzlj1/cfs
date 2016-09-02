using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class scwzxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
   // public int w;
   // public int t;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=Session["Username"].ToString();
       /* if (!IsPostBack)
        {
            GridView5_content();
        }
        GridView5_content();*/
    }

    /* protected void GridView5_content()
     {(<span style="font-size: 12px; color: #FF0000"><%=w %></span>)
         string strSj = "select txtfbzt from [User],Txtinf where [User].UserID=Txtinf.UserID and Txtinf.Userid='" + Session["UserID"].ToString() + "' and txtfbzt='False'";
         DataSet ds = DBA.GetDataSet(strSj);
         int rowSum = ds.Tables[0].Rows.Count;
         w = rowSum;
         string strS= "select  txtfbzt from [User],Txtinf where [User].UserID=Txtinf.UserID and Txtinf.Userid='" + Session["UserID"].ToString() + "' and txtfbzt='True'";
         DataSet d = DBA.GetDataSet(strS);
         int rowSu = d.Tables[0].Rows.Count;
         t = rowSu;
    
     }*/
}