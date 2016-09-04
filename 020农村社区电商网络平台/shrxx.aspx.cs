using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class shrxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string SQLStr = " select Username,lxdh,yb,Jtdz from [User] where UserID='" + Session["UserID"] + "'";
  OleDbDataReader dr = DBA.GetDataReader(SQLStr);
  if (dr.Read())
  {
      TextBox4.Text = dr["lxdh"].ToString().Trim();
  TextBox5.Text = dr["yb"].ToString().Trim();
  TextBox7.Text = dr["Jtdz"].ToString().Trim();
  TextBox1.Text = dr["Username"].ToString().Trim();
  }
 }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Timeout = 60;
         string dd =null;
      string d= DateTime.Now.ToLocalTime().ToString("yyyy-MM-dd HH:mm:ss");
    
     decimal a=Convert.ToDecimal(Session["sum"].ToString()); 
      string strsql = "insert into [Order] (UserID,gmrq,totalprice,receman,recephone,receadress,recepost) values('" + Session["UserID"] + "','" + d + "', '"+a+"','" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "')";
        DBA.ExeSql(strsql);
        ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('下单成功!');location.href= 'ddhao.aspx ' ; </script>");
   

       

  string SQLStr = " select ddid from [Order] where UserID='" + Session["UserID"] + "' and gmrq='" + d + "'";
  OleDbDataReader drs = DBA.GetDataReader(SQLStr);
  if (drs.Read())
  { 
  Session["ddid"]=drs["ddid"].ToString();
   dd = drs["ddid"].ToString();
  }

string SQLSt = " select num,jg,spid,sjid,zt,UserID from Gwc where UserID ='"+ Session["UserID"]+ "'";
  OleDbDataReader da = DBA.GetDataReader(SQLSt);
  while (da.Read())
  {
      
      int UserID = da.GetInt32(da.GetOrdinal("UserID"));
    decimal  num =da.GetDecimal(da.GetOrdinal("num"));
      decimal tyjg = da.GetDecimal(da.GetOrdinal("jg"));
      int spid = da.GetInt32(da.GetOrdinal("spid"));
      int sjid = da.GetInt32(da.GetOrdinal("sjid"));
   
     bool zt = da.GetBoolean(da.GetOrdinal("zt"));
  

           string strsq = "insert into Orderxx (UserID,num,tyjg,spid,sjid,zt,ddid) values ('"+UserID + "','" + num + "','" + tyjg + "','" + spid + "','" + sjid + "','" + zt + "','" + dd + "')";
        DBA.ExeSql(strsq);
           //string num=TextBox2.Text;
          // decimal sl=Convert.ToDecimal(num);
        string strs = "select kcsl from Sp where spid=spid";
        OleDbDataReader ddd = DBA.GetDataReader(strs);
        if (ddd.Read())
        { 
            string s=ddd["kcsl"].ToString();
            decimal kc = Convert.ToDecimal(s);
         decimal vkc = kc - num; 
        string sq = "update Sp set kcsl='" + vkc+ "' where spid='"+spid+"' ";
       DBA.ExeSql(sq); }

        string SQStr = " select ddid from [Order] where UserID='" + Session["UserID"] + "' and spid='"+spid+"'";
  OleDbDataReader dq= DBA.GetDataReader(SQStr);
  if (dq.Read())
  { 
  
  }

        string strss = "update Sp set xssl= '"+num+"' where spid='"+spid +"'";
        DBA.ExeSql(strss);
          string strSQ = "delete from Gwc where UserID='" + Session["UserID"].ToString() + "'";//删除记录
  DBA.ExeSql(strSQ);       
       

    }

 
  

    }
}