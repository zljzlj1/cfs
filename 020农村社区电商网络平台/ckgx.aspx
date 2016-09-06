<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ckgx.aspx.cs" Inherits="ckgx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style type="text/css">
        .zczz td{  border: 2px ridge #808080;}
.zczz{margin-top: 0px;}
* {border-style: none;
               border-color: inherit;
               border-width: 0;
               margin: 0;
               padding: 0;
               list-style-type:none;
               height: 13px;
           }
a,img{border:0;  color:Black;    text-decoration: none;}
.s{ border: Silver 1px solid;  }
  .styled { border-radius:5px; width:100px; height:25px; padding:0 0px 0 0px;color:#fff;background-color:#3d69f7; font:14px "微软雅黑"; } 

</style>
</head>
<body>
    <form id="form1" runat="server">
 
     <div style=" height: 500px; width: 850px;">
       农产品种类<asp:DropDownList ID="DropDownList1" runat="server" 
             AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="styled">
         </asp:DropDownList>
     <table  >
             <tr>
                       <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="2" 
                           DataKeyField="ncpid">
        <ItemTemplate>
            
                         <td>
                             <table class="zczz"
                                 style=" width:380px; font-weight: bold;height: 55px; padding:5px; border-collapse:collapse; font-size:x-small; " >
                                 <tr>
                                     <td align="center" class="style1" rowspan="3" width="80">
                                       
                                         
                                            <a href="ncpxxxx.aspx?id=<%#Eval("ncpid") %>"> <asp:Image ID="Image2" runat="server" Height="95px" BorderWidth="0px"
                                ImageUrl='<%# DataBinder.Eval(Container.DataItem,"rcppic") %>' Width="85px" />
                                </a>
                                     </td>
                                     <td >
           
                                      
                                      <a href="ncpxxxx.aspx?id=<%#Eval("ncpid") %>">  农产品名称：  <%# DataBinder.Eval(Container.DataItem, "rcpname")%>农产品种类:<%#Eval("ncpname")%></a></td>
                                 </tr>
                                 
                   
                                
                                 <tr>
                                     <td >
                                     <a href="ncpxxxx.aspx?id=<%#Eval("ncpid") %>">  农产品数量：<%#Eval("tgsl")%><%#Eval("xqdw")%>&nbsp;发布人：<%#Eval("Username") %></a></td>
             </tr>    
              <tr>
                                     <td >
                               <a href="ncpxxxx.aspx?id=<%#Eval("ncpid") %>">农产品价格： <%#Eval("price")=="0"?"面议":Eval("price")%>  </a> 发布日期:<%#Eval("fbrq", "{0:yyyy-MM-dd HH:mm:ss}")%></td>
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
</span>     
   </asp:Panel>    
    </div>
    </form>
</body>
</html>
