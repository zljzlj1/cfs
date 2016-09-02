<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scncp.aspx.cs" Inherits="scncp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>020农村社区电商网络平台</title>
 
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
        .style3
        {
            height: 25px;
            width: 203px;
        }
        .style5
        {
            width: 363px;
        }
        .style6
        {
            width: 211px;
        }
        .style7
        {
            width: 84px;
        }
        .style8
        {
            height: 25px;
            width: 363px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:70%; height: 500px;">
        <tr>
                <td class="style5">
                    上传农产品
                    </td>
                <td class="style6" colspan="2">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="style5">
                    <span style="color: #FF0000; font-size: 9px;">*</span>农产品名称：</td>
                <td class="style7"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入不超过10个字" 
                    ForeColor="Red" ValidationExpression="\S{1,10}" Font-Size="12px" ></asp:RegularExpressionValidator>    
                </td>
                 <td class="style3" rowspan="3">
                    <asp:Image ID="Image1" runat="server"  Width="270px" Height="250px"/>
                </td>
            </tr>   <tr>
                <td class="style8">
                    <span style="color: #FF0000; font-size: 9px;">*</span>农产品数量：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="75px"></asp:TextBox>
               <asp:RangeValidator ID="RangeValidator1" runat="server"  ControlToValidate="TextBox2" MaximumValue="9999.99" MinimumValue="0.00" Type="Currency" Font-Size="12px" ForeColor="#CC0000">请正确输入（格式：0-9999.99）</asp:RangeValidator> </td>
            </tr>
            <tr><td class="style5"><span style="color: #FF0000; font-size: 9px;">*</span>需求单位</td><td class="style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="77px"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入不超过5个字" 
                    ForeColor="Red" ValidationExpression="\S{1,5}" Font-Size="12px" ></asp:RegularExpressionValidator>
                </td></tr>
         
            <tr>
                <td class="style8" rowspan="2">
                    农产品图片:</td>
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
            <td class="style5">
                    <span style="color: #FF0000; font-size: 9px;">*</span>农产品价格</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <span style="font-size: 12px; color: #FF0000;">如需面议价格为0</span><asp:RangeValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox4" MaximumValue="9999.99" MinimumValue="0.00" 
            Type="Currency" Font-Size="12px" ForeColor="#CC0000">请正确输入（格式：0-9999.99）</asp:RangeValidator>
            </td>
            </tr>
                <tr>
            <td class="style5">
                    <span style="color: #FF0000; font-size: 9px;">*</span>农产品类别</td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            </tr>
                  <tr>
            <td class="style5">
                     农产品详细信息：</td>
            <td colspan="2">
              
                <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="50px" TextMode="MultiLine" Columns="80"  Rows="8"></asp:TextBox>
              
            </td>
            </tr>
             <tr>
            <td class="style5">
                    </td>
            <td colspan="2">
              
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="上传" 
            style="width: 40px; " />
            </td>
            </tr>
        </table>
    

          
    </div>
    </form>
</body>
</html>
