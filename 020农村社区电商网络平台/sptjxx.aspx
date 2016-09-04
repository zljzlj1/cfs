<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sptjxx.aspx.cs" Inherits="sptjxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript" src="js/corechart.js"></script>		
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>
</head>
<body>
	<div style="width:600px;margin:0 auto;" id="map">
	</div>
    
    <script type="text/javascript">
        getdata();
        function getdata() {
            $.ajax({
                type: "POST",
                url: "sptjxx.aspx/getdata", //方法所在页面和方法名
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.info("填写内容返回值：");
                    console.info(data);
                    kk(data.d);
                },
                error: function (err) {
                    alert("发生错误");
                }
            });
        }
        function kk(table) {
			var html = '';
			html += ' <table id=myTable0 > ';
			html += '       <caption> ' + table.title + ' </caption> ';
			var context = table.context;
			var thead = '';
			var tbody = '';
			thead += ' <thead> ';
			thead += '    <tr>';
			thead += '        <th></th>';
			tbody += ' <tbody>';
			tbody += '    <tr>';
			tbody += '        <th>' + table.total + '</th>';
			for (var k in context) {
			    thead += '        <th>' + context[k].name + '</th>';
			    tbody += '        <td>' + context[k].value + '</td>';
			}
			thead += '    </tr>';
			thead += ' </thead> ';
			tbody += '    </tr>';
			tbody += ' </tbody>';
			html = html + thead + tbody;
			html += ' </table> ';
			$("#map").append(html);
			inst();        }
        function inst() {
            gvChartInit();
            $(document).ready(function () {
                $('#myTable0').gvChart({
                    chartType: 'PieChart',
                    gvSettings: {
                        vAxis: { title: 'No of players' },
                        hAxis: { title: 'Month' },
                        width: 600,
                        height: 350
                    }
                });
            });
        }
	</script>

</body>
</html>
