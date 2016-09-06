using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sjdp : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

        string vsjid = Request.QueryString["id"].ToString();
        string vsjdjl = Request.QueryString["sjdjl"].ToString();
      
      


        if (!IsPostBack)
        { 
           
        string sqll = "select  sjmc,rzsj,lxdh,jtdz,sjtp from Sj where sjid='" + vsjid + "'";
        OleDbDataReader dr = DBA.GetDataReader(sqll);
        if (dr.Read())
        { 
        Label1.Text=dr["sjmc"].ToString();
        Label2.Text =Convert.ToDateTime( dr["rzsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
        Label3.Text = dr["lxdh"].ToString();
        Label4.Text = dr["jtdz"].ToString();
        Image1.ImageUrl = dr["sjtp"].ToString();
        }
            DataList1_content();
            repeat();
        }
        int a = 0;
        a = Convert.ToInt32(vsjdjl) + 1;
    
        string sql = "update Sj set sjdjl='" +a+"' where sjid='" + vsjid + "'";
        //DataSet ds = DBA.GetDataSet(sql); 
        DBA.ExeSql(sql);

    }
    private void repeat()
    {
        string vsjid = Request.QueryString["id"].ToString();
        string SQLStr = "select top(6)zpgw,fbsj from Sjxqxx where qb='True' and sjid='" + vsjid + "'";
        DataSet ds = DBA.GetDataSet(SQLStr);
        news.DataSource = ds.Tables["datatable"].DefaultView;
        news.DataBind();
    
    }
    private void DataList1_content()
    {
    
        string vsjid = Request.QueryString["id"].ToString();
     
        string SQLStr = "select Sj.sjid,spid,sptp,spjg,spmc,spdjl,sjdjl from Sp,Sj where Sp.sjid=Sj.sjid and spzt='True' and Sj.sjid='" + vsjid + "'";
        DataSet ds = DBA.GetDataSet(SQLStr);

        int rowSum = ds.Tables[0].Rows.Count;
      
        if (rowSum == 0)
        {
            Label7.Visible = true; Label7.Text = "暂无数据"; return;
        }//如果没有数据，退出过程
        else
            Label7.Visible = false; 

        DataList1.DataSource = ds.Tables[0].DefaultView; ;
        DataList1.DataBind();
       


    
    }

   



   

    
}