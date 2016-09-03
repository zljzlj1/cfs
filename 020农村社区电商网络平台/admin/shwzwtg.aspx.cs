using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_shwzwtg : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public string title = null;
    public string txt = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        if (!IsPostBack)
        {
            GridView5_content();
          
            string vsftg = Request.QueryString["sid"].ToString();
            if (vsftg == "是")
            {

                Panel1.Visible = false;
            }
        }
        GridView5_content();
    }
    protected void GridView5_content()
    {
        string vtxtid = Request.QueryString["id"].ToString();
        string strSj = "select titlername, txt,Username,txtrq from [User],Txtinf where [User].UserID=Txtinf.UserID and  txtid='" + vtxtid + " '";

        OleDbDataReader dr = DBA.GetDataReader(strSj);
        if (dr.Read())
        {
            Label6.Text = dr["Username"].ToString();

            Label2.Text = Convert.ToDateTime(dr["txtrq"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            title = dr["titlername"].ToString();
            txt = dr["txt"].ToString();
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string vtxtid = Request.QueryString["id"].ToString();
        string t = Session["adminid"].ToString();
        string d = DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");



        if (DropDownList1.SelectedItem.Text == "是")
        {
            string sql = "update Txtinf set shsj='" + d + "',adminid='" + t + "',shzk='已审核',sftg='是' , txtfbzt='True'  where txtid = '" + vtxtid + "'";
            DBA.ExeSql(sql);
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('审核并通过!');</script>");
        }
        if (DropDownList1.SelectedItem.Text == "否")
        {
            if (TextBox1.Text != "" )
            {

                string sql = "update Txtinf set shsj='" + d + "',adminid='" + t + "',shzk='已审核',sftg='否' , txtfbzt='False' , wtgly='" + TextBox1.Text + "' where txtid = '" + vtxtid + "'";
                DBA.ExeSql(sql);
                TextBox1.Text = null;
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('审核成功!');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('请输入理由!');</script>");

            }

        }
    }
}