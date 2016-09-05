<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userddxqlb.aspx.cs" Inherits="userddxqlb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">a{ color:Black; text-decoration:none;}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px">

     <font style="color: #000000; font-family: 楷体; font-weight: bold"> 不自提订单详情：</font><br />
              <font style="color: #000000; font-family: 楷体; font-weight: bold"> 订单号：</font>    <asp:Label ID="Label2" runat="server" Text="Label"  Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

      <br />  <font style="color: #000000; font-family: 楷体; font-weight: bold"> 购买时间：</font>     <asp:Label ID="Label3" runat="server" Text="Label"  Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
            <br />  <font style="color: #000000; font-family: 楷体; font-weight: bold"> 订单总价格：</font>     <asp:Label ID="Label4" runat="server" Text="Label"  Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>



        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" Width="100%"  DataKeyNames="ddxqid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" ForeColor="#333333" 
            GridLines="None" PageSize="12" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
             
                      <asp:BoundField DataField="sjmc" HeaderText="商家名称" />
             
                      <asp:BoundField DataField="spmc" HeaderText="商品"  />
             



                <asp:BoundField HeaderText="数量" DataField="num" />
             



<asp:BoundField HeaderText="单价" DataField="spjg"></asp:BoundField>
                <asp:BoundField HeaderText="运费" DataField="ktfy"/>

                  <asp:BoundField DataField="tyjg" HeaderText="小计" />


                  <asp:TemplateField HeaderText="订单状态">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><asp:Label ID="Label6" runat="server" Text='<% #Eval("sjqr").ToString().Trim()=="False"?"未确认":"已确认"%>'></asp:Label>|<asp:Label ID="Label1" runat="server" Text='<% #Eval("fh").ToString().Trim()=="False"?"未发货":"已发货"%>'></asp:Label><br /><asp:Label ID="Label7" runat="server" Text='<% #Eval("sfzf").ToString().Trim()=="False"?"未支付":"已支付"%>'></asp:Label>|<asp:Label ID="Label8" runat="server" Text='<% #Eval("ddhd").ToString().Trim()=="False"?"未核对":"已核对"%>'></asp:Label></ItemTemplate>
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
 

 <a href="ckdd.aspx"  style="text-decoration: none; color: #808080; font-family: 黑体; font-size: 14px;  ">返回</a>

</div>
</asp:Content>

