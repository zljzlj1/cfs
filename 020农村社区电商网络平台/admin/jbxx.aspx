<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jbxx.aspx.cs" Inherits="admin_jbxx" %>

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
        <td height="31"><div class="titlebt">基本信息</div></td>
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
         <td align="right" style="width: 100px" class="tablebg">
                管理员：</td>
         <td align="left">
             <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
         </td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" class="tablebg">
                密码：</td>
         <td align="left">
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
         </td>
     </tr>
</table>
  <table cellspacing="0" cellpadding="0" width="100%"  class="tablexian" border="0">
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
                本次登录时间：</td>
         <td align="left">
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
         </td>
     </tr>
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
                上次登录时间：</td>
         <td align="left">
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
         </td>
     </tr>
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
                超级管理员：</td>
         <td align="left">
               <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
         </td>
     </tr>
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
                
         </td>
         <td align="left">
                &nbsp;</td>
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
