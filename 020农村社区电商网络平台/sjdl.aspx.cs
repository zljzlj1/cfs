using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sjdl : System.Web.UI.Page
{
  
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Textdlmm.BackColor = System.Drawing.Color.Transparent;
        Textdlzh.BackColor = System.Drawing.Color.Transparent;
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["sjmc"] = null;
        Session["sjid"] = null;  
        Session.Timeout=60;
        if (Textdlmm.Text.Trim() == "" || Textdlzh.Text.Trim() == "")
        {
            Response.Write("<script>alert('登录名和密码不能为空！');location='javascript:history.go(-1)';</script>");
        }
        else
        {

            string strUid = Textdlzh.Text.Trim();
            string strPwd = Textdlmm.Text.Trim();
            string SQLStr = " select sjmc,sjid from Sj where sjmc='" + strUid + "' and smm='" + strPwd + "' ";

            OleDbDataReader dr = DBA.GetDataReader(SQLStr);
            if (dr.Read())
            {
                Session["sjmc"] = strUid;
               Session["sjid"] = dr["sjid"].ToString();
                Response.Write("<script>alert('登录成功！');location='sjzym.aspx';</script>");

            }
            else
            {

                Response.Write("<script>alert(' 登录失败，用户不存在或者输入错误！');location='javascript:history.go(-1)';</script>");
            }
        }

    }
}