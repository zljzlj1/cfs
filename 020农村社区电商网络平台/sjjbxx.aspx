<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjjbxx.aspx.cs" Inherits="sjjbxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">  .styled { border-radius:5px; width:100px; height:25px; padding:0 0px 0 0px;color:#fff;background-color:#3d69f7; font:14px "微软雅黑"; } 
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table cellspacing="0" cellpadding="0" width="100%" class="tablexian"  border="0" style="height: 500px">
     
     <tr><td style="height:31px; " ><img src="image/7.png" /></td></tr>
     
     
        <tr >
            <td align="right" colspan="2" style="height:5px; background-color: #FFFF99;">
                </td>
        </tr>
     <tr>
         <td align="right" style="width: 100px" >
                <span style="color: #FF0000; font-size: 9px;">*</span>用户名：</td>
         <td align="left">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" >
                <span style="color: #FF0000; font-size: 9px;">*</span>联系电话：</td>
         <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="s"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入联系电话" 
        ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="code0" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入正确的电话号码" 
                    ForeColor="Red" ValidationExpression="\S{1,20}"></asp:RegularExpressionValidator>
             </td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" >
                 <span style="color: #FF0000; font-size: 9px;">*</span>   联系人：</td>
         <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="s"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="请输入姓名" 
        ForeColor="Red"></asp:RequiredFieldValidator>  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="请输入不超过10个字" 
                    ForeColor="Red" ValidationExpression="\S{1,10}"></asp:RegularExpressionValidator></td>
     </tr>
      <tr>
         <td align="right" style="width: 100px" >
                <span style="color: #FF0000; font-size: 9px;">*</span>快递费用：</td>
         <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="s"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入费用" 
        ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="请正确输入（格式：1.00）" ValidationExpression="^[0-9]+(.[0-9]{2})?$" 
                                        Font-Size="12px" ForeColor="Red"></asp:RegularExpressionValidator>
          </td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" >
                 <span style="color: #FF0000; font-size: 9px;">*</span>地址：</td>
         <td align="left">
                <asp:ScriptManager ID="ProvinceContect" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="bind_Province" runat="server" AutoPostBack="True" 
                            CssClass="styled" onselectedindexchanged="bind_Province_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="bind_City" runat="server" AutoPostBack="True" 
                            CssClass="styled" onselectedindexchanged="bind_City_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="bind_Borough" runat="server" AutoPostBack="True" 
                            CssClass="styled" onselectedindexchanged="bind_Borough_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="bind_zh" runat="server" AutoPostBack="True" 
                            CssClass="styled" onselectedindexchanged="bind_zh_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="bind_cun" runat="server" CssClass="styled">
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
           </td>
     </tr>
          <tr>
         <td align="right" style="width: 100px" >
                具体地址：</td>
         <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="s"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="请输入不超过50个字" 
                    ForeColor="Red" ValidationExpression="\S{1,50}"></asp:RegularExpressionValidator></td>
     </tr>
       <tr>
         <td align="right" style="width: 100px" >
                入驻时间：</td>
         <td align="left" >
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           </td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" rowspan="3">
               商家图片：</td>
         <td align="left" rowspan="3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="上传" 
                    Height="19px" />
                <asp:Image ID="Image1" runat="server" Height="250px" Width="278px" />
                </td>
     </tr>
        <tr >
         <td align="right" style="width: 100px" >
                &nbsp;</td>
         <td align="left">
                <span style="color: #FF0000; font-size: 12px;"></span>
                </td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" >
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/4.gif" 
                    onclick="ImageButton1_Click" />
                &nbsp; </td>
         <td align="left">
              
                </td>
     </tr>
    
</table>

    </div>
    </form>
</body>
</html>
