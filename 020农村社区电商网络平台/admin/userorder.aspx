<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userorder.aspx.cs" Inherits="admin_userorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>后台管理系统</title>
      
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
            <style type="text/css">  a{ text-decoration:none; color:Black;}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" 
           >
  <tr>
    <td width="17" valign="top"   style="background-image: url('images/mail_leftbg.gif')"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top"  style="background-image: url('images/content-bg.gif')"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">订单信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"  style="background-image: url('images/mail_rightbg.gif')"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" style="background-image: url('images/mail_leftbg.gif')">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <div class="divtext">
        
          <font style="color: #000000; font-family: 楷体; font-weight: bold"> 订单状态：</font><asp:DropDownList 
            ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="False">未支付</asp:ListItem>
            <asp:ListItem Value="True">已支付</asp:ListItem>
        </asp:DropDownList>
         <font style="color: #000000; font-family: 楷体; font-weight: bold">订单号：</font><asp:TextBox 
             ID="TextBox3" runat="server" Class="s"></asp:TextBox> <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton1_Click" />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" Width="100%"  DataKeyNames="ddid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" 
                     Height="250px" onrowdatabound="GridView2_RowDataBound" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView2_RowCancelingEdit" 
              onrowediting="GridView2_RowEditing" onrowupdating="GridView2_RowUpdating" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
         <asp:BoundField DataField="ddid" HeaderText="订单号" ReadOnly="True" />
       



                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             
                      <asp:BoundField DataField="totalprice" HeaderText="总金额" 
                    ReadOnly="True"  />
             



                <asp:BoundField HeaderText="用户" DataField="Username" ReadOnly="True" />
             



                        <asp:CheckBoxField DataField="sfzf" Text="支付" HeaderText="是否支付" />
                <asp:CommandField HeaderText="操作" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BorderStyle="Groove" ForeColor="#333333" HorizontalAlign="Center" 
                BackColor="#FFCC66" />
            <RowStyle HorizontalAlign="Center" ForeColor="#333333" BackColor="#FFFBD6" />
            <SelectedRowStyle BorderStyle="Ridge" BackColor="#FFCC66" Font-Bold="True" 
                ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

<SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
        </asp:GridView>
 
          
                 <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

    </div>

     </td>
    <td style="background-image: url('images/mail_rightbg.gif')">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" style="background-image: url('images/mail_leftbg.gif')"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td style="background-image: url('images/buttom_bgs.gif')"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" style="background-image: url('images/mail_rightbg.gif')"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>

