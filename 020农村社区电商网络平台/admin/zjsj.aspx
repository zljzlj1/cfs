<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zjsj.aspx.cs" Inherits="admin_zjsj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
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
        <td height="31"><div class="titlebt">添加商家</div></td>
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
            <td align="left" colspan="2" 
                style="height:5px; background-color: #FFFF99; font-size: 12px; font-weight: bold;">
                注:商家初始密码默认为:<span style="color: #FF0000; font-size: 12px;">111111</span></td>
        </tr>
     <tr>
         <td align="right" style="width: 100px" class="tablebg">
                商家：</td>
         <td align="left">
             <asp:TextBox ID="TextBox1" runat="server" class="s"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入商家名称,长度为1-10个字" 
        ForeColor="Red" Font-Size="12px"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入正确的字数" 
                    ForeColor="Red" ValidationExpression="\S{1,10}" Font-Size="12px"></asp:RegularExpressionValidator></td>
       </tr>
     <tr>
         <td align="right" style="width: 100px" class="tablebg">
                地址：</td>
         <td align="left">
             <asp:ScriptManager ID="ProvinceContect" runat="server">
             </asp:ScriptManager>
             <asp:UpdatePanel ID="UpdatePanel" runat="server">
                 <ContentTemplate>
                     <asp:DropDownList ID="bind_Province" runat="server" AutoPostBack="True" 
                         CssClass="styled" onselectedindexchanged="bind_Province_SelectedIndexChanged">
                     </asp:DropDownList>
                     <asp:DropDownList ID="bind_City" runat="server" AutoPostBack="True" 
                         CssClass="styled" onselectedindexchanged="bind_City_SelectedIndexChanged">
                     </asp:DropDownList>
                     <asp:DropDownList ID="bind_Borough" runat="server" AutoPostBack="True" 
                         CssClass="styled" onselectedindexchanged="bind_Borough_SelectedIndexChanged">
                     </asp:DropDownList>
                     <asp:DropDownList ID="bind_zh" runat="server" AutoPostBack="True" 
                         CssClass="styled" onselectedindexchanged="bind_zh_SelectedIndexChanged">
                     </asp:DropDownList>
                     <asp:DropDownList ID="bind_cun" runat="server" CssClass="styled">
                     </asp:DropDownList>
                 </ContentTemplate>
             </asp:UpdatePanel>
         </td>
       </tr>
        <tr>
         <td align="right" style="width: 100px" class="tablebg">
                </td>
         <td align="left">
              
             <asp:ImageButton ID="ImageButton1" runat="server" 
                 ImageUrl="~/admin/images/2.gif" onclick="ImageButton1_Click1" /> 
             <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
       </td>
     </tr>
</table>
   
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
