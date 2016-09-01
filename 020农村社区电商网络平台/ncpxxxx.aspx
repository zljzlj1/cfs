<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ncpxxxx.aspx.cs" Inherits="ncpxxxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title>020农村社区电商网络平台</title>
 
    <style type="text/css">
        .style3
        {
            height: 25px;
            width: 203px;
        }
        .style4
        {
            height: 25px;
            width: 98px;
        }
        .style5
        {
            width: 98px;
        }
        .style6
        {
            width: 211px;
        }
        .style7
        {
            width: 84px;
        }   
         a{ color:black; text-decoration:none;}
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style=" width:820px; height: 500px;">
        <tr>
                <td class="style5">
                    农产品信息</td>
                <td class="style6" colspan="2">
                    &nbsp;</td>
            </tr>
                <tr>
                <td class="style5">
                    发布时间：</td>
                <td class="style6" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    农产品名称：</td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                 <td class="style3" rowspan="3">
                    <asp:Image ID="Image1" runat="server"  Width="278px" Height="250px"/>
                </td>
            </tr>   <tr>
                <td class="style4">
                    农产品数量：</td>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr><td class="style5">农产品类别:</td><td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td></tr>
         
           
           
           
           
           
           
            <tr>
            <td class="style5">
                    农产品价格:</td>
            <td colspan="2">
                     <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                     (元/<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>)</td>
            </tr>
                <tr>
            <td class="style5">
                    发布人:</td>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
                   <tr>
            <td class="style5">
                    联系电话:</td>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            </tr>
                   <tr>
            <td class="style5">
                    农产品详细信息：</td>
            <td colspan="2">
               <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> 
            </td>
            </tr>
            <tr>
            <td class="style5">
                    </td>
            <td colspan="2">
             <a href="ckgx.aspx">返回</a>
            </td>
            </tr>
        </table>
       
      
     
          
    </div>
    </form>
</body>
</html>


