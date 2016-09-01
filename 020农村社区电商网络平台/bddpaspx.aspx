<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bddpaspx.aspx.cs" Inherits="bddpaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
 <style type="text/css">a{ color:Black; text-decoration:none;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px"  >

<asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="1" 
         Width="100%" HorizontalAlign="Center">
        <ItemTemplate>
    <table class="zczz" style=" width:100%; font-weight: bold;  font-size:x-small; " >
        
         
    
                                 <tr>
                                     <td align="center" class="style1"  width="100">
                                       
                                         
                                      <a href="sjdp.aspx?id=<%#Eval("sjid")%>&&sjdjl=<%#Eval("sjdjl") %>">    <asp:Image ID="Image2" runat="server" Height="85px" BorderWidth="0px"
                             Width="85px"   ImageUrl='<%# DataBinder.Eval(Container.DataItem,"sjtp") %>' /></a> 
                          
                              
                                     </td>
                                     <td style="height: 85px" align="left">
    商家名称：  <%#Eval("sjmc")%>&nbsp;所在地：<%#Eval("jtdz")%><br /><br /><br /><br /><a href="sjdp.aspx?id=<%#Eval("sjid") %>&&sjdjl=<%#Eval("sjdjl") %>"><img src="image/shop.jpg" /></a></td>
      </tr>
   

            </table>  
                   

        </ItemTemplate>
      

    </asp:DataList>       
    <asp:Panel ID="Panel1" runat="server">
      <table style="WIDTH: 472px; HEIGHT: 28px" width="472" align="left" border="0">
<TR>
<TD vAlign="middle" align="center" width="135" colSpan="2"><asp:label id="lblCurrentPage" runat="server" Width="120px" Font-Size="9pt"></asp:label></TD>
<TD vAlign="middle" align="right" width="57"><asp:linkbutton id="btnFirst" runat="server" CommandArgument="first" Font-Size="9pt" onclick="PagerButtonClick">首页</asp:linkbutton>&nbsp;</TD>
<TD vAlign="middle" align="center" width="60"><asp:linkbutton id="btnPrev" runat="server" CommandArgument="prev" Font-Size="9pt" onclick="PagerButtonClick">前一页</asp:linkbutton></TD>
<TD vAlign="middle" align="left" width="51"><asp:linkbutton id="btnNext" runat="server" CommandArgument="next" Font-Size="9pt" onclick="PagerButtonClick">下一页</asp:linkbutton></TD>
<TD vAlign="middle" align="left" width="40"><asp:linkbutton id="btnLast" runat="server" CommandArgument="last" Font-Size="9pt" onclick="PagerButtonClick">末页</asp:linkbutton></TD>
<TD vAlign="middle" align="left" width="53" style="WIDTH: 53px">&nbsp;&nbsp;
<asp:label id="Label2" runat="server" Width="30px" Font-Size="9pt" Height="28px">转到</asp:label></TD>
<TD vAlign="middle" align="center" width="34"><asp:textbox id="TextBox1" runat="server" Width="33px" Height="20px" BorderStyle="Groove" Font-Size="9pt"></asp:textbox></TD>
<TD vAlign="middle" align="center" width="26"><asp:label id="Label3" runat="server" Font-Size="9pt">页</asp:label></TD>
<TD vAlign="middle" align="center" width="34">
<P><asp:button id="Button1" runat="server" Width="44px" Height="20px" 
        BorderStyle="Groove" Text="确定"
Font-Size="9pt" onclick="Button1_Click"></asp:button></P>
</TD>
</TR>
</table>
</asp:Panel>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>



</div>
</asp:Content>

