using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;






public partial class zhuce : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.FindControl("LoginControl1").Visible=false;
        Page.Master.FindControl("Left1").Visible = false;
      
        if (!IsPostBack)
        {

            BindProvince();
            BindCity(bind_Province.SelectedItem.Value);
            BindBorough(bind_City.SelectedItem.Value);
            Bindzh(bind_Borough.SelectedItem.Value);
            Bindcun(bind_zh.SelectedItem.Value);

        }
    }
    private void BindProvince()
    {

        string sql = "select sfid,sf from Adsf";

        DataSet ds = DBA.GetDataSet(sql);

        bind_Province.DataSource = ds.Tables["datatable"].DefaultView;
        bind_Province.DataValueField = "sfid";
        bind_Province.DataTextField = "Sf";
        bind_Province.DataBind();




    }
    private void BindCity(string code)
    {
        string provinceCode = code;
        string sql = "select sid, sm,Ads.sfid from  Ads  left join Adsf on  Adsf.sfid=Ads.sfid where Ads.sfid='" + provinceCode + "'";
        //省份和城市进行关联

        DataSet ds = DBA.GetDataSet(sql);

        bind_City.DataSource = ds.Tables["datatable"].DefaultView;
        bind_City.DataValueField = "sid";
        bind_City.DataTextField = "sm";
        bind_City.DataBind();

    }

    private void BindBorough(string code)
    {
        string cityCode = code;
        //城市和地区进行关联
        string sql = "select xid,xm ,Adx.sid from Adx left join Ads on Ads.sid=Adx.sid where  Adx.sid='" + cityCode + "'";

        DataSet ds = DBA.GetDataSet(sql);

        bind_Borough.DataSource = ds.Tables["datatable"].DefaultView;
        bind_Borough.DataValueField = "xid";
        bind_Borough.DataTextField = "xm";
        bind_Borough.DataBind();
    }
    private void Bindzh(string code)
    {
        string zhCode = code;
        //城市和地区进行关联
        string sql = "select zid,zm,Adz.xid from Adz  left join Adx on Adz.xid=Adx.xid where Adz.xid='" + zhCode + "'";

        DataSet ds = DBA.GetDataSet(sql);

        bind_zh.DataSource = ds.Tables["datatable"].DefaultView;
        bind_zh.DataValueField = "zid";
        bind_zh.DataTextField = "zm";
        bind_zh.DataBind();
    }
    private void Bindcun(string code)
    {
        string cunCode = code;
        //城市和地区进行关联
        string sql = "select cid,cm ,Adc.zid from Adc  left join Adz on Adc.zid=Adz.zid where Adc.zid='" + cunCode + "'";

        DataSet ds = DBA.GetDataSet(sql);

        bind_cun.DataSource = ds.Tables["datatable"].DefaultView;
        bind_cun.DataValueField = "cid";
        bind_cun.DataTextField = "cm";
        bind_cun.DataBind();
    }

    protected void bind_City_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindBorough(bind_City.SelectedItem.Value);
        Bindzh(bind_Borough.SelectedItem.Value);
        Bindcun(bind_zh.SelectedItem.Value);
    }

    protected void bind_Province_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCity(bind_Province.SelectedItem.Value);
        BindBorough(bind_City.SelectedItem.Value);
        Bindzh(bind_Borough.SelectedItem.Value);
        Bindcun(bind_zh.SelectedItem.Value);

    }
    protected void bind_Borough_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        Bindzh(bind_Borough.SelectedItem.Value);
        Bindcun(bind_zh.SelectedItem.Value);
    }
    protected void bind_zh_SelectedIndexChanged(object sender, EventArgs e)
    {

        Bindcun(bind_zh.SelectedItem.Value);
    
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {





        string strSQL = "SELECT * FROM [User]  Where Username='" + TextBox1.Text.ToString() + "'";
        DataSet ds = DBA.GetDataSet(strSQL);
        if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
        {

            string strsql = "insert into [User] (Username,mm,lxdh,yb,sfid,sid,xid,zid,cid,Jtdz,truename) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" +
              TextBox5.Text + "',' "+bind_Province.SelectedItem.Value+" ','"+ bind_City.SelectedItem.Value+"','"+ bind_Borough.SelectedItem.Value +"','"+ bind_zh.SelectedItem.Value+" ','"+ bind_cun.SelectedItem.Value+"','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            DBA.ExeSql(strsql);
             Session["Username"] = TextBox1.Text;
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('注册成功!');location.href= 'index.aspx ' ; </script>");
       TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        bind_Province.SelectedIndex=0;
        bind_City.SelectedIndex = 0;
        bind_Borough.SelectedIndex = 0;
        bind_zh.SelectedIndex = 0;
        bind_cun.SelectedIndex = 0;
        }
        else
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('用户名已存在，注册失败,请重新注册!');</script>");
        }

       
    

        
        
       
    }


   

}