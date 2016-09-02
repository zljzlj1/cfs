using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ckwz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public string title=null;
    public string txt=null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView5_content();
        }
    }
    protected void GridView5_content()
    {
        string vtxtid = Request.QueryString["id"].ToString();
        string strSj = "select titlername, txt,Username,shsj,wzdjl from [User],Txtinf where [User].UserID=Txtinf.UserID and  txtid='" + vtxtid + " '";
        OleDbDataReader dr = DBA.GetDataReader(strSj);
        if (dr.Read())
        {
            Label1.Text = dr["Username"].ToString();
            Label3.Text = dr["wzdjl"].ToString();
            Label4.Text = Convert.ToDateTime(dr["shsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
           title = dr["titlername"].ToString();
           txt = dr["txt"].ToString();
        }
   
    }
}