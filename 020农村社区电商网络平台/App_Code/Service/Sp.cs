using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Model;
using System.Collections;
using System.Web.Script.Serialization;
namespace Maticsoft.Service
{

    /// <summary>
    ///Sp 的摘要说明
    /// </summary>
    public class Sp
    {
        Maticsoft.Dao.Sp spDao = new Maticsoft.Dao.Sp();
        public Sp()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        /// <summary>
        /// 获取数据列表
        /// 全部信息查询，如select * from 表名
        /// </summary>
        public List<Maticsoft.Model.Sp> searchListByModel(Maticsoft.Model.Sp model)
        {
            DataSet ds = spDao.searchbymodel(model, null, "=");
            int count = ds.Tables[0].Rows.Count;
            if (count > 0)
            {
                List<Maticsoft.Model.Sp> list = new List<Model.Sp>();
                for (int i = 0; i < count; i++)
                {
                    list.Add(spDao.DataRowToModel(ds.Tables[0].Rows[i]));
                }
                return list;
            }
            return null;
        }
        /// <summary>
        /// 增加数据
        /// 添加model信息到数据库中,如insert into 表名 （字段名，...）values （‘添加的内容’，....)
        /// </summary>
        public int insertmodel(Maticsoft.Model.Sp model)
        {
            return spDao.insertmodel(model);
        }
        /// <summary>
        /// 获取文章评论列表
        /// 根据model查询，如select * from 表名 where 字段= '查询的内容'
        /// 返回Sp
        /// </summary>
        public DataSet searchDatasetByModel(Maticsoft.Model.Sp model)
        {
            return spDao.searchbymodel(model, null, "=");
        }

        /// <summary>
        /// 根据model查询，如select * from 表名 where 字段= '查询的内容'
        /// 然后再将查询的DataSet内容转换成需要查询mode，这个model包括全部信息
        /// </summary>
        public Maticsoft.Model.Sp searchTxtplbbymodel(Maticsoft.Model.Sp model)
        {
            DataSet result = this.searchDatasetByModel(model);
            if (result.Tables[0].Rows.Count > 0)
            {
                return spDao.DataRowToModel(result.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }
        public static string ListToJson(List<Maticsoft.Model.Sp> list)
        {
            return (new JavaScriptSerializer().Serialize(list)).ToString();
        }
    }
}