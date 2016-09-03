<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tgwz.aspx.cs" Inherits="admin_tgwz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
        <style type="text/css">a{ color:#DEBA84;}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate> 
    <table width="100%" border="0" cellpadding="0" cellspacing="0" 
           >
  <tr>
    <td width="17" valign="top"   style="background-image: url('images/mail_leftbg.gif')"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top"  style="background-image: url('images/content-bg.gif')"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">文章信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"  style="background-image: url('images/mail_rightbg.gif')"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" style="background-image: url('images/mail_leftbg.gif')">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <div class="divtext">
          <table cellspacing="0" cellpadding="0" width="100%"  class="tablexian" border="0">
     


        <tr >
            <td align="left" colspan="2" style="height:5px; background-color: #FFFF99;">
                <span style="color: #FF0000; font-size: 12px; font-weight: bolder;"> 
                注:不要把所有的文章信息全部删除，否则将没有文章！</span></td>
        </tr>
     
</table>

   <font style="color: #000000; font-family: 楷体; font-weight: bold">文章：</font><asp:DropDownList
       ID="DropDownList1" runat="server" AutoPostBack="True" 
              onselectedindexchanged="DropDownList1_SelectedIndexChanged">
              <asp:ListItem Value="否">未通过</asp:ListItem>
              <asp:ListItem Value="是">已通过</asp:ListItem>
   </asp:DropDownList><asp:TextBox ID="TextBox5" runat="server" Class="s"></asp:TextBox>
    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton5_Click" />
       <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="txtid" 
            onpageindexchanging="GridView5_PageIndexChanging" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Height="250px" onrowdatabound="GridView5_RowDataBound" 
                   GridLines="None" 
              ForeColor="#DEBA84" >
            <Columns>
                <asp:TemplateField HeaderText="序号"><ItemTemplate> 
<asp:Label ID="Label2" runat="server" Text='<%# this.GridView5.PageIndex * this.GridView5.PageSize + this.GridView5.Rows.Count + 1%>' /> 
</ItemTemplate> 
</asp:TemplateField>
             
        
                <asp:HyperLinkField FooterText="查看" HeaderText="文章标题" Text="查看" 
                    DataNavigateUrlFields="txtid,sftg" 
                    DataNavigateUrlFormatString="shwzwtg.aspx?id={0}&amp;&amp;sid={1}" 
                    DataTextField="titlername" >
                </asp:HyperLinkField>
                
             
                <asp:TemplateField HeaderText="文章上传日期">
                <ItemTemplate><asp:Label ID="Label8" runat="server" Text='<% #Eval("txtrq", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
                
      <asp:BoundField DataField="adminname" ReadOnly="True" HeaderText="审核人" />
                
             
                <asp:TemplateField HeaderText="审核时间">
                <ItemTemplate><asp:Label ID="Label9" runat="server" Text='<% #Eval("shsj", "{0:yyyy-MM-dd HH:mm:ss}")%>'></asp:Label></ItemTemplate>
                </asp:TemplateField>
          
        
                <asp:TemplateField HeaderText="是否通过">
                     <ItemTemplate> <asp:Label ID="Label7" runat="server" Text='<%#Eval("sftg").ToString().Trim()=="否"?"否":"是"  %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="文章发布状态">
                     <ItemTemplate> <asp:Label ID="Label7" runat="server" Text='<%#Eval("txtfbzt").ToString().Trim()=="False"?"否":"是"  %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
             
                <asp:BoundField DataField="wtgly" HeaderText="未通过理由" />
                <asp:BoundField DataField="shzk" HeaderText="审核状况" />
              <asp:HyperLinkField FooterText="查看" HeaderText="查看" Text="查看" 
                    DataNavigateUrlFields="txtid,sftg" 
                    DataNavigateUrlFormatString="shwzwtg.aspx?id={0}&amp;&amp;sid={1}" >
                </asp:HyperLinkField>
             
                
          
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerSettings Visible="False" />
            <PagerStyle BorderStyle="Groove" ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BorderStyle="Ridge" BackColor="#738A9C" Font-Bold="True" 
                ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
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

     </td>
    <td style="background-image: url('images/mail_rightbg.gif')">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" style="background-image: url('images/mail_leftbg.gif')"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td style="background-image: url('images/buttom_bgs.gif')"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" style="background-image: url('images/mail_rightbg.gif')"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table></ContentTemplate></asp:UpdatePanel>
    </div>
    </form>
</body>
</html>




















