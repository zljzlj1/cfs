using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class wdcz_ncpxq_ckxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Username"].ToString();
        string vxqid = Request["id"].ToString();
        

        string str = "select rcpxqmc,rcpxqsl,xqdw,jg,ncpname,fbsj,sjmc,lxdh from Sjxqxx,Sj,Ncplb where  Sjxqxx.sjid=Sj.sjid and Sjxqxx.ncplbid=Ncplb.ncplbid and xqid='" + vxqid + "'";
        OleDbDataReader dr = DBA.GetDataReader(str);
        if (dr.Read())
        {
            Label2.Text = Convert.ToDateTime(dr["fbsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            Label3.Text = dr["rcpxqmc"].ToString();
            Label4.Text = dr["rcpxqsl"].ToString();
            Label5.Text = dr["ncpname"].ToString();
            string t = dr["jg"].ToString();
            if (t == "0") Label6.Text = "面议";
            else
            Label6.Text = dr["jg"].ToString();
            Label7.Text = dr["sjmc"].ToString();
            Label8.Text = dr["lxdh"].ToString();
           
            Label9.Text = dr["xqdw"].ToString();
            Label10.Text = dr["xqdw"].ToString();

        } 
        if (!IsPostBack)
            BindRepeater();
    }
    public void BindRepeater()
    { //
        string SQLStr = "select top(8) xqid,zpgw,sjmc,fbsj from Sjxqxx,Sj where Sjxqxx.sjid=Sj.sjid and qb='True' and scid='"+Session["cid"].ToString()+"' order by  fbsj desc  ";
        DataSet ds = DBA.GetDataSet(SQLStr);
        news.DataSource = ds.Tables["datatable"].DefaultView;
        news.DataBind();
    }
}