<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xgmm.aspx.cs" Inherits="admin_xgmm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 22px;
            line-height: 28px;
            background: #FFFFCC;
            width: 150px;
        }
        .style2
        {
            height: 22px;
        }
    </style>
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
        <td height="31"><div class="titlebt">修改密码</div></td>
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
            <td align="right" colspan="2" style="height:5px; background-color: #FFFF99;">
                
                </td>
        </tr>
     <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;">请输入您的原始密码：</span></td>
         <td align="left" class="style2">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" class="s"></asp:TextBox>
          
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入原始密码" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox4" 
            ErrorMessage="输入密码错误" ForeColor="Red"></asp:CompareValidator></td>
     </tr>
     <tr>
         <td align="right" class="style1">
                 <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;"> 请输入您的新密码：</span></td>
         <td align="left" class="style2">
   
   <asp:TextBox ID="TextBox2" runat="server" 
        TextMode="Password" class="s"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入新的密码,长度为1-6个字符" 
        ForeColor="Red"></asp:RequiredFieldValidator>   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,6}"></asp:RegularExpressionValidator>
               </td>

     </tr>
     <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;">请输入确认密码：</span></td>
         <td align="left" class="style2">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" class="s"></asp:TextBox>
          
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入确认密码,长度为1-6个字符" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致 " 
                    ForeColor="Red"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,6}"></asp:RegularExpressionValidator>
                `</td>
     </tr>

       <tr>
         <td align="right" class="style1">
               </td>
         <td align="left" class="style2">
             <asp:ImageButton ID="ImageButton1" runat="server" 
                 ImageUrl="~/admin/images/1.gif" onclick="ImageButton1_Click" />
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
