using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class wdcz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {  
        
       Label1.Text=Session["Username"].ToString();
        if (!IsPostBack)
        {
            BindRepeater();
            BindRepeat();
            BindRepea();
        }

      
    }
    public void BindRepeater()
    { //
        string sql = "select top(8) xqid,zpgw,sjmc,fbsj from Sjxqxx,Sj where Sjxqxx.sjid=Sj.sjid and qb='True' and scid='"+Session["cid"].ToString()+"' order by  fbsj desc  ";
        DataSet ds = DBA.GetDataSet(sql);
        news.DataSource = ds.Tables["datatable"].DefaultView;
        news.DataBind();
}
    public void BindRepea()
    {//xqid,
        string sql = "select  top(8) xqid, fbsj ,sjmc,rcpxqmc,rcpxqsl,xqdw ,jg from Sjxqxx,Sj where Sjxqxx.sjid=Sj.sjid and qb='False' and scid='" + Session["cid"].ToString() + "'  order by  fbsj desc ";
        DataSet ds = DBA.GetDataSet(sql);
        news2.DataSource = ds.Tables["datatable"].DefaultView;
        news2.DataBind();
      








    }
    public void BindRepeat()
    {
        string sql = "select top(8) txtid,titlername,wzdjl  from Txtinf,[User] where Txtinf.UserID=[User].UserID and cid='"+Session["cid"].ToString()+"'and sftg='是'order by shsj desc ";
        DataSet ds = DBA.GetDataSet(sql);
        news1.DataSource = ds.Tables["datatable"].DefaultView;
        news1.DataBind();
    }
}