﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ncpxxxx : System.Web.UI.Page
{
    DBAccess1 DBA = new DBAccess1();
    protected void Page_Load(object sender, EventArgs e)
    {

        string vncpid = Request["id"].ToString();
        string str = "select rcpname,tgsl,xqdw,price,xxxx,ncpname,fbrq,rcppic,Username,lxdh from Ncpinfor,[User],Ncplb where  Ncpinfor.UserID=[User].UserID and Ncpinfor.ncplbid=Ncplb.ncplbid and ncpid='" + vncpid + "'";
        OleDbDataReader dr = DBA.GetDataReader(str);
        if (dr.Read())
        {
            Label1.Text = Convert.ToDateTime(dr["fbrq"].ToString()).ToString("yyyy-MM-dd HH:mm:ss");
            Label2.Text = dr["rcpname"].ToString();
            Label3.Text = dr["tgsl"].ToString();
            Label4.Text = dr["ncpname"].ToString();
            string t = dr["price"].ToString();
            if(t=="0.00")
                Label5.Text = "面议";
            else
            Label5.Text = dr["price"].ToString();
            Label6.Text = dr["Username"].ToString();
            Label7.Text = dr["lxdh"].ToString();
            Label8.Text = dr["xxxx"].ToString();
            Label9.Text = dr["xqdw"].ToString();
            Label10.Text = dr["xqdw"].ToString();
           Image1.ImageUrl = dr["rcppic"].ToString() ;
        }
    }
}