<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gerenjbxx.aspx.cs" Inherits="gerenjbxx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table cellspacing="0" cellpadding="0" width="100%" class="tablexian"  border="0" style="height: 500px">
     
     <tr><td style="height:31px; " ><img src="image/3.png" /></td></tr>
     
     
        <tr >
            <td align="right" colspan="2" style="height:5px; background-color: #FFFF99;">
                </td>
        </tr>
     <tr>
         <td align="right" style="width: 100px" >
                <span style="color: #FF0000; font-size: 9px;">*</span>用户名：</td>
         <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="s"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入用户名,长度1-5" 
            ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入正确的长度" 
                    ForeColor="Red" ValidationExpression="\S{1,5}"></asp:RegularExpressionValidator></td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" >
                <span style="color: #FF0000; font-size: 9px;">*</span>联系电话：</td>
         <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="s"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入联系电话,长度为11" 
        ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="code0" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入正确的电话号码" 
                    ForeColor="Red" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
             </td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" >
                邮编：</td>
         <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="s"></asp:TextBox>
                <asp:regularexpressionvalidator id="code"  ControlToValidate="TextBox5" 
                    Display="Dynamic" ValidationExpression="\d{6}" ErrorMessage="请输入正确的邮政编码,长度为6" 
                    runat="server" ForeColor="Red"></asp:regularexpressionvalidator></td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" >
                 <span style="color: #FF0000; font-size: 9px;">*</span>地址：</td>
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
         <td align="right" style="width: 100px" >
                具体地址：</td>
         <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="s"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="请输入不超过50个字" 
                    ForeColor="Red" ValidationExpression="\S{1,50}"></asp:RegularExpressionValidator></td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" >
               真实姓名：</td>
         <td align="left">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="s"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="请输入不超过5个字" 
                    ForeColor="Red" ValidationExpression="\S{1,5}"></asp:RegularExpressionValidator></td>
     </tr>
        <tr >
         <td align="right" style="width: 100px" >
                &nbsp;</td>
         <td align="left">
                <span style="color: #FF0000; font-size: 12px;">注：带*为必填</span>
                </td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" >
                &nbsp;</td>
         <td align="left">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/4.gif" 
                    onclick="ImageButton1_Click" />&nbsp; 
                </td>
     </tr>
    
</table>

</asp:Content>

