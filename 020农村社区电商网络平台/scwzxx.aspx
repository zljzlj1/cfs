<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scwzxx.aspx.cs" Inherits="scwzxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>020农村社区电商网络平台</title>
        <link href="css/scxx.css" rel="Stylesheet" type="text/css" />
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

    
  
 

    </div> 
  

    <div id="middle">
    <div id="left">
    <h5 style="margin-top: 10px; margin-left: 20px">文章信息</h5>
        <div class="z">
	<ul >
		<li ><a href="scwz.aspx" target="wz">上传文章</a></li>
        	
	<li><a href="xgwzxx.aspx" target="wz">未通过文章(<span style="font-size: 12px; color: #FF0000"><%=w %></span>)</a></li>
		<li><a href="tgwz.aspx" target="wz">通过文章(<span style="font-size: 12px; "><%=t %></span>)</a></li> 
        <li><a href="index.aspx" >返回</a></li> 
	</ul>
</div>
             
             </div>
 
     <div id="right">   
     <iframe src="scwz.aspx" name="wz"   frameborder="0"  scrolling="no"   
             height="500px" width="900px"></iframe>
           
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
