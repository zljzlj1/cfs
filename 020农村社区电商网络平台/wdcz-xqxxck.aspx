<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wdcz-xqxxck.aspx.cs" Inherits="wdcz_xqxxck" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>我的村庄/社区</title>
    <link href="css/wdcz.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="js/js/jquery-1.6.2.min.js" ></script>
<script type="text/javascript" src="js/js/jquery.nivo.slider.pack.js"></script>
  <script type="text/javascript">
      jQuery(function ($) {
          $(window).load(function () {
              $('#slider').nivoSlider({
                  directionNav: true,
                  captionOpacity: 0.4,
                  controlNav: true,
                  boxCols: 8,
                  boxRows: 4,
                  slices: 15,
                  effect: 'random',
                  animSpeed: 500,
                  pauseTime: 3000
              });
          });
      });
</script>
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/jquery.lavalamp.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
    


<script type="text/javascript">
    $(function () {
        $("#1, #2, #3").lavaLamp({
            fx: "backout", //缓动类型
            speed: 700, //缓动时间
            click: function (event, menuItem) {
                return true; //单击触发事件
            }
        });
    }); 
 </script>

 
<link rel="stylesheet" href="css/semantic.css" type="text/css" />
<link rel="stylesheet" href="css/zyComment.css" type="text/css" />

<style type="text/css" media="print, screen">  
label {
	font-weight: bold;
}

a {
	font-family: Microsoft YaHei;
}

#articleComment {
	width: 600px;
	margin:0 auto;
}
</style> 



</head>
<body>
    <form id="form1" runat="server">
   
    <div id="big">  
    <div id="logo">
        <div style="font-family: 黑体; font-size: 14px; padding-left: 10px; padding-top: 5px;">欢迎<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>登录--<a 
                href="tuichu.aspx"  class="tc">退出</a><br />
        <a href="index.aspx" style="font-family: 黑体; font-size: 14px; color: #000000;">返回农村电商首页</a><br />
          <a href='index.aspx' ><img src="image/logo.gif" style="width: 67px; height: 53px; margin-top: 10px; margin-left: 50px;" 
               alt="图标" /></a><br /><span  style=" padding-left: 55px;">
          <a  href='index.aspx' style="font-family: 黑体; font-size: 14px; color: #000000;">农村电商</a></span>
        
        
        </div>

     <div class="zxx_test_list">
	<ul class="lava_with_image fix" id="1">
		<li class="current"><a href="wdcz.aspx">首页</a></li>
		<li><a href="wdcz-zpxx.aspx">招聘信息</a></li>
       <li><a href="wdcz-xqxx.aspx">需求信息</a></li>
		<li><a href="wdcz-rdwz.aspx">热点文章</a></li>
	
		<li><a href="wdcz-ncpgx.aspx">农产品供需</a></li>
        	<li><a href="wdcz-ncpxq.aspx">农产品需求</a></li>
	</ul>
</div>
  
 

    </div> 
     <div id="banner">
      
<div id="slider-wrap">
  <div id="slider" class="nivoSlider">
	  <a href="#" class="nivo-imageLink">
		<img src="image/banner-2.gif" alt="" title="a" width="1323" height="172"/>
	  </a>  
       <a href="#" class="nivo-imageLink">
		<img src="image/1-1.gif" alt="" width="1323" title="b"  height="172" />
	  </a>
	

      
  </div>
</div>

        </div>
 
  
  <div class="zhong1">
  <div class="zhon"> 
  
   <table style="width: 100%; margin-top: 20px; margin-left: -30px;">
                        <tr>
                            <td align="center" class="style1">
                              <h1><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>需求</h1>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="style1" align="center">
                               <h3>&nbsp; 发表时间：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            &nbsp; 联系人：<asp:Label ID="Label2" runat="server" Text="lLabel"></asp:Label>
                               &nbsp; 联系电话：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </h3> </td>    
                            
                        </tr>
                        
                       <tr>
                   
                       <td align="center" style="padding-top: 20px">

                              <table>
                              <tr><td><b>农产品：</b></td><td><asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="True"></asp:Label></td></tr>
                              <tr><td> <b>需求数量：</b></td><td><asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Label"></asp:Label><asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Label"></asp:Label> </td></tr>
                              <tr><td><b>价格：</b></td><td><asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Label"></asp:Label><b>(元/<asp:Label
                                      ID="Label10" runat="server" Text="Label"></asp:Label>)</b></td></tr>
                              <tr><td><b>农产品类别:</b> </td><td> <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Label"></asp:Label></td></tr>
                          </table>

                       </td>
                       </tr>
                    </table>
   </div>
   <div class="you"> <h5 style="margin-top: 8px; margin-left: 20px">文章信息<a 
           href="wdcz-rdwz.aspx" style="margin-left: 140px"><img src="image/more.gif" /></a></h5>
      <ul class="ss">      <asp:Repeater ID="news" runat="server">
               <ItemTemplate><li> <a href="wdcz-ckwz.aspx?id=<%#Eval("txtid") %>&&oid=<%#Eval("wzdjl") %>" target="a"><%#Eval("titlername")%></a></li></ItemTemplate></asp:Repeater></ul>
      
        
             
             </div>
      <div class="c"></div> 
      </div>          

   
   <div id="footer">
    
     
     
     
 
 
  <div style="background-image: url('image/lava_bg-1.gif'); background-repeat: repeat;" align="center">  
      <h4 style="font-family: 微软雅黑; font-weight: bold; color: #000000;" >版权所有  <br /> </h4>
    </div>
    
         
    
   
   </div>
    </div>
    </form>
</body>
</html>


