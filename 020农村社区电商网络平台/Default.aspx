<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">a{ color:Black; text-decoration:none;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px">
        
           
       <font style="color: #000000; font-family: 楷体; font-weight: bold">   不自提订单:</font><asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

  
        
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="3" Width="100%"  DataKeyNames="ddxqid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" 
                     Height="250px" ForeColor="#333333" 
            GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               <asp:TemplateField HeaderText="订单号">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><a href="userddxqlb.aspx?id=<%#Eval("ddid") %>"><%#Eval("ddid") %></a>
              </ItemTemplate>
              </asp:TemplateField>



                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             
                      <asp:BoundField DataField="spmc" HeaderText="商品" 
                    ReadOnly="True"  />
             



                <asp:BoundField HeaderText="收货人" DataField="receman" />
             



                  <asp:BoundField DataField="recephone" HeaderText="收货人电话" />
             



                  <asp:TemplateField HeaderText="订单状态">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%#Eval("sjqr").ToString().Trim()=="False"?"未确认":"已确认"%>'></asp:Label>|<asp:Label ID="Label1" runat="server" Text='<% #Eval("fh").ToString().Trim()=="False"?"未发货":"已发货"%>'></asp:Label><br /><asp:Label ID="Label7" runat="server" Text='<% #Eval("sfzf").ToString().Trim()=="False"?"未支付":"已支付"%>'></asp:Label>|<asp:Label ID="Label8" runat="server" Text='<% #Eval("ddhd").ToString().Trim()=="False"?"未核对":"已核对"%>'></asp:Label>
              </ItemTemplate>
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
            AllowPaging="True" PageSize="2" Width="100%"  DataKeyNames="ddxqid" 
            onpageindexchanging="GridView3_PageIndexChanging" CellPadding="4" 
                     Height="250px" ForeColor="#333333" 
            GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderText="订单号">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><a href="userddxqlb.aspx?id=<%#Eval("ddid") %>"><%#Eval("ddid") %></a>
              </ItemTemplate>
              </asp:TemplateField>


                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label9" runat="server" 
                        Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             
                      <asp:BoundField DataField="spmc" HeaderText="商品"  />
             



                <asp:BoundField HeaderText="数量" DataField="num" />
             



<asp:BoundField HeaderText="单价" DataField="spjg"></asp:BoundField>




                  <asp:TemplateField HeaderText="订单状态">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><asp:Label ID="Label10" runat="server" 
                       Text='<% #Eval("ddhd").ToString().Trim()=="False"?"未自提":"已自提"%>'></asp:Label>|<asp:Label 
                        ID="Label11" runat="server" 
                        Text='<% #Eval("sjqr").ToString().Trim()=="False"?"未确认":"已确认"%>'></asp:Label><br />
                    <asp:Label ID="Label12" runat="server" 
                       Text='<% #Eval("fh").ToString().Trim()=="False"?"未发货":"已发货"%>'></asp:Label>|<asp:Label 
                        ID="Label13" runat="server" 
                       Text='<% #Eval("yhsfzf").ToString().Trim()=="False"?"未支付":"已支付"%>'></asp:Label></ItemTemplate>
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
 
      
    </div>
</asp:Content>