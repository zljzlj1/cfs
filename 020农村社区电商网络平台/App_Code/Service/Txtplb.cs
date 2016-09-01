using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Model;
using System.Collections;
using System.Web.Script.Serialization;
namespace Maticsoft.Service
{
    /// <summary>
    /// Adnmin
    /// </summary>
    public partial class Txtplb
    {
        Maticsoft.Dao.Txtplb txtplbDao = new Maticsoft.Dao.Txtplb();
        public Txtplb()
        { }
        #region  Method
        /// <summary>
        /// 获取文章评论列表
        /// 全部信息查询，如select * from 表名
        /// </summary>
        public List<Maticsoft.Model.Txtplb> searchListByModel(Maticsoft.Model.Txtplb model)
        {
            DataSet ds = txtplbDao.searchbymodel(model, null, "=");
            int count = ds.Tables[0].Rows.Count;
            if (count > 0)
            {
                List<Maticsoft.Model.Txtplb> list = new List<Model.Txtplb>();
                for (int i = 0; i < count; i++)
                {
                    list.Add(txtplbDao.DataRowToModel(ds.Tables[0].Rows[i]));
                }
                return list;
            }
            return null;
        }
        /// <summary>
        /// 发表评论
        /// 添加model信息到数据库中,如insert into 表名 （字段名，...）values （‘添加的内容’，....)
        /// </summary>
        public int insertmodel(Maticsoft.Model.Txtplb model)
        {
            return txtplbDao.insertmodel(model);
        }
        /// <summary>
        /// 获取文章评论列表
        /// 根据model查询，如select * from 表名 where 字段= '查询的内容'
        /// 返回Txtplb
        /// </summary>
        public DataSet searchDatasetByModel(Maticsoft.Model.Txtplb model)
        {
            return txtplbDao.searchbymodel(model, null, "=");
        }

        /// <summary>
        /// 根据model查询，如select * from 表名 where 字段= '查询的内容'
        /// 然后再将查询的DataSet内容转换成需要查询mode，这个model包括全部信息
        /// </summary>
        public Maticsoft.Model.Txtplb searchTxtplbbymodel(Maticsoft.Model.Txtplb model)
        {
            DataSet result = this.searchDatasetByModel(model);
            if (result.Tables[0].Rows.Count > 0)
            {
                return txtplbDao.DataRowToModel(result.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }
        public static string ListToJson(List<Maticsoft.Model.Txtplb> list)
        {
            return (new JavaScriptSerializer().Serialize(list)).ToString();
        }
        #endregion  Method

    }
}