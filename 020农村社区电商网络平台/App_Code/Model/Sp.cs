using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Maticsoft.Model
{

    [Serializable]
    public partial class Sp
    {
        public Sp()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        #region Model

        /// <summary>
        /// 商品id
        /// </summary>
        private int _spid;

        public int spid
        {
            get { return _spid; }
            set { _spid = value; }
        }

        /// <summary>
        /// 商家id
        /// </summary>
        private int _sjid;

        public int sjid
        {
            get { return _sjid; }
            set { _sjid = value; }
        }

        /// <summary>
        /// 库存数量
        /// </summary>
        private double _kcsl;

        public double kcsl
        {
            get { return _kcsl; }
            set { _kcsl = value; }
        }

        /// <summary>
        /// 销售数量
        /// </summary>
        private double _xssl;

        public double xssl
        {
            get { return _xssl; }
            set { _xssl = value; }
        }

        /// <summary>
        /// 商品名称
        /// </summary>
        private string _spmc;

        public string spmc
        {
            get { return _spmc; }
            set { _spmc = value; }
        }

        /// <summary>
        /// 商品图片
        /// </summary>
        private string _sptp;

        public string sptp
        {
            get { return _sptp; }
            set { _sptp = value; }
        }

        /// <summary>
        /// 商品价格
        /// </summary>
        private double _spjg;

        public double spjg
        {
            get { return _spjg; }
            set { _spjg = value; }
        }

        /// <summary>
        /// 商品信息
        /// </summary>
        private string _spxx;

        public string spxx
        {
            get { return _spxx; }
            set { _spxx = value; }
        }

        /// <summary>
        /// 商品类别id
        /// </summary>
        private int _splbid;

        public int splbid
        {
            get { return _splbid; }
            set { _splbid = value; }
        }

        /// <summary>
        /// 销售单位
        /// </summary>
        private string _xsdw;

        public string xsdw
        {
            get { return _xsdw; }
            set { _xsdw = value; }
        }

        /// <summary>
        /// 商品上架时间
        /// </summary>
        private string _spsjsj;

        public string spsjsj
        {
            get { return _spsjsj; }
            set { _spsjsj = value; }
        }

        /// <summary>
        /// 商品状态
        /// </summary>
        private bool _spzt;

        public bool spzt
        {
            get { return _spzt; }
            set { _spzt = value; }
        }

        /// <summary>
        /// 商品下架时间
        /// </summary>
        private string _spxjsj;

        public string spxjsj
        {
            get { return _spxjsj; }
            set { _spxjsj = value; }
        }

        /// <summary>
        /// 商品点击率
        /// </summary>
        private int _spdjl;

        public int spdjl
        {
            get { return _spdjl; }
            set { _spdjl = value; }
        }


        #endregion Model
    }

}