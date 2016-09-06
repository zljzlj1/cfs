<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wdcz.aspx.cs" Inherits="wdcz" %>

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
 
    <div id="middle">
    <div id="left">
    <h5 style="margin-top: 8px; margin-left: 20px">招聘信息<a href="wdcz-zpxx.aspx" 
            style="margin-left: 60px"><img src="image/more.gif" /></a></h5>
      <ul class="ass">      <asp:Repeater ID="news" runat="server">
               <ItemTemplate>
           <li><a href="wdcz-zpxx-ck.aspx?id=<%#Eval("xqid") %>"><%#Eval("sjmc") %>：<%#Eval("zpgw") %><%#Eval("fbsj", "{0:yyyy-MM-dd HH:mm:ss}")%></a></li>
               </ItemTemplate></asp:Repeater></ul>
      
      
         </div>
  <div id="mid">
 <h5 style="margin-top: 8px; margin-left: 25px">商家需求信息<a href="wdcz-xqxx.aspx" 
         style="margin-left: 20px"><img src="image/more.gif" /></a></h5>
  <ul class="sss"><asp:Repeater ID="news2" runat="server"><ItemTemplate><li><a href="wdcz-xqxxck.aspx?id=<%#Eval("xqid") %>">商家:<%#Eval("sjmc") %>  农产品:<%#Eval("rcpxqmc")%> 需求数量：<%#Eval("rcpxqsl")%><%#Eval("xqdw")%>价格:<%#Eval("jg").ToString().Trim()=="0"?"面议":Eval("jg")%> (元/<%#Eval("xqdw") %>)发布时间:<span style="margin-left: 20px"><%#Eval("fbsj", "{0:yyyy-MM-dd HH:mm:ss}")%></span></a></li></ItemTemplate></asp:Repeater></ul>
</div>
     <div id="right">   
     <h5 style="margin-top: 8px; margin-left: 50px">最新文章排行</h5>
           <ul class="s"><asp:Repeater ID="news1" runat="server"><ItemTemplate><li><a href="wdcz-ckwz.aspx?id=<%#Eval("txtid")%>&&oid=<%#Eval("wzdjl") %>" target="a"><%#Eval("titlername")%></a></li></ItemTemplate></asp:Repeater></ul>
                   </div>
                 
     <div class="c"></div>
       
    </div>
    <div id="footer">
    
     
     
     
 
 
  <div style="position: relative; top: 40px;background-image: url('image/lava_bg-1.gif'); background-repeat: repeat;" align="center">  
      <h4 style="font-family: 微软雅黑; font-weight: bold; color: #000000;" >版权所有  <br /> </h4>
    </div>
    
         
    
   
   </div>
    </div>
    </form>
</body>
</html>
