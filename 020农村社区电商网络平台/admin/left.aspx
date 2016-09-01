<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="admin_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理系统</title>
    <script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>

<style type="text/css">
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	background-image: url('images/menu_bgS.gif');
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">基本配置</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
                                        <li><a href="tjdz.aspx"  target="mainFrame">添加地址</a></li>
                                        <li><a href="xgdz.aspx" target="mainFrame">修改省份</a></li>
                                       <li><a href="xgsdz.aspx" target="mainFrame">修改市名</a></li>
                                      <li><a href="xgxdz.aspx" target="mainFrame">修改县名</a></li>
                                      <li><a href="xgzdz.aspx" target="mainFrame">修改镇名</a></li>
                                        <li><a href="xgcdz.aspx" target="mainFrame">修改村名</a></li>
                                        <li><a href="jbxx.aspx" target="mainFrame">基本信息</a></li>
                                         <li><a href="xgmm.aspx" target="mainFrame">修改密码</a></li>
       </ul>
       </div>
                 <%if (Session["bz"].ToString() == "y")
            {%> <h1 class="type"><a href="javascript:void(0)">管理员管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
             <li> <a href="tjgly.aspx" target="mainFrame">添加管理员</a></li>
                                        <li><a href="glyxx.aspx" target="mainFrame">管理员信息</a></li>

       </ul>
      </div><%} %>
               <h1 class="type"><a href="javascript:void(0)">用户管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM"> 
         <li><a href="yhxx.aspx" target="mainFrame">用户信息</a></li>
                                        <li><a href="shwz.aspx" target="mainFrame">审核文章</a></li>
                                         <li><a href="tgwz.aspx" target="mainFrame">已审文章</a></li>
                                            <li><a href="userorder.aspx" target="mainFrame">订单状况</a></li>
                                            
       </ul>
      </div>
               

            <h1 class="type"><a href="javascript:void(0)">商家管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
                                                
                                         <li> <a href="zjsj.aspx" target="mainFrame">添加商家</a></li>
                                          <li> <a href="sjxx.aspx" target="mainFrame">商家信息</a></li>
                                                 <li> <a href="sjorder.aspx" target="mainFrame">订单核对</a></li>
       </ul>
      </div>

     <h1 class="type"><a href="javascript:void(0)">其他配置</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">                                                          
 
                                        <li><a href="splb.aspx" target="mainFrame">商品种类</a></li>
                                        <li><a href="ncp.aspx" target="mainFrame">农产品种类</a></li>

       </ul>
      </div>
        <script type="text/javascript">
            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');

            var myAccordion = new fx.Accordion(
			toggles, contents, { opacity: true, duration: 400 }
		);
            myAccordion.showThisHideOpen(contents[0]);
	</script>
        </div></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
