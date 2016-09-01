<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">a{ color:Black;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <table style="width: 100%">
            
            <tr>
                <td style="width: 103px; height: 12px; background-image: url('image/bg11.png'); background-repeat: repeat-x;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/1.png" /></td>
            </tr>
            <tr>
                <td style="width: 103px; height: 97px">
                    <asp:DataList ID="DLnew" runat="server" RepeatColumns="4" Width="144px"  RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div style="text-align: center">
                                <table style="width: 157px; height: 286px">
                                    <tr>
                                        <td style="width: 100px; height: 100px">
                                                                   <a href="spxqxx.aspx?id=<%#Eval("spid") %>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid")%>"  >    <asp:Image ID="Image1" runat="server"  ImageUrl='<%#DataBinder.Eval(Container.DataItem,"sptp") %>'  Height="162px" Width="156px"/>  </a></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 23px">
                                            <table style="width: 150px; height: 10px">
                                                <tr>
                                                    <td style="width: 100px; height: 21px">
                                                    <span style="font-size: 10pt">产品名:</span></td>
                                                    <td style="width: 100px; height: 21px">
                                                             <a href="spxqxx.aspx?id=<%#Eval("spid") %>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid")%>"  >  <asp:Label ID="Label1" runat="server" Font-Size="Smaller" Text='<%# DataBinder.Eval(Container.DataItem, "spmc") %>'></asp:Label></a> </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 16px">
                                            <table style="width: 156px; height: 21px">
                                                <tr>
                                                    <td style="width: 100px">
                                                        <span style="font-size: 10pt">单价:</span></td>
                                                    <td style="width: 106px">
                                                          <a href="spxqxx.aspx?id=<%#Eval("spid")%>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid") %>"><asp:Label ID="Label2" runat="server" Font-Size="Smaller" Text=' <%#Eval("spjg").ToString()=="0.00"?"面议":Eval("spjg") %>'></asp:Label></a><span
                                                            style="font-size: 10pt">￥</span></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                               
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
            <tr>
                <td style="width: 103px; background-image: url('image/bg11.png'); background-repeat: repeat-x;">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/2.png" /></td>
            </tr>
            <tr>
                <td style="width: 103px; height: 7px;">
                    <asp:DataList ID="DLbest" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                     <ItemTemplate>
                            <div style="text-align: center">
                                <table style="width: 157px; height: 286px">
                                    <tr>
                                        <td style="width: 100px; height: 100px">
                                           <a href="spxqxx.aspx?id=<%#Eval("spid") %>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid")%>"  >  
                                               <asp:Image ID="Image1" runat="server"  ImageUrl='<%#DataBinder.Eval(Container.DataItem,"sptp") %>'  Height="162px" Width="156px"/>  </a></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 23px">
                                            <table style="width: 150px; height: 10px">
                                                <tr>
                                                    <td style="width: 100px; height: 21px">
                                                        <span style="font-size: 10pt">产品名:</span></td>
                                                    <td style="width: 100px; height: 21px">
                                                        <a href="spxqxx.aspx?id=<%#Eval("spid")%>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid") %>">  <asp:Label ID="Label1" runat="server" Font-Size="Smaller" Text='<%# DataBinder.Eval(Container.DataItem, "spmc") %>'></asp:Label></a></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 16px">
                                            <table style="width: 156px; height: 21px">
                                                <tr>
                                                    <td style="width: 100px">
                                                        <span style="font-size: 10pt">单价:</span></td>
                                                    <td style="width: 106px">
                                                         <a href="spxqxx.aspx?id=<%#Eval("spid")%>&&spdjl=<%#Eval("spdjl") %>&&sjdjl=<%#Eval("sjdjl")%>&&sjid=<%#Eval("sjid") %>"> <asp:Label ID="Label2" runat="server" Font-Size="Smaller" Text=' <%#Eval("spjg").ToString()=="0.00"?"面议":Eval("spjg") %>'></asp:Label></a><span
                                                            style="font-size: 10pt">￥</span></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                              
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
           
           
        </table>
  </asp:Content>

