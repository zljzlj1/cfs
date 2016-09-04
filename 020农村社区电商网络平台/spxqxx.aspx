<%@ Page Language="C#" AutoEventWireup="true" CodeFile="spxqxx.aspx.cs" Inherits="spxqxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <link href="css/spxqxx.css" rel="Stylesheet" type="text/css" />
  
    <style type="text/css">
        .style1
        {
            height: 21px;
            width: 63px;
        }
        .style2
        {
            height: 18px;
        }
    </style>
  
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
                 
                    <li><a href="index.aspx">热门店铺</a><img src="image/bg1.png"  height="44px" width="2px" /></li>
                    <li><a href="index.aspx">最新新品</a><img src="image/bg1.png"  height="44px" width="2px" /></li>
                    <li><a href="index.aspx">热门商品</a><img src="image/bg1.png"  height="44px" width="2px" /></li></ul> 
                   </div>
          </div>
                     <div class="mid">
                     <div class="left" 
                            >	
   <table width="90%" cellpadding="4" cellspacing="4"  style="height: 286px; margin-left: 0px;">
				<tr>
					<td  align="right">
                        <asp:Image ID="Image2" runat="server" height="160"   width="180" />
					</td>
					<td > 
						<table width="100%">
							<tr>
								<td align="left"><asp:label Font-Bold="True" ForeColor="#CC0033" id="lblPName" Runat="server"></asp:label></td>
							</tr>
							<tr>
								<td style="height: 5px"><hr style="BORDER-TOP-STYLE:dashed; BORDER-RIGHT-STYLE:dashed; BORDER-LEFT-STYLE:dashed; BORDER-BOTTOM-STYLE:dashed"
										size="1">
								</td>
							</tr>
							<tr>
								<td align="left">价格:
								
										<asp:label id="lblPFPrice" Runat="server"></asp:label>元</td>
							</tr>
							<tr>
								<td align="left" class="style2">取货：<asp:DropDownList ID="DropDownList1" 
                                        runat="server" CssClass="styled">
                              
                                    <asp:ListItem Value="True">自提</asp:ListItem>      <asp:ListItem Value="False">不自提</asp:ListItem>
                                    </asp:DropDownList>
                              &nbsp;&nbsp;&nbsp;运费：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                    元</td>
							</tr>
                            <tr>
                                <td style="height: 22px" align="left">
                                    商品类别：<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                                <tr>
                                <td style="height: 22px" align="left">
                                    规格：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    &nbsp;&nbsp;购买数量<asp:TextBox 
                                        ID="TextBox2" runat="server" CssClass="s" Width="53px">1</asp:TextBox>
                                    <font color="#999999"   >(库存：<%=kc %>)</font>&nbsp;<asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2"
                                        ErrorMessage="请正确输入（格式：1.00）" ValidationExpression="^[0-9]+(.[0-9]{2})?$" 
                                        Font-Size="12px" ForeColor="Red"></asp:RegularExpressionValidator></td>
                            </tr>
							<tr>
								<td align="left">
                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                        ImageUrl="~/image/add2cart_default.png" onclick="ImageButton2_Click" />
                                </td>
                                    
							</tr>	<tr>
								<td align="left">
                                    商品详细信息：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </td>
                                    
							</tr>
						</table>
					</td>
				</tr>
			</table>


</div>
<div class="right"  >
                             <div style="text-align: center;" >
                               
                                            <table style="width: 250px; height: 286px">
                                                <tr>
                                                    <td style="width: 250px; height: 21px" colspan="2" align="center">
                                                     <asp:Image ID="Image1" runat="server"  Height="100px"  Width="100px"/> </td>
                                                   
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
                                                    <td style="width: 250px; height: 21px" colspan="2" align="center">
                                                    <a href="sjdp.aspx?id=<%=sjid %>&&sjdjl=<%=sjdjl %>">   
                                                      <img src="image/shop.jpg" /></a> 
                                                        </td>
                                                   
                                                </tr>
                                            </table>
                                     </div></div>
          
                                     <div class="c"></div>
                                     
<div>


<div><h4>发表评论</h4>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="s" Height="80px" 
        Width="500px" Columns="50" MaxLength="50" Rows="2"></asp:TextBox>


    <asp:Label ID="Label8" runat="server" Text="请输入不超过50个字" ForeColor="Red"></asp:Label>


    <br /> 
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/pl.png" 
        onclick="ImageButton3_Click" />


</div>
<h4>评论信息</h4>
    <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>
    
    <div>
    
    <table class="zczz" style=" width:100%; font-weight: bold;height: 55px; padding:5px; border-collapse:collapse; font-size:x-small; " >
                                 <tr>
                                     <td align="center" class="style1"  width="80">
                                       
                                         
                                            <asp:Image ID="Image2" runat="server" Height="85px" BorderWidth="0px"
                             Width="85px" ImageUrl="~/image/foot.png" /><br />
                          
                              
                                     </td>
                                     <td style="height: 10px">
          <div style="margin-top: 0px"  > <%#Eval("Username") %> &nbsp;评论时间：<%# DataBinder.Eval(Container.DataItem, "sppltime")%></div> <div style="margin-top: 20px"  ><%#Eval("sppjxx")%></div></td>
                                 </tr>
           
                             </table>
    
    
    </div>
    
    
    </ItemTemplate>
    </asp:Repeater>
</div>
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
