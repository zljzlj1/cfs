using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.WebControls;

public partial class wdcz_xqxxck : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    public string txt = null;
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
       string vxqid = Request.QueryString["id"].ToString();
        string sql = "select  rcpxqmc,rcpxqsl,jg,xqdw,ncpname,lxrxm,lxdh,fbsj,sjmc from Sjxqxx,Sj,Ncplb where Sjxqxx.sjid=Sj.sjid and Sjxqxx.ncplbid=Ncplb.ncplbid and xqid='" + vxqid + "' ";
        OleDbDataReader dr = DBA.GetDataReader(sql);
        if (dr.Read())
        {
          
            Label2.Text = dr["lxrxm"].ToString();
            Label3.Text = dr["lxdh"].ToString();
            Label4.Text = Convert.ToDateTime(dr["fbsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            Label5.Text = dr["sjmc"].ToString();
             Label6.Text = dr["rcpxqmc"].ToString();
            Label7.Text = dr["rcpxqsl"].ToString();
            Label8.Text = dr["xqdw"].ToString();
            string t = dr["jg"].ToString();
            if(t=="0")
                Label9.Text ="面议";
            else
            Label9.Text = dr["jg"].ToString();
            Label10.Text = dr["xqdw"].ToString();
            Label11.Text = dr["ncpname"].ToString();

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