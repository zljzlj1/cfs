<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wdcz-ncpxq-ckxx.aspx.cs" Inherits="wdcz_ncpxq_ckxx" %>

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



    <style type="text/css">
     
         a{ color:black; text-decoration:none;}
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
  <div class="zhong"> <h5 style="margin-top: 2px; margin-left: 35px"><img src="image/ph.gif" /> 
      农产品需求信息</h5>
  
    <table style="width:820px; height: 500px; margin-left: 80px;">
        <tr>
                <td align="left">
                    农产品需求信息</td>
              
            </tr>
                <tr>
                <td class="style5" align="left">
                    发布时间：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr>
                <td class="style5" align="left">
                    农产品名称：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
             </tr>  
              <tr>
                <td class="style4" align="left">
                    农产品数量： <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr><td class="style5" align="left">农产品类别:  <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td></tr>
         <tr>
            <td class="style5" align="left">
                    农产品价格: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                       (元/ <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>)</td>
           
            </tr>
                <tr>
            <td class="style5" align="left">
                    发布人:  <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
            
            </tr>
                   <tr>
            <td class="style5" align="left">
                    联系电话:  <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
         
            </tr>
           
            <tr>
            <td class="style5">
                   <a href="wdcz-ncpxq.aspx">返回</a>  </td>
            
            </tr>
        </table>
   </div>
   <div class="you"> <h5 style="margin-top: 8px; margin-left: 20px">招聘信息<a 
           href="wdcz-zpxx.aspx" style="margin-left: 140px"><img src="image/more.gif" /></a></h5>
      <ul class="ss">      <asp:Repeater ID="news" runat="server">
               <ItemTemplate>
          <li><a href="wdcz-zpxx-ck.aspx?id=<%#Eval("xqid") %>"><%#Eval("sjmc") %>：<span ><%#Eval("zpgw") %><%#Eval("fbsj", "{0:yyyy-MM-dd HH:mm:ss}")%></span></a></li>
               </ItemTemplate></asp:Repeater></ul>
      
      
             
             </div><div class="c"></div>  </div>
               

   
    <div id="footer">
    
     
     
     
 
 
  <div style="position: relative; top: 40px;background-image: url('image/lava_bg-1.gif'); background-repeat: repeat;" align="center">  
      <h4 style="font-family: 微软雅黑; font-weight: bold; color: #000000;" >版权所有  <br /> </h4>
    </div>
    
         
    
   
   </div>
     </div>
    </form>
</body>
</html>