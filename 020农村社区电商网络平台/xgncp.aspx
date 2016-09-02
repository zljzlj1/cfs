<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xgncp.aspx.cs" Inherits="xgncp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>020农村社区电商网络平台</title>
 <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
	<script>
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content1', {
	            cssPath: 'kindeditor/plugins/code/prettify.css',
	            uploadJson: 'kindeditor/asp.net/upload_json.ashx',
	            fileManagerJson: 'kindeditor/asp.net/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	            }
	        });
	        prettyPrint();
	    });
	</script>
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
        .style4
        {
            height: 25px;
            width: 98px;
        }
        .style5
        {
            width: 98px;
        }
        .style6
        {
            width: 211px;
        }
        .style7
        {
            width: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:70%;">
        <tr>
                <td class="style5">
                    修改农产品
                    </td>
                <td class="style6" colspan="2">
                    &nbsp;</td>
            </tr>
                <tr>
                <td class="style5">
                    上传时间：</td>
                <td class="style6" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    农产品名称：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="93px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入不超过10个字" 
                        Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,10}"></asp:RegularExpressionValidator>
                </td>
                 <td class="style3" rowspan="3">
                    <asp:Image ID="Image1" runat="server"  Width="278px" Height="250px"/>
                </td>
            </tr>   <tr>
                <td class="style4">
                    农产品数量：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="75px"></asp:TextBox>
                    <asp:RangeValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBox2" Font-Size="12px" ForeColor="#CC0000" 
                        MaximumValue="9999.99" MinimumValue="0.00" Type="Currency">请正确输入（格式：0-9999.99）</asp:RangeValidator>
                </td>
            </tr>
            <tr><td class="style5">需求单位</td><td class="style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="79px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入不超过5个字" 
                    Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,5}"></asp:RegularExpressionValidator>
                </td></tr>
         
            <tr>
                <td class="style4" rowspan="2">
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
                    农产品价格</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              <span style="font-size: 12px; color: #FF0000;">单位：元 &nbsp;如需面议价格为0;</span>
                <asp:RangeValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox4" Font-Size="12px" ForeColor="#CC0000" 
                    MaximumValue="9999.99" MinimumValue="0.00" Type="Currency">请正确输入（格式：0-9999.99）</asp:RangeValidator>
            </td>
            </tr>
                <tr>
            <td class="style5">
                    农产品类别</td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            </tr>
        </table>
        <br />
        农产品详细信息：
        <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="50px" TextMode="MultiLine" Columns="80"  Rows="8"></asp:TextBox>     <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="更新" 
            style="width: 40px; " />&nbsp;
        <asp:Button runat="server" ID="Button3"   
            Text="返回" PostBackUrl="~/xgncpxx.aspx" />
        <br />
        <br />
        &nbsp;&nbsp;
          
    </div>
    </form>
</body>
</html>

