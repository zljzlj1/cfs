<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qrkhdd.aspx.cs" Inherits="qrkhdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">  a{ text-decoration:none; color:Black;}</style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div style="border-style: dashed; border-width: thin; width: 850px; height: 860px">
         <font style="color: #000000; font-family: 楷体; font-weight: bold"> 订单状态：</font><asp:DropDownList 
            ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="False">未确认</asp:ListItem>
            <asp:ListItem Value="True">已确认</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Value="False">未发货</asp:ListItem>
            <asp:ListItem Value="True">已发货</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList4_SelectedIndexChanged">
            <asp:ListItem Value="False">未核对</asp:ListItem>
            <asp:ListItem Value="True">已核对</asp:ListItem>
        </asp:DropDownList>
         <font style="color: #000000; font-family: 楷体; font-weight: bold">订单号：</font><asp:TextBox 
             ID="TextBox3" runat="server" Class="s"></asp:TextBox> <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton1_Click" />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="4" Width="100%"  DataKeyNames="ddxqid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" 
                     Height="250px" onrowdatabound="GridView2_RowDataBound" ForeColor="#333333" 
            GridLines="None" onrowdeleting="GridView2_RowDeleting" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
         <asp:BoundField DataField="ddid" HeaderText="订单号" ReadOnly="True" />
       



                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             
                      <asp:BoundField DataField="spmc" HeaderText="商品"  />
             



                <asp:BoundField HeaderText="数量" DataField="num" />
             



<asp:BoundField HeaderText="单价" DataField="spjg"></asp:BoundField>
                <asp:BoundField HeaderText="运费" DataField="ktfy"/>

                  <asp:BoundField DataField="tyjg" HeaderText="小计" />


                  <asp:TemplateField HeaderText="订单状态">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><asp:Label ID="Label6" runat="server" Text='<% #Eval("sjqr"=="False"?"未确认":"已确认")%>'></asp:Label>|<asp:Label ID="Label1" runat="server" Text='<% #Eval("fh"=="False"?"未发货":"已发货")%>'></asp:Label><br /><asp:Label ID="Label7" runat="server" Text='<% #Eval("sfzf"=="False"?"未支付":"已支付")%>'></asp:Label>|<asp:Label ID="Label8" runat="server" Text='<% #Eval("ddhd"=="False"?"未核对":"已核对")%>'></asp:Label></ItemTemplate>
              </asp:TemplateField>
                       <asp:TemplateField HeaderText="管理">
                             <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
									<ItemTemplate>
										<a href='sjddgl.aspx?id=<%#Eval("ddxqid")%>&&oid=<%#Eval("ddid")%> '>
											管理</a>
									</ItemTemplate>            
                        </asp:TemplateField>
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
 
          
                 <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>


        <br />
          <font style="color: #000000; font-family: 楷体; font-weight: bold">自提：</font><asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem Value="False">未支付</asp:ListItem>
            <asp:ListItem Value="True">已支付</asp:ListItem>
        </asp:DropDownList>
     
                 <font style="color: #000000; font-family: 楷体; font-weight: bold">订单号：</font><asp:TextBox ID="TextBox2" runat="server" Class="s"></asp:TextBox>&nbsp&nbsp
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton2_Click" />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="4" Width="100%"  DataKeyNames="ddxqid" 
            onpageindexchanging="GridView3_PageIndexChanging" CellPadding="4" 
                     Height="250px" onrowdatabound="GridView3_RowDataBound" ForeColor="#333333" 
            GridLines="None" onrowdeleting="GridView3_RowDeleting" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
         <asp:BoundField DataField="ddid" HeaderText="订单号" ReadOnly="True" />
       



                     <asp:TemplateField HeaderText="下单时间">
                <ItemTemplate><asp:Label ID="Label9" runat="server" 
                        Text='<% #Eval("gmrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             
                      <asp:BoundField DataField="spmc" HeaderText="商品"  />
             



                <asp:BoundField HeaderText="数量" DataField="num" />
             



<asp:BoundField HeaderText="单价" DataField="spjg"></asp:BoundField>
                <asp:BoundField DataField="tyjg" HeaderText="小计" />




                  <asp:TemplateField HeaderText="订单状态">
                   <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
                <ItemTemplate><asp:Label ID="Label10" runat="server" 
                       Text='<% #Eval("ddhd"=="False"?"未自提":"已自提")%>'></asp:Label>|<asp:Label 
                        ID="Label11" runat="server" 
                        Text='<% #Eval("sjqr"=="False"?"未确认":"已确认")%>'></asp:Label><br />
                    <asp:Label ID="Label12" runat="server" 
                       Text='<% #Eval("fh"=="False"?"未发货":"已发货")%>'></asp:Label>|<asp:Label 
                        ID="Label13" runat="server" 
                       Text='<% #Eval("yhsfzf"=="False"?"未支付":"已支付")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                       <asp:TemplateField HeaderText="管理">
                             <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" ></ItemStyle>
									<ItemTemplate>
										<a href='yhztddgl.aspx?id=<%#Eval("ddxqid")%>&&oid=<%#Eval("ddid")%>'>
											管理</a>
									</ItemTemplate>            
                        </asp:TemplateField>
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
 
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
    </div>
    </form>
</body>
</html>
