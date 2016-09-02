<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wdcz-ckwz.aspx.cs" Inherits="wdcz_ckwz" %>

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
                              <h1><%=title %></h1>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="style1" align="center">
                               <h3>&nbsp;点击率：<asp:Label 
                                    ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp; 发表时间：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            &nbsp; 发表人：<asp:Label ID="Label2" runat="server" Text="lLabel"></asp:Label>
                               
                                </h3> </td>    
                            
                        </tr>
                        
                       <tr>
                   
                       <td  style="padding-top: 50px">

                                 <div style="margin-left: 30px"  ><asp:Label ID="Label6" runat="server" Text="Label" CssClass="ls"></asp:Label></div> 


                       </td>
                       </tr>
                    </table>
   </div>
   <div class="you"> <h5 style="margin-top: 8px; margin-left: 20px">招聘信息<a href="wdcz-zpxx.aspx" style="margin-left: 140px"><img src="image/more.gif" /></a></h5>
      <ul class="ss">      <asp:Repeater ID="news" runat="server">
               <ItemTemplate><li><a href="wdcz-zpxx-ck.aspx?id=<%#Eval("xqid") %>"><%#Eval("sjmc") %>:<%#Eval("zpgw") %><%#Eval("fbsj", "{0:yyyy-MM-dd HH:mm:ss}")%></a></li></ItemTemplate></asp:Repeater></ul>
      
      
             
             </div>

      <div class="c"></div> 
       <div><div id="articleComment"></div>
	
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/zyComment.js"></script>
	
	<script type="text/javascript">
	    $(function () {
	        //window.setTimeout('abc()', 1000);
	        getCommentList();
	    });
	    function getCommentList() {
	        
	        $.ajax({
	            type: "POST", //要用post方式
	            //data: "{str1:{str:1,str2:'asdasd'}}",
	            //"{str:我是,str2:XXX}"
	            //data: "{txtid: 2}",
	            url: "wdcz-ckwz.aspx/getCommentList", //方法所在页面和方法名
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            success: function (data) {
	                kk(data.d);
	            },
	            error: function (err) {
	                alert("发生错误");
	            }
	        });
	    }
	    function setCommentList(last) {
	        $.ajax({
	            type: "POST", //要用post方式
	            //data: "{str1:{str:1,str2:'asdasd'}}",
	            //"{str:我是,str2:XXX}"
	            data: last,
	            url: "wdcz-ckwz.aspx/setComment", //方法所在页面和方法名
	            contentType: "application/json; charset=utf-8",
	            dataType: "json",
	            success: function (data) {
	                if (data.d.result == true) {
	                    // $("#articleComment").zyComment("setCommentAfter", data.d.data);
	                    $("#articleComment").empty();
	                    getCommentList();

	                } else {
	                    alert(data.d.msg)
	                }
	            },
	            error: function (err) {
	                alert("发生错误");
	            }
	        });
	    }
	    function replay(bu) {
	        replyClickEvent();
	    }
	    function kk(agoComment) {
	        $("#articleComment").zyComment({
	            "width": "355",
	            "height": "33",
	            "agoComment": agoComment,
	            "callback": function (comment) {
	                console.info("填写内容返回值：");
	                console.info(comment);
	                if (comment.yhpl == '' || comment.yhpl == null) {
	                    alert("评论内容不能为空");
	                }
	                else {
	                    var last = JSON.stringify(comment); //将JSON对象转化为JSON字符
	                    // 添加新的评论
	                    //$("#articleComment").zyComment("setCommentAfter", { "wzplid": 123, "plyhid": "userNam", "yhpl": "comment", "plsj": "2014-04-14" });
	                    setCommentList(last)
	                }
	            }
	        });
	    }

	</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</div>

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
