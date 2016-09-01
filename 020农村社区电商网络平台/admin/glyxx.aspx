<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glyxx.aspx.cs" Inherits="admin_glyxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate> 
    <table width="100%" border="0" cellpadding="0" cellspacing="0" 
           >
  <tr>
    <td width="17" valign="top"   style="background-image: url('images/mail_leftbg.gif')"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top"  style="background-image: url('images/content-bg.gif')"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">管理员信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"  style="background-image: url('images/mail_rightbg.gif')"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" style="background-image: url('images/mail_leftbg.gif')">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <div class="divtext">
          <table cellspacing="0" cellpadding="0" width="100%"  class="tablexian" border="0">
     


        <tr >
            <td align="left" colspan="2" style="height:5px; background-color: #FFFF99;">
                <span style="color: #FF0000; font-size: 12px; font-weight: bolder;"> 注:不要把所有的管理员全部删除，否则不能进入后台管理系统！</span></td>
        </tr>
     
</table>

   <font style="color: #000000; font-family: 楷体; font-weight: bold">管理员：</font><asp:TextBox ID="TextBox5" runat="server" Class="s"></asp:TextBox>
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton5_Click" />
       <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="adminid" 
            onpageindexchanging="GridView5_PageIndexChanging" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Height="250px" onrowdatabound="GridView5_RowDataBound" 
                  onrowdeleting="GridView5_RowDeleting" GridLines="None" >
            <Columns>
                <asp:TemplateField HeaderText="序号"><ItemTemplate> 
<asp:Label ID="Label2" runat="server" Text='<%# this.GridView5.PageIndex * this.GridView5.PageSize + this.GridView5.Rows.Count + 1%>' /> 
</ItemTemplate> 
</asp:TemplateField>
        
                <asp:BoundField DataField="adminname" HeaderText="管理员" ReadOnly="True" />
      <asp:BoundField DataField="admm" HeaderText="密码" ReadOnly="True" />
                
             
                <asp:TemplateField HeaderText="本次登录时间">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("logintime", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="上次登录时间">
                <ItemTemplate><asp:Label ID="Label9" runat="server" Text='<% #Eval("sctime", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
          
        
                <asp:TemplateField HeaderText="是否超级管理员">
                     <ItemTemplate> <asp:Label ID="Label7" runat="server" Text='<%#Eval("bz").ToString().Trim()=="n"?"否":"是"  %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
             
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
          
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerSettings Visible="False" />
            <PagerStyle BorderStyle="Groove" ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BorderStyle="Ridge" BackColor="#738A9C" Font-Bold="True" 
                ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        &nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:LinkButton ID="LinkButton17" runat="server" CommandArgument="f4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">首页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton18" runat="server" CommandArgument="p4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">上一页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton19" runat="server" CommandArgument="n4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">下一页</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton20" runat="server" CommandArgument="l4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">末页</asp:LinkButton>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

    </div>

     </td>
    <td style="background-image: url('images/mail_rightbg.gif')">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" style="background-image: url('images/mail_leftbg.gif')"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td style="background-image: url('images/buttom_bgs.gif')"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" style="background-image: url('images/mail_rightbg.gif')"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table></ContentTemplate></asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
