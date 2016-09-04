using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Maticsoft.ToModel
{

    [Serializable]
    public partial class keyvalue
    {
        public keyvalue()
        { }
        #region Model

        /// <summary>
        /// 名称
        /// </summary>
        private string _name;

        /// <summary>
        /// 名称
        /// </summary>
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        /// <summary>
        /// 值
        /// </summary>
        private string _value;

        /// <summary>
        /// 值
        /// </summary>
        public string value
        {
            get { return _value; }
            set { _value = value; }
        }
        #endregion Model

    }
}