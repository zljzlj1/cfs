<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjdl.aspx.cs" Inherits="sjdl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>商家登录系统</title>
    <link  href="css/Sjdl.css" rel="Stylesheet" type="text/css" />
      
</head>
<body>
    <form id="form1" runat="server">
    <div class="bg"  >
    <div class="bb">
    <table><tr><td>  <img src="image/sj/dlzh.png"  alt="登录账号"  style="margin-left: 237px" /></td><td><asp:TextBox ID="Textdlzh"   runat="server" CssClass="txt"></asp:TextBox></td><td><img src="image/sj/dlmm.png"  alt="登录密码"/></td><td><asp:TextBox ID="Textdlmm"
            runat="server" CssClass="txt" TextMode="Password"></asp:TextBox></td><td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/image/sj/dl-1.png" CssClass="dl" 
                onclick="ImageButton1_Click" />
        </td><td>
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="qx" 
                ImageUrl="~/image/sj/dl-2.png" PostBackUrl="~/index.aspx" />
        </td></tr></table>
      </div>
    </div>
    </form>
</body>
</html>
