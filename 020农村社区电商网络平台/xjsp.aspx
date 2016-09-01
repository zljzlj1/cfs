<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xjsp.aspx.cs" Inherits="xjsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
        <style type="text/css">
        body{font-family: 楷体; font-size: 14px; font-weight: bolder;}
 a{ text-decoration:none; color:Black;}
 .s{ border: Silver 1px solid;  }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
                 <font style="color: #000000; font-family: 楷体; font-weight: bold">商品：</font><asp:TextBox ID="TextBox2" runat="server" Class="s"></asp:TextBox>&nbsp&nbsp
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton2_Click" />
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="spid" 
            onpageindexchanging="GridView2_PageIndexChanging" CellPadding="4" 
                     Height="250px" onrowdatabound="GridView2_RowDataBound" onrowediting="GridView2_RowEditing" 
                  onrowcancelingedit="GridView2_RowCancelingEdit" 
                  onrowupdating="GridView2_RowUpdating" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="序号"><ItemTemplate> 
<asp:Label ID="Label2" runat="server" Text='<%# this.GridView2.PageIndex * this.GridView2.PageSize + this.GridView2.Rows.Count + 1%>' /> 
</ItemTemplate> 
</asp:TemplateField>
         <asp:BoundField DataField="spmc" HeaderText="商品名称" ReadOnly="True" />
       
                      <asp:BoundField DataField="spjg" HeaderText="商品价格" ReadOnly="True"  />
             



                     <asp:TemplateField HeaderText="商品类别">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("spmc")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="kcsl" HeaderText="商品库存数量" ReadOnly="True" />




                     <asp:TemplateField HeaderText="商品上架时间">
                <ItemTemplate><asp:Label ID="Label9" runat="server" Text='<% #Eval("spsjsj", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
             
             
             
                     <asp:TemplateField HeaderText="商品状态">
                <ItemTemplate><asp:Label ID="Label10" runat="server" Text='<% #Eval("spzt").ToString().Trim()=="True"?"上架":"下架"%>'></asp:Label></ItemTemplate></asp:TemplateField>
                   <asp:CheckBoxField DataField="spzt" Text="下架" HeaderText="是否下架" />
                <asp:CommandField HeaderText="操作" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerSettings Visible="False" />
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
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="f1" 
            onclick="link1" Font-Bold="True" Font-Names="楷体" ForeColor="Black">首页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument="p1" 
            onclick="link1" Font-Bold="True" Font-Names="楷体" ForeColor="Black">上一页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" CommandArgument="n1" 
            onclick="link1" Font-Bold="True" Font-Names="楷体" ForeColor="Black">下一页</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton8" runat="server" CommandArgument="l1" 
            onclick="link1" Font-Bold="True" Font-Names="楷体" ForeColor="Black">末页</asp:LinkButton>
 
                 <br />
                 <asp:Label ID="Label5" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
 
 
      </div>
    </form>
</body>
</html>
