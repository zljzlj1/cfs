<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ddhao.aspx.cs" Inherits="ddhao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px"  >订单号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  
 <div style="margin-top: 10px">
   &nbsp; 
     <asp:Button ID="Button1" runat="server" Text="查看" BorderStyle="Solid" 
         BorderWidth="1px" PostBackUrl="~/ckdd.aspx" />&nbsp;
    <asp:Button ID="Button2" runat="server" Text="返回"  BorderStyle="Solid" 
         BorderWidth="1px" PostBackUrl="~/index.aspx"/>
  </div>
   </div>
</asp:Content>

