using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_tjdz : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.BackColor = System.Drawing.Color.Transparent;
        TextBox2.BackColor = System.Drawing.Color.Transparent;
        TextBox3.BackColor = System.Drawing.Color.Transparent;
        TextBox4.BackColor = System.Drawing.Color.Transparent;
        TextBox5.BackColor = System.Drawing.Color.Transparent;
        if (!IsPostBack)
        {

            BindProvince();
            BindCity();
            BindBorough();
            Bindzh();
        }
    }
    private void BindProvince()
    {

        string sql = "select sfid,sf from Adsf";
        DataSet ds = DBA.GetDataSet(sql);
        DropDownList1.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList1.DataValueField = "sfid";
        DropDownList1.DataTextField = "Sf";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "请选择省份");
        DropDownList1.Items[0].Value = "0";

    }
    private void BindCity()
    {
        string sql = "select sid,sm from Ads";
        DataSet ds = DBA.GetDataSet(sql);
        DropDownList2.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList2.DataValueField = "sid";
        DropDownList2.DataTextField = "sm";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "请选择市名");
        DropDownList2.Items[0].Value = "0";
    }
    private void BindBorough()
    {
        string sql = "select xid,xm from Adx";
        DataSet ds = DBA.GetDataSet(sql);
        DropDownList3.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList3.DataValueField = "xid";
        DropDownList3.DataTextField = "xm";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, "请选择县名");
        DropDownList3.Items[0].Value = "0";
    }
    private void Bindzh()
    {
        string sql = "select zid,zm from Adz";
        DataSet ds = DBA.GetDataSet(sql);
        DropDownList4.DataSource = ds.Tables["datatable"].DefaultView;
        DropDownList4.DataValueField = "zid";
        DropDownList4.DataTextField = "zm";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, "请选择镇名");
        DropDownList4.Items[0].Value = "0";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "" || TextBox1.Text == null)
        {
            Label1.Visible = true;
            Label1.Text = "请输入省份，长度1-15";

        }
        else
        {
            Label1.Visible = false;
            string strSQL = "SELECT SF FROM  Adsf  Where SF='" + TextBox1.Text.ToString() + "'";
            DataSet ds = DBA.GetDataSet(strSQL);
            if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
            {
                string strsql = "insert into Adsf  (Sf) values('" + TextBox1.Text + "')";
                DBA.ExeSql(strsql);
                TextBox1.Text = null;
                BindProvince();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加成功！');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加失败，该地址已存在，请重新添加！');", true);

            }
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
       if(DropDownList1.SelectedItem.Value=="0")
        {
            Label2.Visible = true;
         Label2.Text = "请选择省份";
        } 
      else if (TextBox2.Text == "" || TextBox2.Text == null)
        {
            Label2.Visible = true;
            Label2.Text = "请输入市名，长度1-15";

        }
        else 
        {
            Label2.Visible = false;

            string strSQL = "SELECT sm FROM  Ads  Where sm='" + TextBox2.Text.ToString() + "'";
            DataSet ds = DBA.GetDataSet(strSQL);
            if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
            {
                string vsfid = DropDownList1.SelectedItem.Value;
                string strsql = "insert into Ads  (sm,sfid) values('" + TextBox2.Text + "','" + vsfid + "')";
                DBA.ExeSql(strsql);
                TextBox2.Text = null;

                DropDownList1.SelectedIndex = 0;
                BindCity();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加成功！');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加失败，该地址已存在，请重新添加！');", true);

            }

        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList2.SelectedValue=="0")
        {
            Label3.Visible = true;
            Label3.Text = "请输入市名";
        
        }

        else if (TextBox3.Text == "" || TextBox3.Text == null)
        {
            Label3.Visible = true;
            Label3.Text = "请输入县名,长度为1-15";

        }
        else
        {
            Label3.Visible = false;
            string strSQL = "SELECT xm FROM  Adx  Where xm='" + TextBox3.Text.ToString() + "'";
            DataSet ds = DBA.GetDataSet(strSQL);
            if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
            {
                string vsid = DropDownList2.SelectedItem.Value;
                string strsql = "insert into Adx  (xm,sid) values('" + TextBox3.Text + "','" + vsid + "')";
                DBA.ExeSql(strsql);
                TextBox3.Text = null;

                DropDownList2.SelectedIndex = 0;
                BindBorough();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加成功！');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加失败，该地址已存在，请重新添加！');", true);
            
            }

        }
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList3.SelectedValue == "0")
        {
            Label4.Visible = true;
            Label4.Text = "请输入县名";
        }
        else if (TextBox4.Text == "" || TextBox4.Text == null)
        {
            Label4.Visible = true;
            Label4.Text = "请输入镇名,长度为1-15";

        }
        else
        {
            Label4.Visible = false;
            string strSQL = "SELECT zm FROM  Adz  Where zm='" + TextBox4.Text.ToString() + "'";
            DataSet ds = DBA.GetDataSet(strSQL);
            if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
            {
                string vxid = DropDownList3.SelectedItem.Value;
                string strsql = "insert into Adz  (zm,xid) values('" + TextBox4.Text + "','" + vxid + "')";
                DBA.ExeSql(strsql);
                TextBox4.Text = null;

                DropDownList3.SelectedIndex = 0;
                Bindzh(); ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加成功！');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加失败，该地址已存在，请重新添加！');", true);
            
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList4.SelectedValue == "0")
        {
            Label5.Visible = true;
            Label5.Text = "请输入镇名";
        }

        else if (TextBox5.Text == "" || TextBox5.Text == null)
        {
            Label5.Visible = true;
            Label5.Text = "请输入村名,长度为1-15";

        }
        else
        {
            Label5.Visible = false;
            string strSQL = "SELECT cm FROM  Adc  Where cm='" + TextBox5.Text.ToString() + "'";
            DataSet ds = DBA.GetDataSet(strSQL);
            if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
            {
                string vzid = DropDownList4.SelectedItem.Value;
                string strsql = "insert into Adc  (cm,zid) values('" + TextBox5.Text + "','" + vzid + "')";
                DBA.ExeSql(strsql);
                TextBox5.Text = null;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加成功！');", true);
                DropDownList4.SelectedIndex = 0;


            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('添加失败，该地址已存在，请重新添加！');", true);
     
            }
        }
    }
}