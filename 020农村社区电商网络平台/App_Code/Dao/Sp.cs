using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;
using System.Collections.Generic;
namespace Maticsoft.Dao
{


    public class Sp
    {
        public Sp()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        #region  Method
        public string GetTablename()
        {
            string className = this.GetType().FullName;
            className = className.Substring(className.LastIndexOf(".") + 1);
            return className;
        }
        DBAccess1 DBA = new DBAccess1();

        public DataSet searchbymodel(Maticsoft.Model.Sp model, string orderby, string option)
        {
            StringBuilder strSql = new StringBuilder();
            Util dbc = new Util();
            strSql.Append("select * from " + GetTablename() + " where 1=1 ");
            string s = "";
            if (model != null)
            {
                if (model.spid > 0)
                {
                    strSql = dbc.optiontosql(strSql, "spid", model.spid.ToString(), option);
                }
                if (model.sjid > 0)
                {
                    strSql = dbc.optiontosql(strSql, "sjid", model.sjid.ToString(), option);
                }
                if (model.kcsl > 0)
                {
                    strSql = dbc.optiontosql(strSql, "kcsl", model.kcsl.ToString(), option);
                }
                if (model.xssl > 0)
                {
                    strSql = dbc.optiontosql(strSql, "xssl", model.xssl.ToString(), option);
                }
                if (model.spmc != null && model.spmc.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "spmc", model.spmc.ToString(), option);
                }
                if (model.sptp != null && model.sptp.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "sptp", model.sptp.ToString(), option);
                }
                if (model.spjg > 0)
                {
                    strSql = dbc.optiontosql(strSql, "spjg", model.spjg.ToString(), option);
                }
                if (model.spxx != null && model.spxx.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "spxx", model.spxx.ToString(), option);
                }
                if (model.splbid > 0)
                {
                    strSql = dbc.optiontosql(strSql, "splbid", model.splbid.ToString(), option);
                }
                if (model.xsdw != null && model.xsdw.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "xsdw", model.xsdw.ToString(), option);
                }
                if (model.spsjsj != null && model.spsjsj.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "spsjsj", model.spsjsj.ToString(), option);
                }
                if (model.spzt != null && model.spzt.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "spzt", model.spzt.ToString(), option);
                }
                if (model.spxjsj != null && model.spxjsj.ToString() != "")
                {
                    strSql = dbc.optiontosql(strSql, "spxjsj", model.spxjsj.ToString(), option);
                }
                if (model.spdjl > 0)
                {
                    strSql = dbc.optiontosql(strSql, "spdjl", model.spdjl.ToString(), option);
                }
            }
            s = strSql.ToString();
            if (orderby != null && orderby != "")
            {
                string[] a = orderby.Split('.');
                s = s + " order by " + a[0].ToString() + " " + a[1].ToString();
            }
            return DBA.GetDataSet(s.ToString());
        }
        public int insertmodel(Maticsoft.Model.Sp model)
        {
            StringBuilder strSql = new StringBuilder();
            StringBuilder strSql1 = new StringBuilder();
            StringBuilder strSql2 = new StringBuilder();
            if (model.spid > 0)
            {
                strSql1.Append("spid,");
                strSql2.Append("'" + model.spid + "',");
            }
            if (model.sjid > 0)
            {
                strSql1.Append("sjid,");
                strSql2.Append("'" + model.sjid + "',");
            }
            if (model.kcsl > 0)
            {
                strSql1.Append("kcsl,");
                strSql2.Append("'" + model.kcsl + "',");
            }
            if (model.xssl > 0)
            {
                strSql1.Append("xssl,");
                strSql2.Append("'" + model.xssl + "',");
            }
            if (model.spmc != null && model.spmc.ToString() != "")
            {
                strSql1.Append("spmc,");
                strSql2.Append("'" + model.spmc + "',");
            }
            if (model.sptp != null && model.sptp.ToString() != "")
            {
                strSql1.Append("sptp,");
                strSql2.Append("'" + model.sptp + "',");
            }
            if (model.spjg > 0)
            {
                strSql1.Append("spjg,");
                strSql2.Append("'" + model.spjg + "',");
            }
            if (model.spxx != null && model.spxx.ToString() != "")
            {
                strSql1.Append("spxx,");
                strSql2.Append("'" + model.spxx + "',");
            }
            if (model.splbid > 0)
            {
                strSql1.Append("splbid,");
                strSql2.Append("'" + model.splbid + "',");
            }
            if (model.xsdw != null && model.xsdw.ToString() != "")
            {
                strSql1.Append("xsdw,");
                strSql2.Append("'" + model.xsdw + "',");
            }
            if (model.spsjsj != null && model.spsjsj.ToString() != "")
            {
                strSql1.Append("spsjsj,");
                strSql2.Append("'" + model.spsjsj + "',");
            }
            if (model.spzt != null && model.spzt.ToString() != "")
            {
                strSql1.Append("spzt,");
                strSql2.Append("'" + model.spzt + "',");
            }
            if (model.spxjsj != null && model.spxjsj.ToString() != "")
            {
                strSql1.Append("spxjsj,");
                strSql2.Append("'" + model.spxjsj + "',");
            }
            if (model.spdjl > 0)
            {
                strSql1.Append("spdjl,");
                strSql2.Append("'" + model.spdjl + "',");
            }
            strSql.Append("insert into " + GetTablename() + "(");
            strSql.Append(strSql1.ToString().Remove(strSql1.Length - 1));
            strSql.Append(")");
            strSql.Append(" values (");
            strSql.Append(strSql2.ToString().Remove(strSql2.Length - 1));
            strSql.Append(")");
            return DBA.ExeSqlRows(strSql.ToString());
        }
        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Maticsoft.Model.Sp DataRowToModel(DataRow row)
        {
            Maticsoft.Model.Sp model = new Maticsoft.Model.Sp();
            if (row != null)
            {
                if (row["spid"] != null && row["spid"].ToString() != "")
                {
                    model.spid = int.Parse(row["spid"].ToString());
                }
                if (row["sjid"] != null && row["sjid"].ToString() != "")
                {
                    model.sjid = int.Parse(row["sjid"].ToString());
                }
                if (row["kcsl"] != null && row["kcsl"].ToString() != "")
                {
                    model.kcsl = double.Parse(row["kcsl"].ToString());
                }
                if (row["xssl"] != null && row["xssl"].ToString() != "")
                {
                    model.xssl = double.Parse(row["xssl"].ToString());
                }
                if (row["spmc"] != null)
                {
                    model.spmc = row["spmc"].ToString();
                }
                if (row["sptp"] != null)
                {
                    model.sptp = row["sptp"].ToString();
                }
                if (row["spjg"] != null && row["spjg"].ToString() != "")
                {
                    model.spjg = double.Parse(row["spjg"].ToString());
                }
                if (row["spxx"] != null)
                {
                    model.spxx = row["spxx"].ToString();
                }
                if (row["splbid"] != null && row["splbid"].ToString() != "")
                {
                    model.splbid = int.Parse(row["splbid"].ToString());
                }
                if (row["xsdw"] != null)
                {
                    model.xsdw = row["xsdw"].ToString();
                }
                if (row["spsjsj"] != null)
                {
                    model.spsjsj = row["spsjsj"].ToString();
                }
                if (row["spzt"] != null && row["spzt"].ToString() != "")
                {
                    model.spzt = Convert.ToBoolean(row["spzt"].ToString());
                }
                if (row["spxjsj"] != null)
                {
                    model.spxjsj = row["spxjsj"].ToString();
                }
                if (row["spdjl"] != null && row["spdjl"].ToString() != "")
                {
                    model.spdjl = int.Parse(row["spdjl"].ToString());
                }
            }
            return model;
        }
        #endregion  Method
    }
}