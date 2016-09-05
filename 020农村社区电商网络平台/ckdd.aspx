<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ckdd.aspx.cs" Inherits="ckdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">a{ color:Black; text-decoration:none;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px">
        
           
       <font style="color: #000000; font-family: 楷体; font-weight: bold">   不自提订单:</font><asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

  
        
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" Width="100%"  DataKeyNames="ddid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" 
                     ForeColor="#333333" 
            GridLines="None" PageSize="12" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               <asp:TemplateField HeaderText="订单号">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><a href="userddxqlb.aspx?id=<%#Eval("ddid")%>&&oid=<%#Eval("gmrq")%>&&jg=<%#Eval("totalprice") %>"><%#Eval("ddid") %></a>
              </ItemTemplate>
              </asp:TemplateField>



                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             



                <asp:BoundField HeaderText="收货人" DataField="receman" />
             



                  <asp:BoundField DataField="recephone" HeaderText="收货人电话" />
             



                  <asp:BoundField DataField="recepost" HeaderText="收货人邮编" />
                <asp:BoundField DataField="receadress" HeaderText="收货人地址" />
              
                         <asp:TemplateField HeaderText="支付">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("sfzf").ToString().Trim()=="True"?"已支付":"未支付"%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BorderStyle="Groove" ForeColor="#333333" HorizontalAlign="Center" 
                BackColor="#FFCC66" />
            <RowStyle HorizontalAlign="Center" ForeColor="#333333" BackColor="#FFFBD6" />
            <SelectedRowStyle BorderStyle="Ridge" BackColor="#FFCC66" Font-Bold="True" 
                ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

<SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
        </asp:GridView>
   <font style="color: #000000; font-family: 楷体; font-weight: bold"> 自提订单:</font><asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="12" Width="100%"  DataKeyNames="ddid" 
            onpageindexchanging="GridView3_PageIndexChanging" CellPadding="4" 
                     ForeColor="#333333" 
            GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderText="订单号">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><a href="userddztxq.aspx?id=<%#Eval("ddid") %>&&oid=<%#Eval("gmrq")%>"><%#Eval("ddid") %></a>
              </ItemTemplate>
              </asp:TemplateField>


                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label9" runat="server" 
                        Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             



                <asp:BoundField HeaderText="收货人姓名" DataField="receman" />
             



<asp:BoundField HeaderText="收货人电话" DataField="recephone"></asp:BoundField>




                  <asp:BoundField HeaderText="收货人邮编" DataField="recepost" />
                <asp:BoundField HeaderText="收货人地址" DataField="receadress" />
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BorderStyle="Groove" ForeColor="#333333" HorizontalAlign="Center" 
                BackColor="#FFCC66" />
            <RowStyle HorizontalAlign="Center" ForeColor="#333333" BackColor="#FFFBD6" />
            <SelectedRowStyle BorderStyle="Ridge" BackColor="#FFCC66" Font-Bold="True" 
                ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

<SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
        </asp:GridView>
 
      
    </div>
</asp:Content>

