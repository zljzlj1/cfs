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
        private string _text;

        /// <summary>
        /// 图表标题
        /// </summary>
        public string text
        {
            get { return _text; }
            set { _text = value; }
        }

        /// <summary>
        /// 图表介绍
        /// </summary>
        private string _subtext;

        /// <summary>
        /// 图表介绍
        /// </summary>
        public string subtext
        {
            get { return _subtext; }
            set { _subtext = value; }
        }

        /// <summary>
        /// 详请标题
        /// </summary>
        private string _name;

        /// <summary>
        /// 详请标题
        /// </summary>
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        /// <summary>
        /// 数据1
        /// </summary>
        private List<string> _data1;

        /// <summary>
        /// 数据1
        /// </summary>
        public List<string> data1
        {
            get { return _data1; }
            set { _data1 = value; }
        }

        /// <summary>
        /// 数据2
        /// </summary>
        private List<Maticsoft.ToModel.keyvalue> _data2;

        /// <summary>
        /// 数据2
        /// </summary>
        public List<Maticsoft.ToModel.keyvalue> data2
        {
            get { return _data2; }
            set { _data2 = value; }
        }

    


    

        #endregion Model

    }
}