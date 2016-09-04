using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Services; //引入命名空间

public partial class sptjxx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static Object getdata()
    {
        Maticsoft.ToModel.sptjxx toSptjxx = new Maticsoft.ToModel.sptjxx();
        toSptjxx.title = "男女比例分布";

        List<Maticsoft.ToModel.keyvalue> context = new List<Maticsoft.ToModel.keyvalue>();
        Maticsoft.ToModel.keyvalue a = new Maticsoft.ToModel.keyvalue();
        a.name = "男";
        a.value = "550";
        context.Add(a);

        Maticsoft.ToModel.keyvalue a1 = new Maticsoft.ToModel.keyvalue();
        a1.name = "女";
        a1.value = "450";
        context.Add(a1);
        toSptjxx.context = context;

        toSptjxx.total = "1000";

        return toSptjxx;
    }
}