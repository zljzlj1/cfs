<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xgwzxx.aspx.cs" Inherits="xgwzxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>020农村社区电商网络平台</title>
          <style type="text/css">
    a{ text-decoration:none; color:Black;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="txtid" 
            onpageindexchanging="GridView5_PageIndexChanging" CellPadding="4" 
            Height="250px" onrowdatabound="GridView5_RowDataBound" 
                  onrowdeleting="GridView5_RowDeleting" GridLines="None" 
            ForeColor="#333333" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="序号"><ItemTemplate> 
<asp:Label ID="Label2" runat="server" Text='<%# this.GridView5.PageIndex * this.GridView5.PageSize + this.GridView5.Rows.Count + 1%>' /> 
</ItemTemplate> 
</asp:TemplateField>
        
                <asp:BoundField DataField="titlername" HeaderText="文章标题" ReadOnly="True" />
      
                
                       <asp:TemplateField HeaderText="上传日期">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("txtrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="审核日期">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("shsj", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="wtgly" HeaderText="未通过理由" />
                
             
                <asp:TemplateField HeaderText="文章发布状态">
                     <ItemTemplate> <asp:Label ID="Label7" runat="server" Text='<%#Eval("txtfbzt").ToString().Trim()=="True"?"发布":"未发布"  %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
            
                   <asp:HyperLinkField FooterText="查看" HeaderText="查看" Text="查看" 
                    DataNavigateUrlFields="txtid" 
                    DataNavigateUrlFormatString="xgwz.aspx?id={0}" >
                <ItemStyle ForeColor="#DEBA84" />
                </asp:HyperLinkField>
             
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
          
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerSettings Visible="False" />
            <PagerStyle BorderStyle="Groove" ForeColor="White" HorizontalAlign="Center" 
                BackColor="#284775" />
            <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BorderStyle="Ridge" BackColor="#E2DED6" Font-Bold="True" 
                ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        &nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:LinkButton ID="LinkButton17" runat="server" CommandArgument="f4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">首页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton18" runat="server" CommandArgument="p4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">上一页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton19" runat="server" CommandArgument="n4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">下一页</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton20" runat="server" CommandArgument="l4" 
            onclick="link4" Font-Bold="True" Font-Names="楷体" ForeColor="Black">末页</asp:LinkButton>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>

    </div>
    </form>
</body>
</html>
