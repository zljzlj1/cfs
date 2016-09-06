using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Services; //引入命名空间

public partial class spkc : System.Web.UI.Page
{
    public static int Vsjid; public static string Vsjmc;
    protected void Page_Load(object sender, EventArgs e)
    {
        Vsjid = int.Parse(Session["sjid"].ToString());
        Vsjmc = Session["sjmc"].ToString();
    }

    [WebMethod]
    public static Object getdata()
    {
        Dictionary<string, Object> data = new Dictionary<string, Object>();

        Maticsoft.ToModel.sptjxx tospkc = new Maticsoft.ToModel.sptjxx();
        tospkc.text = Vsjmc + "商品库存数据统计";
        tospkc.subtext = "了解库存发布状况";
        tospkc.name = "数据来源";
        Maticsoft.Service.Sp spService = new Maticsoft.Service.Sp();
        Maticsoft.Model.Sp model = new Maticsoft.Model.Sp();
        model.sjid = Vsjid;
        model.spzt = true;
        List<Maticsoft.Model.Sp> spModelList = spService.searchListByModel(model);

        List<string> data1 = new List<string>();
        List<Maticsoft.ToModel.keyvalue> data2 = new List<Maticsoft.ToModel.keyvalue>();

        if (spModelList != null)
        {
            for (int i = 0; i < spModelList.Count; i++)
            {
                Maticsoft.Model.Sp spModel = spModelList[i];

                data1.Add(spModel.spmc);

                Maticsoft.ToModel.keyvalue keyvalue = new Maticsoft.ToModel.keyvalue();
                keyvalue.name = spModel.spmc;
                double total = spModel.xssl/spModel.kcsl;
                keyvalue.value = total.ToString();
                data2.Add(keyvalue);
            }
            tospkc.data1 = data1;
            tospkc.data2 = data2;
            data.Add("result", true);
            data.Add("data", tospkc);
            return data;
        }
        else
        {
            data.Add("result", false);
            return data;
        }

    }
}