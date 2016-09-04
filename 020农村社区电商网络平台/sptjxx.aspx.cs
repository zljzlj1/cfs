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
        toSptjxx.text = "某站点用户访问来源";
        toSptjxx.subtext = "统计调查";
        toSptjxx.name = "数据来源";
        string k1 = "直接访问";
        string k2 = "邮件营销";
        string k3 = "联盟广告";
        string k4 = "视频广告";
        string k5 = "搜索引擎";

        List<string> data1 = new List<string>();
        List<Maticsoft.ToModel.keyvalue> data2 = new List<Maticsoft.ToModel.keyvalue>();
        data1.Add(k1);
        data1.Add(k2);
        data1.Add(k3);
        data1.Add(k4);
        data1.Add(k5);
        toSptjxx.data1 = data1;

        Maticsoft.ToModel.keyvalue value1 = new Maticsoft.ToModel.keyvalue();
        value1.name = k1;
        value1.value = "335";
        data2.Add(value1);

        Maticsoft.ToModel.keyvalue value2 = new Maticsoft.ToModel.keyvalue();
        value2.name = k2;
        value2.value = "310";
        data2.Add(value2);

        Maticsoft.ToModel.keyvalue value3 = new Maticsoft.ToModel.keyvalue();
        value3.name = k3;
        value3.value = "234";
        data2.Add(value3);

        Maticsoft.ToModel.keyvalue value4 = new Maticsoft.ToModel.keyvalue();
        value4.name = k4;
        value4.value = "135";
        data2.Add(value4);

        Maticsoft.ToModel.keyvalue value5 = new Maticsoft.ToModel.keyvalue();
        value5.name = k5;
        value5.value = "1500";
        data2.Add(value5);
        toSptjxx.data2 = data2;
        return toSptjxx;
    }
    
    /*
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
    }*/
}