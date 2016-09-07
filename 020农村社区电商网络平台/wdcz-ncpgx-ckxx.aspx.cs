using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class wdcz_ncpgx_ckxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
      
        Label1.Text = Session["Username"].ToString();  BindRepeater();
        string vncpid = Request["id"].ToString();
        string str = "select rcpname,tgsl,xqdw,price,xxxx,ncpname,fbrq,rcppic,Username,lxdh from Ncpinfor,[User],Ncplb where  Ncpinfor.UserID=[User].UserID and Ncpinfor.ncplbid=Ncplb.ncplbid and ncpid='" + vncpid + "'";
        OleDbDataReader dr = DBA.GetDataReader(str);
        if (dr.Read())
        {
            Label2.Text = Convert.ToDateTime(dr["fbrq"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            Label3.Text = dr["rcpname"].ToString();
            Label4.Text = dr["tgsl"].ToString();
            Label5.Text = dr["ncpname"].ToString();
            string t = dr["price"].ToString();
            if (t == "0.00") Label6.Text ="面议";
            else
            Label6.Text = dr["price"].ToString();
            Label7.Text = dr["Username"].ToString();
            Label8.Text = dr["lxdh"].ToString();
            Label10.Text = dr["xxxx"].ToString();
            Label9.Text = dr["xqdw"].ToString();

            Image1.ImageUrl = dr["rcppic"].ToString();
        }
    }
    public void BindRepeater()
    { //
        string sql = "select top(8) xqid,zpgw,sjmc,fbsj from Sjxqxx,Sj where Sjxqxx.sjid=Sj.sjid and qb='True' and scid='"+Session["cid"].ToString()+"' order by  fbsj desc  ";
        DataSet ds = DBA.GetDataSet(sql);
        news.DataSource = ds.Tables["datatable"].DefaultView;
        news.DataBind();
    }
}