using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin_tjgly : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {if (DropDownList1.SelectedValue == "0")
        {
           
            Label1.Visible = true;
            Label1.Text = "请选择管理员权限";
        }
       
            else 
    {
                Label1.Visible = false;
        
             string sq = " select * from Admin where adminname='" + TextBox1.Text + "' ";
               DataSet ds = DBA.GetDataSet(sq);
               if (ds.Tables[0].Rows.Count == 0 || ds.Tables[0].Rows.Count == null)
               {
                   string sql = " insert into Admin (adminname,bz) values('" + TextBox1.Text + "','"+ DropDownList1.SelectedItem.Text+"')";
                   DBA.ExeSql(sql);

             ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('管理员添加成功！');", true);
             TextBox1.Text = "";
             DropDownList1.SelectedIndex = 0;

               }
               else
                 ScriptManager.RegisterStartupScript(this, this.GetType(), "test", "alert('管理员已存在，注册失败,请重新注册！');", true);
               }

    }
}