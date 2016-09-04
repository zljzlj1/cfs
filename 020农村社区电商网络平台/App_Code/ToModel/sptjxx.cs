using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Maticsoft.ToModel
{

    [Serializable]
    public partial class sptjxx
    {
        public sptjxx()
        { }
        #region Model

        /// <summary>
        /// 图表标题
        /// </summary>
        private string _title;

        /// <summary>
        /// 图表标题
        /// </summary>
        public string title
        {
            get { return _title; }
            set { _title = value; }
        }

        /// <summary>
        /// 内容
        /// </summary>
        private List<Maticsoft.ToModel.keyvalue> _context;

        /// <summary>
        /// 内容
        /// </summary>
        public List<Maticsoft.ToModel.keyvalue> context
        {
            get { return _context; }
            set { _context = value; }
        }

        /// <summary>
        /// 总计
        /// </summary>
        private string _total;

        /// <summary>
        /// 总计
        /// </summary>
        public string total
        {
            get { return _total; }
            set { _total = value; }
        }

        #endregion Model

    }
}