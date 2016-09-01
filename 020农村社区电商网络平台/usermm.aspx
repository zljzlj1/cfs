<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usermm.aspx.cs" Inherits="usermm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" /></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table cellspacing="0" cellpadding="0" width="100%"   border="0" 
              style="height: 500px">
     


        <tr >
            <td align="left" colspan="2" style="height:5px;font-family: 楷体; color: #000000; font-size: 14px;   background-color: #FFFF99; font-weight: bolder;">
               修改密码 
                </td>
        </tr>
     <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 12px; font-weight: bolder; font-style: italic;">请输入您的原始密码：</span></td>
         <td align="left" class="style2">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" class="s"></asp:TextBox>
          
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入原始密码" 
             Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox1" 
            Font-Size="12px" ErrorMessage="输入密码错误" ForeColor="Red"></asp:CompareValidator></td>
     </tr>
     <tr>
         <td align="right" class="style1">
                 <span style="font-family: 楷体; color: #000000; font-size: 12px; font-weight: bolder; font-style: italic;"> 请输入您的新密码：</span></td>
         <td align="left" class="style2">
   
   <asp:TextBox ID="TextBox2" runat="server" 
        TextMode="Password" class="s"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入新的密码,长度为1-6个字符" 
         Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,6}"></asp:RegularExpressionValidator>
               </td>

     </tr>
     <tr>
         <td align="right" class="style1">
                <span style="font-family: 楷体; color: #000000; font-size: 12px; font-weight: bolder; font-style: italic;">请输入确认密码：</span></td>
         <td align="left" class="style2">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" class="s"></asp:TextBox>
          
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入确认密码,长度为1-6个字符" 
                    ForeColor="Red" Font-Size="12px"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致 " 
                   Font-Size="12px"  ForeColor="Red"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,6}"></asp:RegularExpressionValidator>
                `</td>
     </tr>

       <tr>
         <td align="right" class="style1">
               </td>
         <td align="left" class="style2">
             <asp:ImageButton ID="ImageButton1" runat="server" 
                 ImageUrl="~/admin/images/1.gif" onclick="ImageButton1_Click" />
           &nbsp;</td>
     </tr>
</table>
  
    </asp:Content>

