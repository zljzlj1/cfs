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
        toSptjxx.text = "商品购买数量统计";
        toSptjxx.subtext = "为了增加销售量,需要把商品的购买的数量进行统计";
        toSptjxx.name = "数据来源";
        Maticsoft.Service.Sp spService = new Maticsoft.Service.Sp();
        Maticsoft.Model.Sp model = new Maticsoft.Model.Sp();
        model.sjid = 1;
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
                keyvalue.value = spModel.xssl.ToString();
                data2.Add(keyvalue);
            }
        }
        toSptjxx.data1 = data1;
        toSptjxx.data2 = data2;
        return toSptjxx;
    }

}