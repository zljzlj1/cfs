<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wdcz-ncpgx.aspx.cs" Inherits="wdcz_ncpgx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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


  a{  color:Black;}
       .zczz td{  border: 2px ridge #808080;}.zczz{margin-top: 0px;}
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
	<li><a href="wdcz-ncpgx.aspx">农产品供应</a></li>
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
      本村/社区供应</h5>
    <asp:ScriptManager ID="ProvinceContect" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel" runat="server">
                    <ContentTemplate>

        <table ><tr>
       <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="2" 
                DataKeyField="ncpid">
        <ItemTemplate>
                         <td>
                             <table class="zczz"
                                 style="  width:380px; font-weight: bold; height: 55px; padding:5px; border-collapse:collapse; font-size:x-small; " >
                                 <tr>
                                     <td align="center" class="style1" rowspan="3" width="80">
                                       
                                         
                                            <a href="wdcz-ncpgx-ckxx.aspx?id=<%#Eval("ncpid") %>"> <asp:Image ID="Image2" runat="server" Height="95px" BorderWidth="0px"
                                ImageUrl='<%# DataBinder.Eval(Container.DataItem,"rcppic") %>' Width="85px" />
                                </a>
                                     </td>
                                     <td >
           
                                      
                                      <a href="wdcz-ncpgx-ckxx.aspx?id=<%#Eval("ncpid") %>">  农产品名称：  <%# DataBinder.Eval(Container.DataItem, "rcpname")%>&nbsp;农产品种类：<%#Eval("ncpname")%></a></td>
                                 </tr>
                                 
                   
                                
                                 <tr>
                                     <td >
                                     <a href="wdcz-ncpgx-ckxx.aspx?id=<%#Eval("ncpid") %>">  农产品数量：<%#Eval("tgsl")%><%#Eval("xqdw")%>&nbsp;发布人：<%#Eval("Username") %></a></td>
             </tr>    
              <tr>
                                     <td >
                               <a href="wdcz-ncpgx-ckxx.aspx?id=<%#Eval("ncpid") %>">农产品价格： <%#Eval("price"=="0"?"面议":"price")%> (元/斤) </a> 发布日期:<%#Eval("fbrq", "{0:yyyy-MM-dd HH:mm:ss}")%></td>
             </tr>
                             </table>
                         </td>
                     </ItemTemplate>
              </asp:DataList></tr></table>
 <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
                        <asp:Panel ID="Panel1" runat="server">

      <span style="margin-left: 20px">
      <asp:Label ID="lblCurrentPage" runat="server" Font-Size="9pt" Width="90px"></asp:Label>
      &nbsp;
      <asp:LinkButton ID="btnFirst" runat="server" CommandArgument="first" 
          Font-Size="9pt" onclick="PagerButtonClick">首页</asp:LinkButton>
      &nbsp;
      <asp:LinkButton ID="btnPrev" runat="server" CommandArgument="prev" 
          Font-Size="9pt" onclick="PagerButtonClick">前一页</asp:LinkButton>
      &nbsp;
      <asp:LinkButton ID="btnNext" runat="server" CommandArgument="next" 
          Font-Size="9pt" onclick="PagerButtonClick">下一页</asp:LinkButton>
      &nbsp;
      <asp:LinkButton ID="btnLast" runat="server" CommandArgument="last" 
          Font-Size="9pt" onclick="PagerButtonClick">末页</asp:LinkButton>
      &nbsp;
      <asp:Label ID="Label2" runat="server" Font-Size="9pt" Width="30px">转到</asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Font-Size="9pt" 
          Height="15px" Width="31px"></asp:TextBox>
      <asp:Label ID="Label3" runat="server" CssClass="lable" Font-Size="9pt">页</asp:Label>
      <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Font-Size="9pt" 
          Height="15px" onclick="Button1_Click" Text="确定" Width="44px" />
      </span>
              
                            </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>
    
 
   </div>














   <div class="you"> <h5 style="margin-top: 8px; margin-left: 20px">招聘信息<a 
           href="wdcz-zpxx.aspx" style="margin-left: 140px"><img src="image/more.gif" /></a></h5>
      <ul class="ss">      <asp:Repeater ID="news" runat="server">
               <ItemTemplate><li><a href="wdcz-zpxx-ck.aspx?id=<%#Eval("xqid") %>"><%#Eval("sjmc") %> :<%#Eval("zpgw") %></a></li></ItemTemplate></asp:Repeater></ul>
      
      
             
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
