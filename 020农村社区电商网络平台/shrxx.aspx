<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shrxx.aspx.cs" Inherits="shrxx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px">
    <table border="0" cellpadding="0" cellspacing="0" class="tablexian" 
        style="height: 500px" width="100%">
        <tr>
            <td>
                <img src="image/tianxiedingdan.gif" /></td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="height:5px; background-color: #FFFF99;">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <span style="color: #FF0000; font-size: 9px;">*</span>收货人姓名：</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="s"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入用户名" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入正确的长度,长度1-5" 
                    ForeColor="Red" ValidationExpression="\S{1,5}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <span style="color: #FF0000; font-size: 9px;">*</span>联系电话：</td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="s"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入联系电话" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="code0" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入正确的电话号码" 
                    ForeColor="Red" ValidationExpression="\S{1,20}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <span style="color: #FF0000; font-size: 9px;">*</span>邮编：</td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="s"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="请输入邮编" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="code" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="请输入正确的邮政编码,长度为6" 
                    ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                <span style="color: #FF0000; font-size: 9px;">*</span>地址：</td>
            <td align="left">
                <asp:TextBox ID="TextBox7" runat="server" CssClass="s"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入地址" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="请输入不超过50个字" 
                    ForeColor="Red" ValidationExpression="\S{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                &nbsp;</td>
            <td align="left">
                <span style="color: #FF0000; font-size: 12px;">注：带*为必填</span>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                &nbsp;</td>
            <td align="left">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/9.png" 
                    onclick="ImageButton1_Click" />
                &nbsp;
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

