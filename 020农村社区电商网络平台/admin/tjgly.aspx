<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjgly.aspx.cs" Inherits="admin_tjgly" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div> <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate> 
    <table width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="17" valign="top"   style="background-image: url('images/mail_leftbg.gif')"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top"  style="background-image: url('images/content-bg.gif')"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">添加管理员</div></td>
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
                注:管理员初始密码默认为:<span style="color: #FF0000; font-size: 12px;">111111</span></td>
        </tr>
     <tr>
         <td align="right" style="width: 100px" class="tablebg">
                管理员：</td>
         <td align="left">
             <asp:TextBox ID="TextBox1" runat="server" class="s"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入管理员姓名,长度为1-5个字" 
        ForeColor="Red" Font-Size="12px"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入正确的字数" 
                    ForeColor="Red" ValidationExpression="\S{1,5}" Font-Size="12px"></asp:RegularExpressionValidator></td>
       </tr>
     <tr>
         <td align="right" style="width: 100px" class="tablebg">
                管理员标志：</td>
         <td align="left">
               <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">请选择管理员权限</asp:ListItem>
                    
                    <asp:ListItem Value="1">n</asp:ListItem><asp:ListItem Value="2">y</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Font-Size="12px" Text="Label" 
                    ForeColor="Red" Visible="False"></asp:Label>
        </td>
     </tr>
        <tr>
         <td align="right" style="width: 100px" class="tablebg">
                </td>
         <td align="left">
              
             <asp:ImageButton ID="ImageButton1" runat="server" 
                 ImageUrl="~/admin/images/2.gif" onclick="ImageButton1_Click1" />
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
</table></ContentTemplate></asp:UpdatePanel> 
    </div>
    </form>
</body>
</html>
