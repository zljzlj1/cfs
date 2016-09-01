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
    public string order;

    public string sjmc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            repeat();

        }
        if (chkqr.Checked == true)
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
            Label15.Text = "已自提";
        }
        else
        {
            Label15.Text = "未自提";
        }
        if (chkzf.Checked == true)
        {
            Label15.Text = "已支付";
        }
        else
        {
            Label15.Text = "未支付";
        }
    }
    protected void repeat()
    {
        string vddxqid = Request.QueryString["id"].ToString();
        string vddid = Request.QueryString["oid"].ToString();
        order = vddid;
        string strSQ = "select recepost ,receadress,recephone, receman,tyjg, Orderxx.ddid,gmrq,spmc,num,SP.spjg,sjqr,fh,sfzf,ddhd from Sp ,Sj,Orderxx,[Order] where  Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid and  ddxqid='" + vddxqid + "'   ";
        //select   Orderxx.ddid,gmrq,spmc,num,SP.spjg,ktfy,ddxqid,sjqr,fh,sfzf,ddhd from Sp ,Sj,Orderxx,[Order] where Orderxx.sjid=Sj.sjid and Sp.spid=Orderxx.spid and Sp.sjid=Sj.sjid and Orderxx.ddid=[Order].ddid and Sj.sjid='1' order by gmrq desc  ;
        OleDbDataReader dr = DBA.GetDataReader(strSQ);
        if (dr.Read())
        {
            order = dr["ddid"].ToString();
            sjmc = dr["sjmc"].ToString();
            Label18.Text = Convert.ToDateTime(dr["gmrq"].ToString()).ToString("yyyy-MM-dd hh:mm:ss");
            Label9.Text = dr["spmc"].ToString();
       
            Label10.Text = dr["num"].ToString();
            Label11.Text = dr["spjg"].ToString();
            Label12.Text = dr["tyjg"].ToString();
            Label5.Text = dr["receman"].ToString();
            Label6.Text = dr["recephone"].ToString();
            Label7.Text = dr["receadress"].ToString();
            Label8.Text = dr["recepost"].ToString();








        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string str;
        string str1;
        string str2;
        string str3;
        if (chkqr.Checked == true)
        {
            str = "True";
       
       }
        else
        {
            str = "False";
   
        }
        if (chkfh.Checked == true)
        {
            str1 = "True";
  
        }
        else
        {
            str1 = "False";
        }
        if (chkhd.Checked == true)
        {
            str2 = "True";
        }
        else
        {
            str2 = "False";
        }
        if (chkzf.Checked == true)
        {
            str3 = "True";
        }
        else
        {
            str3 = "False";
        }

        string sql = " update Orderxx set  sjqr='" + str + "',fh='" + str1 + "',ddhd='" + str2 + "',yhsfzf='" + str3 + "' where ddxqid='" + Request.QueryString["id"].ToString() + "' ";




        Response.Write("<script>alert('修改成功！')</script>");

    }
}