using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sjddgl : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            repeat();

        }
      /* if (chkqr.Checked == true)
        {
        
            Label13.Text = "已确认";
        }
        else
        {   
            Label13.Text = "未确认";
        }
        if (chkfh.Checked == true)
        {
           
            Label14.Text = "已发货";
        }
        else
        {
            Label14.Text = "未发货";
        }
        if (chkhd.Checked == true)
        {
            Label15.Text = "已核对";
        }
        else
        {
            Label15.Text = "未核对";
        }*/
    }
    protected void repeat()
    { 
      string vddxqid = Request.QueryString["id"].ToString();
      string vddid = Request.QueryString["oid"].ToString();
      string vsjqr;
         string vfh;
          string vhd;
      string strSQ = "select sjmc,tyjg,recepost,receadress,recephone,receman,Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,sjqr,fh,sfzf,ddhd from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid and  ddxqid='" + vddxqid + "'   ";
 OleDbDataReader dr = DBA.GetDataReader(strSQ);
   if (dr.Read())
   {
       Label1.Text = dr["ddid"].ToString();
   Label2.Text = dr["sjmc"].ToString();
   Label18.Text = Convert.ToDateTime(dr["gmrq"].ToString()).ToString("yyyy-MM-dd hh:mm:ss");
   Label9.Text = dr["spmc"].ToString();
   Label17.Text = dr["ktfy"].ToString();
   Label10.Text = dr["num"].ToString();
   Label11.Text = dr["spjg"].ToString();
   Label12.Text = dr["tyjg"].ToString();
   Label5.Text = dr["receman"].ToString();
   Label6.Text = dr["recephone"].ToString();
   Label7.Text = dr["receadress"].ToString();
   Label8.Text = dr["recepost"].ToString();
      vsjqr= dr["sjqr"].ToString();
         vfh= dr["fh"].ToString();
           vhd= dr["ddhd"].ToString();

           if (vsjqr == "True")
           { Label13.Text = "已确认"; chkqr.Visible = false; }
           else
               Label13.Text = "未确认";
       if(vfh=="True")
       {Label14.Text = "已发货";chkfh.Visible = false; }
       else
            Label14.Text = "未发货";
       if (vhd == "True")
       { Label15.Text = "已核对"; ;chkhd.Visible = false; }
       else
  Label15.Text = "未核对";
       if (chkqr.Visible == false && chkfh.Visible == false && chkhd.Visible == false)
       {
           btnSave.Visible = false;
       }
              




   }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string str;
        string str1;
        string str2;

        if (chkqr.Checked == true)
        {
            str = "True";
     
        }
        else
        {   if(chkqr.Visible==true)
            str = "False";
        else
            str = "True";
     
        }
   
       if (chkfh.Checked == true)
        {
             str1 = "True";
   
        }
        else
        {if (chkfh.Visible == true)
          str1 = "False";
        else
            str1 = "True";
        }
 
       if (chkhd.Checked == true)
       {
         str2 = "True";
       }
       else
       {  if (chkhd.Visible == true)
             str2 = "False";
       else
           str2 = "True";
       }
       string vddxqid = Request.QueryString["id"].ToString();

       string sql = "update Orderxx set sjqr='" + str + "',fh='" + str1 + "',ddhd='" + str2 + "' where ddxqid='" + vddxqid + "' ";

        DBA.ExeSql(sql);


          // Response.Write("<script>alert('修改成功！')</script>");
        ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('修改成功！');location.href= 'qrkhdd.aspx';</script> ");
    
    
    }
}