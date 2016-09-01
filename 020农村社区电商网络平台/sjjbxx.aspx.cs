using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sjjbxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dl();
            BindProvince();
            BindCity(bind_Province.SelectedItem.Value);
            BindBorough(bind_City.SelectedItem.Value);
            Bindzh(bind_Borough.SelectedItem.Value);
            Bindcun(bind_zh.SelectedItem.Value);
        }
    }
    public void dl()
    {
        string sql = " select sjmc, rzsj, lxdh, lxrxm, ssfid ,ssid, sxid, szid, scid,jtdz, sjtp,ktfy  from Sj where sjmc='" + Session["sjmc"] + "'";
        OleDbDataReader dr = DBA.GetDataReader(sql);
        if (dr.Read())
        {

            Label2.Text = dr["sjmc"].ToString();
            TextBox4.Text = dr["lxdh"].ToString();
            TextBox5.Text = dr["lxrxm"].ToString();
            TextBox6.Text = dr["jtdz"].ToString();
            Label1.Text = Convert.ToDateTime(dr["rzsj"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            Image1.ImageUrl = dr["sjtp"].ToString();
            Session["filename"] = dr["sjtp"].ToString();
        bind_Province.SelectedValue = dr["ssfid"].ToString();
        bind_City.SelectedValue = dr["ssid"].ToString();
        bind_Borough.SelectedValue = dr["sxid"].ToString();
        bind_zh.SelectedValue = dr["szid"].ToString();
        bind_cun.SelectedValue = dr["scid"].ToString();
        TextBox1.Text = dr["ktfy"].ToString();
        }
     

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string filename = FileUpload1.FileName;
            Session["filename"] = "~/UploadFiles/sj\\" + filename;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/sj\\" + filename));
            Image1.ImageUrl = Session["filename"].ToString();
            int filesize = FileUpload1.PostedFile.ContentLength;

            if (filesize > 1024 * 1024)
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('文件大小不能超过1M!');</script>");
                return;
            }
            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            //允许许文件的扩展名保存到数组
            string[] allowExtension = { ".jpg", ".gif", ".txt", ".xls", ".png" };
            //在数组中查找是否存在fileExtension
            if (!allowExtension.Contains(fileExtension))
            {
                ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('不允许上传该文件!');</script>");
                return;
            }

        }
        else
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", " <script> alert('没有上传的图片！');</script> ");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        decimal vktfy = Convert.ToDecimal(TextBox1.Text);
        string picture = Session["filename"].ToString();
        string strsql = "update Sj set lxdh='" + TextBox4.Text + "',lxrxm='" + TextBox5.Text + "',jtdz=  '" + TextBox6.Text + "',ssfid='" + bind_Province.SelectedItem.Value + " ', ssid='" + bind_City.SelectedItem.Value + "',sxid='" + bind_Borough.SelectedItem.Value + "',szid='" + bind_zh.SelectedItem.Value + " ',scid='" + bind_cun.SelectedItem.Value + "',sjtp='" + picture + "',ktfy='" + vktfy + "' where sjid='" + Session["sjid"].ToString() + "'";
        DBA.ExeSql(strsql);

        ClientScript.RegisterStartupScript(ClientScript.GetType(), "alert", "<script>alert('更新成功!'); </script>");
 
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
}