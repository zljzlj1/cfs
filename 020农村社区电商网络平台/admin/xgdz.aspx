<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xgdz.aspx.cs" Inherits="admin_xgdz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
 
    <style type="text/css">
        body{font-family: 楷体; font-size: 14px; font-weight: bolder;}
 .sa{ BORDER-RIGHT: #000000 0px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 0px solid; BORDER-BOTTOM: #000000 1px solid; width:80px;}
  </style>
</head>
<body>
    <form id="form1" runat="server">
     <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate> 
     <table width="100%" border="0" cellpadding="0" cellspacing="0" style="height: 500px" >
  <tr style="height:29px;">
    <td width="17" valign="top"   style="background-image: url('images/mail_leftbg.gif')"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top"  style="background-image: url('images/content-bg.gif')"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">省份修改</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"  style="background-image: url('images/mail_rightbg.gif')"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" style="background-image: url('images/mail_leftbg.gif')">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <div class="divtext">
          
        
           
  

           
         <font style="color: #000000; font-family: 楷体; font-weight: bold">省份：</font><asp:TextBox ID="TextBox1" runat="server" Class="s"></asp:TextBox>&nbsp&nbsp
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton1_Click" />
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="sfid" 
            onpageindexchanging="GridView1_PageIndexChanging" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Height="250px" onrowdatabound="GridView1_RowDataBound" 
                  onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                  onrowcancelingedit="GridView1_RowCancelingEdit" 
                  onrowupdating="GridView1_RowUpdating" GridLines="None" >
            <Columns>
                <asp:TemplateField HeaderText="序号"><ItemTemplate> 
<asp:Label ID="Label2" runat="server" Text='<%# this.GridView1.PageIndex * this.GridView1.PageSize + this.GridView1.Rows.Count + 1%>' /> 
</ItemTemplate> 
</asp:TemplateField>
        
       
            <asp:BoundField DataField="Sf" HeaderText="省份" >
                <ControlStyle Width="100%"  />
       </asp:BoundField>
                
             
                <asp:CommandField HeaderText="操作" ShowEditButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
          
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
        </asp:GridView>
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; 
       <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="f" 
            onclick="link" Font-Bold="True" Font-Names="楷体" ForeColor="Black">首页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="p" 
            onclick="link" Font-Bold="True" Font-Names="楷体" ForeColor="Black">上一页</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="n" 
            onclick="link" Font-Bold="True" Font-Names="楷体" ForeColor="Black">下一页</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="l" 
            onclick="link" Font-Bold="True" Font-Names="楷体" ForeColor="Black">末页</asp:LinkButton>
         
             
 


  
         <br />
         
             
 


  
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label></div>

     </td>
    <td style="background-image: url('images/mail_rightbg.gif')">&nbsp;</td>
  </tr>
  <tr style=" height:17px">
    <td valign="bottom" style="background-image: url('images/mail_leftbg.gif')"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td style="background-image: url('images/buttom_bgs.gif')"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" style="background-image: url('images/mail_rightbg.gif')"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </ContentTemplate></asp:UpdatePanel>
    </form>
</body>
</html>
