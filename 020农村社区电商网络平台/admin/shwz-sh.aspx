<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shwz-sh.aspx.cs" Inherits="admin_shwz_sh" %>

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
        <td height="31"><div class="titlebt">文章信息</div></td>
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
         <td align="center" class="tablebg" colspan="2">
                <h1><%=title %></h1>
             </td>
      
     </tr>
     <tr>
         <td align="center" class="tablebg" colspan="2">
                 <h3>
&nbsp; 上传时间：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            &nbsp; 发表人：<asp:Label ID="Label6" runat="server" Text="Label6"></asp:Label>
                               
                                </h3></td>
       
     </tr>
         <tr>
         <td  class="tablebg" colspan="2" style="padding-top: 20px" >
                 <div> <%=txt %></div></td>
      
     </tr>
</table>
        
        
  <table cellspacing="0" cellpadding="0" width="100%"  class="tablexian" border="0">
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
                是否通过：</td>
         <td align="left">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:DropDownList>
                
         </td>
     </tr>
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
                未通过理由：</td>
         <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass=" s"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入不超过50个字" 
                    ForeColor="Red" ValidationExpression="\S{1,50}"></asp:RegularExpressionValidator>
         </td>
     </tr>
 
     <tr>
         <td align="right" style="width: 120px" class="tablebg">
         </td>
         <td align="left">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/9.gif" 
                    onclick="ImageButton1_Click" />&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/3.gif" 
                    PostBackUrl="~/admin/shwz.aspx" />
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
