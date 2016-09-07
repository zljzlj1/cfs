using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class wdcz_zpxx_ck : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Text = Session["Username"].ToString();
        if (!IsPostBack)
        {
            BindRepeater();
            Repeate();
        }


    }
    public void BindRepeater()
    { 
        string vxqid=Request.QueryString["id"].ToString();
        string sql = "select zpxx,lxrxm,lxdh,fbsj,sjmc from Sjxqxx,Sj where Sjxqxx.sjid=Sj.sjid and xqid='" + vxqid + "' ";
        OleDbDataReader dr = DBA.GetDataReader(sql);
        if (dr.Read())
        {
            Label6.Text = dr["zpxx"].ToString();
        Label2.Text = dr["lxrxm"].ToString();
        Label3.Text = dr["lxdh"].ToString();
        Label4.Text = Convert.ToDateTime(dr["fbsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
        Label5.Text = dr["sjmc"].ToString();
        }
       
    }
    protected void Repeate()
    {

        string sql = "select top(8) txtid,titlername,wzdjl  from Txtinf,[User] where Txtinf.UserID=[User].UserID and cid='" + Session["cid"].ToString() + "'and sftg='是'order by shsj desc ";
        DataSet ds = DBA.GetDataSet(sql);
        news.DataSource = ds.Tables["datatable"].DefaultView;
        news.DataBind();
    
    }
}