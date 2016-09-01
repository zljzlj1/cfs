<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sjzym.aspx.cs" Inherits="sjzym" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>商家管理系统</title>
     <link href="css/sjzym.css" rel="Stylesheet" type="text/css" />
      <script type="text/javascript">
　          function clear() {

              Session["sjmc"] = null;
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
    
          
        }




</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="top"><img src="image/sj/sjzymtop1.png" style="margin-left: 21px" /> 
    <div class="to">商家：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>您好,感谢登陆使用！<a  onclick="clear()" href="index.aspx" style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #FFFFFF;text-decoration: none;height: 45px;">退出</a></div>
    </div>
    <div>
  <div class="left"><iframe src="sjzymleft.aspx"   frameborder="0"  scrolling="no"   height="572px" width="170px"></iframe></div>
<div class="right">
    <iframe src="sjzymright.aspx" name="sjmain" frameborder="0"  
        scrolling="auto"  height="572px" width="900px"   ></iframe></div>
    <div class="c"></div> </div>
    </div>
    </form>
</body>
</html>
