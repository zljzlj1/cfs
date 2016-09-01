<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yhztddgl.aspx.cs" Inherits="yhztddgl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
      <TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" bgColor="#f0f0f0" border="0">
				<TBODY>
					<TR>
						<TD vAlign="middle" width="3%"><STRONG><BR>
							</STRONG>
						</TD>
						<TD vAlign="middle" align="left" width="30%">订单号码：<%=order%><br/>
							下单日期：<asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></TD>
						<TD  align="left" width="67%">
						商家名称：<%=sjmc %></TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="100%" bgColor="#f0f0f0" border="0">
				<TBODY>
					<TR>
						<TD>&nbsp;</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE id="Table3" cellSpacing="0" cellPadding="1" width="100%" bgColor="#f0f0f0" border="0">
				<TBODY>
					<TR>
						<TD><STRONG>订单信息</STRONG>
							<HR noShade SIZE="1">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE id="Table4" cellSpacing="3" cellPadding="3" width="100%" bgColor="#f0f0f0" border="0">
				<TBODY>
					<TR>
						<TD style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; height: 24px;"
							align="center" width="64">序号</TD>
						<TD style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; height: 24px;"
							align="left"  valign=middle width="98">商品名称<BR>
						</TD>
                     
						<TD style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; height: 24px;"
							align="center" width="99">数量</TD>
						<TD style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; height: 24px;"
							align="center" width="98">单价<BR>
						</TD>
						<TD style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; height: 24px;"
							align="center" width="98">小计<BR>
						</TD>
					</TR> <!-- BEGIN row -->
					
							<TR>
								<TD noWrap align="center" width="64" height="20">1</TD>
								<TD align="left" width="98" height="20">
                                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></TD>
	
								<TD align="center" width="99" height="20">
                                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></TD>
								<TD align="center" width="98" height="20">
                                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>￥</TD>
								<TD align="center" width="104" height="20">
                                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>￥</TD>
							</TR>
				
					<TR>
						<TD align="center" width="64">&nbsp;</TD>
						<TD width="334">&nbsp;</TD>
						<TD width="98">&nbsp;</TD>
						<TD width="99">&nbsp;</TD>
						<TD width="104">&nbsp;</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE id="Table5" cellSpacing="0" cellPadding="2" width="100%" bgColor="#f0f0f0" border="0">
				<tr>
					<td vAlign="top" width="50%">
						<table id="Table6" width="100%">
							<tr>
								<td>定单状态：<asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label
                                    ID="Label14" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label ID="Label15" runat="server"
                                        Text="Label"></asp:Label>
                                   &nbsp; <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td>自提：<asp:Label ID="Label16" runat="server" Text="自提"></asp:Label></td>
							</tr>
							<tr>
								<td></td>
							</tr>
						</table>
					</td>
					<td width="50%">
						<table id="Table7" width="100%">
							<tr>
								<td 
									align="right" width="50%"></td>
								<td width="10%"></td>
								<td> </td>
							</tr>
							
							<tr>
								<td 
									align="right" width="50%"></td>
								<td width="10%"></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right" width="50%"></td>
								<td width="10%"></td>
								<td></td>
							</tr>
						</table>
					</td>
				</tr>
			</TABLE>
			<TABLE id="Table8" cellSpacing="3" cellPadding="3" width="100%" bgColor="#f0f0f0" border="0">
				<tr>
				
					<td><STRONG>收货人信息</STRONG></td>
				</tr>
				<tr>
					
					<td style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid"
						width="50%">
						<table id="Table10">
							<tr>
								<td align="right">收货人姓名：</td>
								<td style="width: 3px">
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
							</tr>
							<tr>
								<td align="right">联系电话：</td>
								<td style="width: 100px">
                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
							</tr>
							
							<tr>
								<td align="right">收货人地址：</td>
								<td style="width: 3px">
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
							</tr>
							<tr>
								<td align="right">邮政编码：</td>
								<td style="width: 3px">
                                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
							</tr>
							<tr>
								<td align="right"></td>
								<td style="width: 3px"></td>
							</tr>
						</table>
					</td>
				</tr>
			</TABLE>
			<table id="Table11" width="100%" bgColor="#f0f0f0">
				<tr>
					<td><STRONG>修改订单状态</STRONG>
						<HR noShade SIZE="1">
					</td>
				</tr>
				<tr>
					<td>
                        <asp:CheckBox ID="chkqr" runat="server" Text="是否已确认" AutoPostBack="True"/>
                      <asp:CheckBox ID="chkfh" runat="server" Text="是否已发货" AutoPostBack="True" />
                        <asp:CheckBox ID="chkhd" runat="server"  Text="是否自提" AutoPostBack="True"/>
                             <asp:CheckBox ID="chkzf" runat="server"  Text="是否支付" AutoPostBack="True"/>
							</td>
				</tr>
				<tr>
					<td height="20" align="left" valign="middle">
				<asp:Button ID="btnSave" Runat="server" Text="修 改" style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid"
							Width="69" Height="22" OnClick="btnSave_Click"></asp:Button>
						 </td>

				</tr>
			</table>

    
    </div>
    </form>
</body>
</html>
