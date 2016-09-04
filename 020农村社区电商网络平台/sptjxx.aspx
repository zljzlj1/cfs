<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sptjxx.aspx.cs" Inherits="sptjxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/1-6-10.esl.js"></script>
  <style type="text/css">a{ color:Black} </style>
</head>
<body>
	 <div id="main" style="height:400px; width:800px;margin:0 auto;"></div>
     <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                'echarts': 'js/echarts',
                'echarts/chart/pie': 'js/echarts'
            }
        });
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
                    if (data.d.result == true) {
                        // $("#articleComment").zyComment("setCommentAfter", data.d.data);
                        $("#main").empty();
                        getChart(data.d.data);

                    } else {
                        html = '你还没有添加商品,<a href="tjsp.aspx">点击</a>进行添加商品';
                        $("#main").empty();
                        $("#main").append(html);
                    }

                },
                error: function (err) {
                    alert("发生错误");
                }
            });
        }
        function getChart(todata) {
            // 使用
            require(
            [
                'echarts',
                'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main'));
                var option = {
                    title: {
                        text: todata.text,
                        subtext: todata.subtext,
                        x: 'center'
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient: 'vertical',
                        x: 'left',
                        data: todata.data1
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            mark: { show: true },
                            dataView: { show: true, readOnly: false },
                            restore: { show: true },
                            saveAsImage: { show: true }
                        }
                    },
                    calculable: true,
                    series: [
                        {
                            name: todata.name,
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '60%'],
                            data: todata.data2
                        }
                    ]
                   };
                myChart.setOption(option);
            }
        );
       }
    </script>      

</body>
</html>
