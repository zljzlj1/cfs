<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjsptp.aspx.cs" Inherits="sjsptp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .zczz td{  border: 2px ridge #808080;}
.zczz{margin-top: 0px;}
* {margin: 0;padding: 0;border: 0;list-style-type:none; }
a,img{border:0;  color:Black;    text-decoration: none;}
.ul, li{padding: 0px;margin: 0px;border-width: 0px;}
.s{ border: Silver 1px solid;  }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" height: 500px; width: 850px;">
     <table  >
             <tr>
                       <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="3">
        <ItemTemplate>
            
                         <td>
                             <table class="zczz"
                                 style=" width:280px; font-weight: bold;height: 55px; padding:5px; border-collapse:collapse; font-size:x-small; " >
                                 <tr>
                                     <td align="center" class="style1" rowspan="3" width="80">
                                       
                                         
                                             <asp:Image ID="Image2" runat="server" Height="95px" BorderWidth="0px"
                                ImageUrl='<%# DataBinder.Eval(Container.DataItem,"sptp") %>' Width="85px" />
                                
                                     </td>
                                     <td >
           
                                      
                                        商品名称:<%# DataBinder.Eval(Container.DataItem,"spmc") %></td>
                                 </tr>
                                 
                   
                                
                                 <tr>
                                     <td >
                                        商品状态:<%#Eval("spzt").ToString().Trim()=="True"?"上架":"下架"%>  <br />  上架时间:<%#Eval("spsjsj","{0:yyyy-MM-dd HH:mm:ss}") %>                 </td>
             </tr>
                             </table>
                         </td>
                     </ItemTemplate>
                    </asp:DataList>
             </tr>
         </table>
  
         
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Names="楷体" ForeColor="Black"></asp:Label>
              
      <br />
        <asp:Panel ID="Panel1" runat="server">
          
<span style="margin-left: 20px"><asp:label id="lblCurrentPage" runat="server" Width="90px" Font-Size="9pt"></asp:label>&nbsp;
<asp:linkbutton id="btnFirst" runat="server" CommandArgument="first" Font-Size="9pt" onclick="PagerButtonClick">首页</asp:linkbutton>&nbsp;
<asp:linkbutton id="btnPrev" runat="server" CommandArgument="prev" Font-Size="9pt" onclick="PagerButtonClick">前一页</asp:linkbutton>&nbsp;
<asp:linkbutton id="btnNext" runat="server" CommandArgument="next" Font-Size="9pt" onclick="PagerButtonClick">下一页</asp:linkbutton>&nbsp;
<asp:linkbutton id="btnLast" runat="server" CommandArgument="last" Font-Size="9pt" onclick="PagerButtonClick">末页</asp:linkbutton>&nbsp;

<asp:label id="Label2" runat="server" Width="30px" Font-Size="9pt">转到</asp:label>

    <asp:textbox id="TextBox1" runat="server" Width="31px" Height="15px" 
         Font-Size="9pt" CssClass="s"></asp:textbox>
<asp:label id="Label3" runat="server" Font-Size="9pt" CssClass="lable">页</asp:label>

                  
                     <asp:button id="Button1" runat="server" Width="44px" Height="15px" BorderStyle="Groove" Text="确定"
Font-Size="9pt" onclick="Button1_Click"></asp:button>
</span>       </asp:Panel> 

        
        


    </div>
    </form>
</body>
</html>
