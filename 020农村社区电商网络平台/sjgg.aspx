<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjgg.aspx.cs" Inherits="sjgg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
          .s{border: Silver 1px solid;} </style>
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
      <table cellspacing="0" cellpadding="0" width="100%" class="tablexian"  border="0" style="height: 500px">
     
     <tr><td style="height:31px; " ><img src="image/sj/1.jpg" /></td>
         <td style="font-family: 宋体, Arial, Helvetica, sans-serif; font-weight: bolder">
             发布需求信息</td></tr>
     
     
        <tr >
            <td align="right" colspan="2" style="height:5px; background-color: #FFFF99;">
                </td>
        </tr>
     <tr>
         <td align="right" style="width: 100px" >
              农产品名称</td>
         <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="s"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入不超过10个字" 
                    Font-Size="12px" ForeColor="Red" ValidationExpression="\S{1,10}"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                农产品类别<asp:DropDownList ID="DropDownList1" runat="server" Height="20px" 
                    Width="95px">
                </asp:DropDownList>
                </td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" >
                需求数量</td>
         <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="s"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server"  ControlToValidate="TextBox2" MaximumValue="9999.99" MinimumValue="0.00" Type="Currency" Font-Size="12px" ForeColor="#CC0000">请正确输入（格式：0-9999.99）</asp:RangeValidator>&nbsp;&nbsp;&nbsp;
                需求单位<asp:TextBox ID="TextBox4" runat="server" CssClass="s"></asp:TextBox>
             </td>
     </tr>
         <tr>
         <td align="right" style="width: 100px" >
                价格</td>
         <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="s"></asp:TextBox>
                        <span style="font-size: 12px; color: #FF0000;">如需面议价格为0</span><asp:RangeValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox3" MaximumValue="9999.99" MinimumValue="0.00" 
            Type="Currency" Font-Size="12px" ForeColor="#CC0000">请正确输入（格式：0-9999.99）</asp:RangeValidator></td>
     </tr>
         <tr >
            <td align="right"  >
                </td><td>
              <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/8.png" 
                    onclick="ImageButton1_Click" />
                </td>
        </tr>
         <tr >
            <td align="right" colspan="2" style="height:5px; background-color: #FFFF99;">
                </td>
        </tr>
            <tr >
            <td align="right"  >
                招聘岗位</td><td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="s"></asp:TextBox>
                <asp:regularexpressionvalidator id="code"  ControlToValidate="TextBox5" 
                    Display="Dynamic" ValidationExpression="\S{1,20}" ErrorMessage="请输入正确的字数,长度为1-20" 
                    runat="server" ForeColor="Red"></asp:regularexpressionvalidator></td>
        </tr>
         <tr>
         <td align="right" style="width: 100px">
                 招聘信息</td>
         <td align="left">
        <textarea id="content1" cols="100" rows="60" 
                        style="width:719px; height:380px;visibility:hidden;" runat="server"> </textarea>
           
        
           </td>
     </tr>
     <tr>
         <td align="right" style="width: 100px" >
                
                &nbsp; </td>
         <td align="left">
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/8.png" 
                    onclick="ImageButton2_Click" />
                </td>
     </tr>
    
</table>
    </div>
    </form>
</body>
</html>


