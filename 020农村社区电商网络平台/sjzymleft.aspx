<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjzymleft.aspx.cs" Inherits="sjzymleft" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>商家管理系统</title>
         <link href="css/sjzymleft.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">

	<div class="leftsidebar_box">
		<div class="line"></div>
		<dl class="system_log">
			<dt onclick="changeImage()">系统基本管理<img src="image/sj/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="sjjbxx.aspx" target="sjmain">商家基本信息</a></dd>
			<dd><a href="sjxgmm.aspx" target="sjmain">修改密码</a></dd>
			<dd><a href="sjgg.aspx" target="sjmain">发布信息</a></dd>
            <dd><a href="xgsjggxx.aspx" target="sjmain">修改发布信息</a></dd>
            	<dd><a href="ckgx.aspx" target="sjmain">查看供需</a></dd>
               
             
	
		</dl>
	
		<dl class="custom">
			<dt onClick="changeImage()">订单管理<img src="image/sj/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="qrkhdd.aspx" target="sjmain">订单管理</a></dd>
		
		

		</dl>
	
		<dl class="channel">
			<dt>商品管理<img src="image/sj/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="tjsp.aspx" target="sjmain">添加商品</a></dd>
			<dd><a href="xgspxx.aspx" target="sjmain">修该商品信息</a></dd>
			<dd><a href="xjsp.aspx" target="sjmain">下架商品</a></dd>
            	<dd><a href="xgxjsp.aspx" target="sjmain">修改下架商品</a></dd>
			<dd><a href="sjsptp.aspx" target="sjmain">查看商品图片</a></dd>
	
		</dl>
	
	
	
	
	

	
		<dl class="statistics">
			<dt>统计分析<img src="image/sj/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="sptjxx.aspx" target="sjmain">商品占比统计</a></dd>
            <dd class="first_dd"><a href="spjetjxx.aspx" target="sjmain">商品金额统计</a></dd>
                   <dd class="first_dd"><a target="sjmain" href="spdjl.aspx">商品点击量统计</a></dd>
		</dl>
	
	</div>

</div>
    <script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $(".leftsidebar_box dt").css({ "background-color": "#3992d0" });
    $(".leftsidebar_box dt img").attr("src", "image/sj/left/select_xl01.png");
    $(function () {
        $(".leftsidebar_box dd").hide();
        $(".leftsidebar_box dt").click(function () {
            $(".leftsidebar_box dt").css({ "background-color": "#3992d0" })
            $(this).css({ "background-color": "#317eb4" });
            $(this).parent().find('dd').removeClass("menu_chioce");
            $(".leftsidebar_box dt img").attr("src", "image/sj/left/select_xl01.png");
            $(this).parent().find('img').attr("src", "image/sj/left/select_xl.png");
            $(".menu_chioce").slideUp();
            $(this).parent().find('dd').slideToggle();
            $(this).parent().find('dd').addClass("menu_chioce");
        });
    })
</script>
    </form>
</body>
</html>
