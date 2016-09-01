<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjdp.aspx.cs" Inherits="sjdp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    
 
    <link href="css/sjdp.css" rel="Stylesheet" type="text/css" />
  
</head>
<body>
    <form id="form1" runat="server">
    <div class="big"> 
     <div style=" background-image: url('image/banner-1.png'); background-repeat: repeat-x; height: 247px;"> <div style="padding-left: 10px; padding-top: 5px;">
          <a href="sjdl.aspx" style="font-family: 黑体; font-size: 14px; color: #000000;">商家登录入口</a> | 
          <a href="sjrzxz.aspx" style="font-family: 黑体; font-size: 14px; color: #000000;">商家入住须知</a> | 
          <a href="gywm.aspx" style="font-family: 黑体; font-size: 14px; color: #000000;">关于我们</a> </div>
        <a href='index.aspx' ><img src="image/logo.gif" style="width: 67px; height: 53px; margin-top: 50px; margin-left: 80px;" 
               alt="图标" /></a><br /><span  style=" padding-left: 85px;">
          <a  href='index.aspx' style="font-family: 黑体; font-size: 14px; color: #000000;">农村电商</a></span><div   style="font-family: 黑体; font-size: 14px; padding-left: 85%; margin-top: 30px;">商品高品质保证</div>
                    <div class='dao' style="margin-top: 13px; height: 47px;">
                    <ul >
                    <li><a href="index.aspx">首页</a><img src="image/bg1.png"  height="44px" width="2px" /></li>
                 
                    <li><a href="rmdp.aspx">热门店铺</a><img src="image/bg1.png"  height="44px" width="2px" /></li>
                    <li><a href="zuixinxinpin.aspx">最新新品</a><img src="image/bg1.png"  height="44px" width="2px" /></li>
                    <li><a href="remensp.aspx">热门商品</a><img src="image/bg1.png"  height="44px" width="2px" /></li></ul> 
                   </div>
          </div>
                     <div class="mid">
                     <div class="left" >	
  
     <table style="width: 250px; height: 286px">
                                                <tr>
                                                    <td style="width: 250px; height: 21px" colspan="2" align="center">
                                                     <asp:Image ID="Image1" runat="server" Height="100px"  Width="100px"/> </td>
                                                   
                                                </tr>
                                                <tr>
                                                    <td class="style1" align="right">
                                                        <span style="font-size: 10pt">店铺名:</span></td>
                                                    <td style="width: 100px; height: 21px"  align="left">
                                                        <asp:Label ID="Label1" runat="server" Font-Size="Smaller" Text="d"></asp:Label></td>
                                                </tr>
                                                   <tr>
                                                    <td class="style1" align="right">
                                                        <span style="font-size: 10pt">入驻时间:</span></td>
                                                    <td style="width: 100px; height: 21px" align="left">
                                                        <asp:Label ID="Label2" runat="server" Font-Size="Smaller" Text="d"></asp:Label></td>
                                                </tr>
                                                   <tr>
                                                    <td class="style1" align="right">
                                                        <span style="font-size: 10pt">联系电话:</span></td>
                                                    <td style="width: 100px; height: 21px" align="left">
                                                        <asp:Label ID="Label3" runat="server" Font-Size="Smaller" Text="d"></asp:Label></td>
                                                </tr>
                                                   <tr>
                                                    <td class="style1" align="right">
                                                        地址</td>
                                                    <td style="width: 100px; height: 21px" align="left">
                                                        <asp:Label ID="Label4" runat="server" Font-Size="Smaller" Text="d"></asp:Label></td>
                                                </tr>   
                                            </table>    
<div style="background-image: url('image/15 .png'); background-repeat: no-repeat; width: 203px; height: 500px;  margin-left: 20px; margin-top: 10px;">

<ul  class="ss">
    <asp:Repeater ID="news" runat="server">
        <ItemTemplate>
            <li><%#Eval("zpgw") %>&nbsp;<%#Eval("fbsj", "{0:yyyy-MM-dd HH:mm:ss}")%></li>
        </ItemTemplate>
    </asp:Repeater>
    <li></li></ul>
</div>

</div>
<div class="right"  >

                             <div  style="background-image: url('image/4.png'); background-repeat: no-repeat; height: 30px">
                           
                                 <h5 style="margin-top: 10px; margin-left: 30px">全部商品</h5>
                                   
<asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="4" 
        Height="460px" Width="100%" HorizontalAlign="Center">
        <ItemTemplate>
       <div style="text-align: center">
        
          <a href="spxqxx.aspx?id=<%#Eval("spid") %>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid")%>"  > <asp:Image ID="Image1" runat="server" Height="120px" 
                                ImageUrl='<%# DataBinder.Eval(Container.DataItem,"sptp") %>' Width="120px" />
                            <br />
                           <%#DataBinder.Eval(Container.DataItem,"spmc" )%>
                            <br />
                            <%#Eval("spjg").ToString()=="0.00"?"面议":Eval("spjg") %><span style="font-size: 10pt">￥</span> 
                            <br />
                         </a>   
                            
</div>

        </ItemTemplate>
        

    </asp:DataList>
    

    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
  </div></div>
          
                                     <div class="c"></div>
                                     

          </div>
           <div style="width:100%;text-align: center; background-image: url('image/lava_bg-11.gif'); background-repeat: repeat;">   
            <p style="font-family: 黑体; font-size:18px; text-align: center;">  版权所有</p>
               <a  href="logn.aspx"  
                    style=" font-family: 黑体; color: #000000; text-decoration: none; ">管理入口</a>
        
            
            
                

      
</div>
           
    </div>
    </form>
</body>
</html>
