using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yhztddgl : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            repeat();

        }
    
    }
    protected void repeat()
    {
        string vddxqid = Request.QueryString["id"].ToString();
        string vddid = Request.QueryString["oid"].ToString();
        string vsjqr;
        string vfh;
       
        string vyhsfzf;
        string strSQ = "select sjmc,recepost,receadress,recephone,receman,tyjg,Orderxx.ddid,gmrq,spmc,num,SP.spjg,sjqr,fh,yhsfzf from Sp,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Orderxx.ddid=[Order].ddid and  ddxqid='" + vddxqid + "'   ";
        //select   Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp ,Sj,Orderxx,[Order] where Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid and Sj.sjid='1' order by gmrq desc  ;
        OleDbDataReader dr = DBA.GetDataReader(strSQ);
        if (dr.Read())
        {
            Label1.Text = dr["ddid"].ToString();
            Label2.Text = dr["sjmc"].ToString();
            Label18.Text = Convert.ToDateTime(dr["gmrq"].ToString()).ToString("yyyy-MM-dd hh:mm:ss");
            Label9.Text = dr["spmc"].ToString();
       
            Label10.Text = dr["num"].ToString();
            Label11.Text = dr["spjg"].ToString();
            Label12.Text = dr["tyjg"].ToString();
            Label5.Text = dr["receman"].ToString();
            Label6.Text = dr["recephone"].ToString();
            Label7.Text = dr["receadress"].ToString();
            Label8.Text = dr["recepost"].ToString();




            vsjqr = dr["sjqr"].ToString();
            vfh = dr["fh"].ToString();
       
            vyhsfzf=dr["yhsfzf"].ToString();


            if (vsjqr == "True")
            { Label13.Text = "已确认"; chkqr.Visible = false; }
            else
                Label13.Text = "未确认";
            if (vfh == "True")
            { Label14.Text = "已发货"; chkfh.Visible = false; }
            else
                Label14.Text = "未发货";
          
            if(vyhsfzf=="True")
            { Label19.Text = "已支付"; ;chkzf.Visible = false; }
            else
                Label19.Text = "未支付";
            if (chkqr.Visible == false && chkfh.Visible == false &&chkzf.Visible == false)
            {
                btnSave.Visible = false;
            }



        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string str;
        string str1;
       
        string str3;
        if (chkqr.Checked == true)
        {

            str = "True";
       
       }
        else
        {
            if (chkqr.Visible == true)
                str = "False";
            else
                str = "True";
   
        }
        if (chkfh.Checked == true)
        {
            str1 = "True";
  
        }
        else
        {
            if (chkfh.Visible == true)
                str1 = "False";
            else
                str1 = "True";
        }
      
        if (chkzf.Checked == true)
        {
            str3 = "True";
        }
        else
        {
            if (chkzf.Visible == true)
            str3 = "False";
            else
                str3 = "True";
        }
        string vddxqid = Request.QueryString["id"].ToString();

        string sql = " update Orderxx set  sjqr='" + str + "',fh='" + str1 + "',yhsfzf='" + str3 + "' where ddxqid='" + Request.QueryString["id"].ToString() + "' ";

 DBA.ExeSql(sql);
 ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('修改成功！');location.href= 'qrkhdd.aspx';</script> ");
    

    }
}