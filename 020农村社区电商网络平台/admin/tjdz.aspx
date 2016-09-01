<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjdz.aspx.cs" Inherits="admin_tjdz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{font-family: 楷体; font-size: 14px; font-weight: bolder;}
        .style1
        {
            height: 22px;
            line-height: 28px;
            background: #FFFFCC;
            width: 50px;
        }
        .style2
        {
            height: 22px;
        }
        .dd{ margin-left:10px;
            height: 19px;
        }
          .style{ border-radius:5px; width:100px; height:25px; padding:0 0px 0 0px;color:#fff; font:14px "微软雅黑"; background-color:#3d69f7;} 
.sa{ BORDER-RIGHT: #000000 0px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 0px solid; BORDER-BOTTOM: #000000 1px solid; width:80px;}
 
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
        <td height="31"><div class="titlebt">添加地址</div></td>
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
                <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;">省份：</span></td>
         <td align="left" class="style2">
           <asp:ScriptManager ID="ProvinceContect" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel" runat="server">
                    <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server" class="sa"></asp:TextBox>
             <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/admin/images/2.gif" CssClass="dd" 
                    onclick="ImageButton2_Click" />&nbsp;<asp:Label ID="Label1"
                          runat="server" Text="Label"   ForeColor="Red" Visible="False"></asp:Label><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,15}"></asp:RegularExpressionValidator>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    
                    
                    
                    </td>
     </tr>
     <tr>
         <td align="right" class="style1">
                 <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;"> 市名：</span></td>
         <td align="left" class="style2">
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style">
             </asp:DropDownList>
   <asp:TextBox ID="TextBox2" runat="server" class="sa"></asp:TextBox>
          <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/admin/images/2.gif" CssClass="dd" 
                 onclick="ImageButton3_Click" />&nbsp;<asp:Label ID="Label2"
                          runat="server" Text="Label"   ForeColor="Red" Visible="False"></asp:Label><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,15}"></asp:RegularExpressionValidator>
               </ContentTemplate></asp:UpdatePanel></td>

     </tr>
     <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;">县名：</span></td>
         <td align="left" class="style2">
             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
               <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style">
             </asp:DropDownList> <asp:TextBox ID="TextBox3" runat="server" class="sa"></asp:TextBox>
          
                <asp:ImageButton ID="ImageButton4" runat="server" CssClass="dd" 
                   ImageUrl="~/admin/images/2.gif" onclick="ImageButton4_Click" />
               &nbsp;<asp:Label ID="Label3"
                          runat="server" Text="Label"   ForeColor="Red" Visible="False"></asp:Label>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,15}"></asp:RegularExpressionValidator>
               </ContentTemplate></asp:UpdatePanel> </td>
     </tr>
      <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;">镇名：</span></td>
         <td align="left" class="style2">
              <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
              <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style">
             </asp:DropDownList>  <asp:TextBox ID="TextBox4" runat="server" class="sa"></asp:TextBox>
          
               <asp:ImageButton ID="ImageButton5" runat="server" CssClass="dd" 
                  ImageUrl="~/admin/images/2.gif" onclick="ImageButton5_Click" />
              &nbsp;<asp:Label ID="Label4"
                          runat="server" Text="Label"   ForeColor="Red" Visible="False"></asp:Label>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,15}"></asp:RegularExpressionValidator>
                </ContentTemplate></asp:UpdatePanel></td>
     </tr>
        <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 14px; font-weight: bolder; font-style: italic;">村名：</span></td>
         <td align="left" class="style2">
           





                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>


               <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style">
             </asp:DropDownList> <asp:TextBox ID="TextBox5" runat="server" class="sa"></asp:TextBox>
           <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/admin/images/2.gif" CssClass="dd" 
                   onclick="ImageButton1_Click" />
                &nbsp;<asp:Label ID="Label5"
                          runat="server" Text="Label"   ForeColor="Red" Visible="False"></asp:Label>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,15}"></asp:RegularExpressionValidator>
                </ContentTemplate></asp:UpdatePanel></td>
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