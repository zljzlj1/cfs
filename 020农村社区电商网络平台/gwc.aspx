<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gwc.aspx.cs" Inherits="gwc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/MasterPage.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 500px">
        
           
       购物车:<asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

  
        
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="gwid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" 
                     Height="250px" ForeColor="#333333" 
            GridLines="None" 
           onrowdatabound="GridView2_RowDataBound" 
           onrowdeleting="GridView2_RowDeleting" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>

                      <asp:BoundField DataField="spmc" HeaderText="商品" 
                    ReadOnly="True"  />
             



                <asp:BoundField HeaderText="单价" DataField="spjg" ReadOnly="True" />
             



                       <asp:BoundField DataField="num" HeaderText="数量" />
                       

                     <asp:TemplateField HeaderText="快递费用">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("zt").ToString().Trim()=="True"?"0":Eval("ktfy")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="自提">
                <ItemTemplate><asp:Label ID="Label9" runat="server" Text='<% #Eval("zt").ToString().Trim()=="True"?"自提":"不自提"%>'></asp:Label><asp:HiddenField ID="HiddenField4" runat="server" Value='<%#Eval("zt") %>' /></ItemTemplate>
                </asp:TemplateField>



                  <asp:BoundField HeaderText="小计" DataField="jg" ReadOnly="True" />
             
             
                   <asp:BoundField DataField="sjmc" HeaderText="商家" />
             
             
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />


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
 合计：<%=sum %>元<br />
       商品数量：<%=b %><br />
      &nbsp;  &nbsp; &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
           Height="25px" ImageUrl="~/image/下一步.png" 
            onclick="ImageButton1_Click" />
       &nbsp; &nbsp; <asp:ImageButton ID="ImageButton4" runat="server" Height="25px" 
           ImageUrl="~/image/jxgw.png" PostBackUrl="~/index.aspx" />
       &nbsp; &nbsp; 
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/image/qkgwc.png" 
           Height="25px" onclick="ImageButton5_Click"/>
    </div>


</asp:Content>

