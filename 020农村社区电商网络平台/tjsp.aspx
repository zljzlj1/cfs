<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjsp.aspx.cs" Inherits="tjsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 101px;
        }
        .style2
        {
            width: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:80%; height: 500px;">
        <tr>
                <td class="style2">
                    上传商品
                    </td>
                <td class="style6" colspan="2">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="style2">
                    <span style="color: #FF0000; font-size: 9px;">*</span>商品名称：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入不超过10个字" 
                        Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,10}"></asp:RegularExpressionValidator>
                </td>
                 <td class="style3" rowspan="3">
                    <asp:Image ID="Image1" runat="server"  Width="278px" Height="250px"/>
                </td>
            </tr>   <tr>
                <td class="style2">
                    <span style="color: #FF0000; font-size: 9px;">*</span>商品库存数量：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="63px"></asp:TextBox>
                    <asp:RangeValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBox2" Font-Size="12px" ForeColor="#CC0000" 
                        MaximumValue="9999.99" MinimumValue="0.00" Type="Currency">请正确输入（格式：0-9999.99）</asp:RangeValidator>
                </td>
            </tr>
            <tr><td class="style2"><span style="color: #FF0000; font-size: 9px;">*</span>单位</td><td class="style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="71px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入不超过5个字" 
                    Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,5}"></asp:RegularExpressionValidator>
                </td></tr>
         
            <tr>
                <td class="style2" rowspan="2">
                    商品图片:</td>
                <td class="style7" rowspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
           
           
           
           
           
           
           
            <tr>

                <td class="style1">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="上传" />
                </td>
            </tr>
            <tr>
            <td class="style2">
                    <span style="color: #FF0000; font-size: 9px;">*</span>商品价格</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" Width="93px"></asp:TextBox>
                <span style="font-size: 12px; color: #FF0000;">单位：元 &nbsp;如需面议价格为0;</span><asp:RangeValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox4" MaximumValue="9999.99" MinimumValue="0.00" 
            Type="Currency" Font-Size="12px" ForeColor="#CC0000">请正确输入（格式：0-9999.99）</asp:RangeValidator></td>
            </tr>
                <tr>
            <td class="style2">
                    <span style="color: #FF0000; font-size: 9px;">*</span>商品类别</td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            </tr>
                  <tr>
            <td class="style2">
                     商品详细信息：</td>
            <td colspan="2">
              
                <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="50px" TextMode="MultiLine" Columns="80"  Rows="8"></asp:TextBox>
              
            </td>
            </tr>
             <tr>
            <td class="style2">
                    </td>
            <td colspan="2">
              
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="添加" 
            style="width: 40px; height: 21px;" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
