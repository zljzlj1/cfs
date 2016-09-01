<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ckwz.aspx.cs" Inherits="ckwz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文章信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width: 100%; margin-top: 20px; margin-left: -30px;">
                        <tr>
                            <td align="center" class="style1">
                                <h1><%=title %></h1>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="style1" align="center">
                               <h3>&nbsp;点击率：<asp:Label 
                                    ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp; 发表时间：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            &nbsp; 发表人：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                             &nbsp;&nbsp;  <a href="tgwz.aspx" style="text-decoration: none; color: #000000;">【返回】</a>
                                
                               
                                </h3> </td>    
                            
                        </tr>
                        
                       <tr>
                   
                       <td align="center" style="padding-top: 50px">

                               <h2><%=txt %></h2> 

                       </td>
                       </tr>
                    </table>
    </div>
    </form>
</body>
</html>
