<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scwz.aspx.cs" Inherits="scwz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

 <head  runat="server">
   <title>020农村社区电商网络平台</title>
 <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
	<script >
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
        添加文章
        <table style="width:111%;">
         
            <tr>
                <td class="style1">
                    文章标题：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入不超过10个字" 
                        Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
     
         
                  <tr>
                <td class="style1">
                    发表人：</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    文章内容：</td>
                <td>
                    <textarea id="content1" cols="100" rows="80" 
                        style="width:619px; height:380px;visibility:hidden;" runat="server"> </textarea>
</td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" />
                    &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

