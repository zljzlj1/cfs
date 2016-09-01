using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_right : System.Web.UI.Page
{
    public int t;
    public int t1;
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
  string strSj = "select UserID  from [User]  ";
        DataSet ds = DBA.GetDataSet(strSj);
  int rowSum = ds.Tables[0].Rows.Count;
     t = rowSum;
     string strS = "select sjid   from Sj";
     DataSet d = DBA.GetDataSet(strS);
     int rowSu= d.Tables[0].Rows.Count;
      t1= rowSu;
    }
}



        