<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ncp.aspx.cs" Inherits="admin_ncp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>后台管理系统</title>
        <link href="css/skint.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 28px;
            line-height: 28px;
            background: #FFFFCC;
            width: 100px;
        }
    
     * {border-style: none;
         border-color: inherit;
         border-width: 0;
         padding: 0;
         list-style-type:none;
         margin-left: 0;
         margin-right: 0;
         margin-bottom: 0;
     }
a,img{border:0; text-decoration: none;}
body, td {font-size: 12px;}
.tab {width:660px; margin-left:30px;}
#lanrenzhijia1 {width:640px;height:300px;}
#lanrenzhijia2 {width:640px;height:300px;}
.lanren1 {width:212px;height:29px;line-height:29px;background-image:url(images/news_bghover1.gif);cursor:pointer;}
.lanren2 {width:212px;height:29px;line-height:29px;background-image:url(images/news_bghover2.gif);cursor:pointer;}
.tab1 {width:96px;height:29px;line-height:29px;float:left;text-align:center;cursor:pointer;color:#FFF;}
.tab2 {width:116px;height:29px;line-height:29px;float:left;text-align:center;cursor:pointer;color:#000;}
#bg{ margin-left:20px; margin-top:20px;}
.s{ BORDER-RIGHT: #000000 0px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 0px solid; BORDER-BOTTOM: #000000 1px solid }
.style1{ width: 100px;
     }
.style2{ width: 155px;
     }
 
     .style3
     {
         width: 51px;
     }
 
 </style>
</head>
<body style="background-color:transparent">
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" 
           >
  <tr>
    <td width="17" valign="top"   style="background-image: url('images/mail_leftbg.gif')"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top"  style="background-image: url('images/content-bg.gif')"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">农产品类别</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"  style="background-image: url('images/mail_rightbg.gif')"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" style="background-image: url('images/mail_leftbg.gif')">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <div class="divtext">
        

         <script type="text/javascript">
             function setTab03Syn(i) {
                 selectTab03Syn(i);
             }

             function selectTab03Syn(i) {
                 switch (i) {
                     case 1:
                         document.getElementById("lanrenzhijia1").style.display = "block";
                         document.getElementById("lanrenzhijia2").style.display = "none";
                         document.getElementById("font1").style.color = "#ffffff";
                         document.getElementById("font2").style.color = "#000000";
                         break;
                     case 2:
                         document.getElementById("lanrenzhijia1").style.display = "none";
                         document.getElementById("lanrenzhijia2").style.display = "block";
                         document.getElementById("font1").style.color = "#000000";
                         document.getElementById("font2").style.color = "#ffffff";
                         break;
                 }
             }

</script>
<div class="tab">
  <div id="bg" class="lanren1">
    <div id="font1" class="tab1" onmouseover="setTab03Syn(1);document.getElementById('bg').className='lanren1'">添加农产品类别</div>
    <div id="font2" class="tab2" onmouseover="setTab03Syn(2);document.getElementById('bg').className='lanren2'">修改农产品类别</div>
  </div>
  <div id="lanrenzhijia1">
  
  
  
  
      <div style=" margin-left:20px;">
         
     <div style=" margin-top:20px;">
           <font style="color: #000000; font-family: 楷体; font-weight: bold; font-size: 24px;" >农产品类别：</font><asp:TextBox ID="TextBox1" runat="server" Class="s"></asp:TextBox>&nbsp&nbsp
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/admin/images/2.gif" onclick="ImageButton1_Click" />
           
      
   </div>
             
         
      </div>
  
  
  
  
  </div>
  <div id="lanrenzhijia2" style="display:none" > 
  
      <div style=" margin-left:20px;">
           <asp:ScriptManager ID="ScriptManager2" runat="server" EnableScriptGlobalization="True" EnableScriptLocalization="True"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
          <ContentTemplate>
              <font style="color: #000000; font-family: 楷体; font-weight: bold">商品类别：</font><asp:TextBox ID="TextBox2" runat="server" Class="s"></asp:TextBox>&nbsp&nbsp
    <asp:ImageButton ID="ImageButton2" runat="server" 
        ImageUrl="~/admin/images/1.jpg" onclick="ImageButton2_Click" />
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="5" Width="100%"  DataKeyNames="ncplbid" 
            onpageindexchanging="GridView2_PageIndexChanging" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" Height="250px" onrowdatabound="GridView2_RowDataBound" 
                  onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
                  onrowcancelingedit="GridView2_RowCancelingEdit" 
                  onrowupdating="GridView2_RowUpdating" GridLines="None" >
            <Columns>
                <asp:TemplateField HeaderText="序号"><ItemTemplate> 
<asp:Label ID="Label2" runat="server" Text='<%# this.GridView2.PageIndex * this.GridView2.PageSize + this.GridView2.Rows.Count + 1%>' /> 
</ItemTemplate> 
</asp:TemplateField>
         <asp:BoundField DataField="ncpname" HeaderText="农产品类别" />
       
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
               <br />
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
 <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Names="楷体" 
                       ForeColor="Black" Visible="False"></asp:Label>
        &nbsp;&nbsp;</ContentTemplate></asp:UpdatePanel>
            </ContentTemplate>
          </asp:UpdatePanel>


      </div>
  
  </div>
</div>





  
    </div>

     </td>
    <td style="background-image: url('images/mail_rightbg.gif')">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" style="background-image: url('images/mail_leftbg.gif')"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td style="background-image: url('images/buttom_bgs.gif')"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" style="background-image: url('images/mail_rightbg.gif')"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
