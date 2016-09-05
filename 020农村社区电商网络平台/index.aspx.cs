
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class index : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataList1_content();
            DataList2_content();
        }


    }
    private void DataList1_content()
    {



        string SQLStr = "select top(5)Sj.sjid,spid,sptp,spjg,spmc,spdjl,sjdjl from Sp,Sj where Sp.sjid=Sj.sjid and spzt='True'  order by spsjsj desc";
        DataSet ds = DBA.GetDataSet(SQLStr);
          DLnew.DataSource = ds.Tables[0].DefaultView; ;
        DLnew.DataBind();




    }
    private void DataList2_content()
    {



        string SQLStr = "select top(5)Sj.sjid,spid,sptp,spjg,spmc,spdjl,sjdjl from Sp,Sj where Sp.sjid=Sj.sjid and spzt='True'  order by spdjl desc";
        DataSet ds = DBA.GetDataSet(SQLStr);
        DLbest.DataSource = ds.Tables[0].DefaultView; ;
        DLbest.DataBind();




    }

}