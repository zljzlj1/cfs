using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class tuichu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserID"] = null;
        Session["Username"] = null;
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Write("<script>alert('退出成功！');location='index.aspx';</script>");
    }
}