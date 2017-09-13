<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>首页-果蔬在线销售配送管理系统</title>
</head>

<body  id="iframe_box">
<div id="index_style" style="height:100%" class="clearfix">
<div class="spacing_style" ></div>
 <div class="margin-bottom clearfix ">
  <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-deep-blue">
   <div class="carousel Module_info">
   <div class="left_img bg_color_bule">
    <i class="fa fa-cny"></i>
    <h3>成交金额</h3>
   </div>
   <div class="right_info">45670元</div>
   </div>
   </a>
  </div>
   <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-green">
   <div class="carousel Module_info">
   <div class="left_img bg_color_green">
    <i class="fa  fa-comments-o"></i>
    <h3>评价</h3>
   </div>
   <div class="right_info">4567条</div>
   </div>
   </a>
  </div>
   <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-red ">
   <div class="carousel Module_info">
   <div class="left_img bg_color_red">
    <i class="fa fa-shopping-cart"></i>
    <h3>订单</h3>
   </div>
   <div class="right_info">4800笔</div>
   </div>
   </a>
  </div> 
 <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-orange">
   <div class="carousel Module_info">
   <div class="left_img bg_color_orange">
    <i class="fa  fa-volume-up "></i>
    <h3>通知</h3>
   </div>
   <div class="right_info">446条</div>
   </div>
   </a>
  </div>
  
  <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-purple">
   <div class="carousel Module_info">
   <div class="left_img bg_color_purple">
    <i class="fa  fa-clock-o "></i>
    <h3>待处理</h3>
   </div>
   <div class="right_info">17条</div>
   </div>
   </a>
  </div>
  
  
   <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-yellow">

   </a>
  </div>
 </div>
 
 
 </div>


 
 
 

 <!---->
 <div class="Order_form ">
  <div class="col-xs-6 col-lg-7">
  <div class="frame margin-right clearfix">
  <div class="title_name"><i></i>店铺/订单状态提示</div>
  <div class="clearfix">
  <div class="col-xs-3 col-lg-6 ">   
   <div class="prompt_name"><i class="icon_Order"></i>订单& 商品</div>
   <ul class="padding list_info">   
   <li>代发货订单 &nbsp;<a href="">(02)</a></li>
   <li>已完成订单 &nbsp;<a href="">(32)</a></li>
   <li>未完成订单 &nbsp;<a href="">(02)</a></li>
   </ul>
  </div>
   <div class="col-xs-3 col-lg-6">    
   <div class="prompt_name"><i class="icon_Promotions"></i>促销</div>
   <ul class="padding list_info">   
   <li>待审核的促销 &nbsp;<a href="">(02)</a></li>
   <li>发布的促销 &nbsp;<a href="">(32)</a></li>
   <li>即将结束的促销 &nbsp;<a href="">(02)</a></li>
   </ul>
  </div>
   <div class="col-xs-3 col-lg-6">    
   <div class="prompt_name"><i class="icon_Aftermarket"></i>售后</div>
   <ul class="padding list_info"> 
   <li>待处理订单 &nbsp;<a href="">(02)</a></li>
   <li>待退款订单 &nbsp;<a href="">(32)</a></li>
   <li>待处理售后单 &nbsp;<a href="">(02)</a></li>  
   </ul>
  </div>
   <div class="col-xs-3 col-lg-6 ">  
   <div class="prompt_name"><i class="icon_Billing"></i>结算</div>
    <ul class="padding list_info">  
   <li>待支付 &nbsp;<a href="">(02)</a></li>
   <li>待结算确认 &nbsp;<a href="">(32)</a></li>
   </ul>
  </div>
  </div>
  <div class="dd_echarts">
   <div id="main" style="width:100%; height:225px"></div>
  </div>
  </div>
  </div>
  <div class="col-xs-6 ranking_style col-lg-5" >
  <div class="frame clearfix">
   <div class="title_name"><i></i>商品销售排行</div>
   <table  class="table table_list ranking_list">
    <thead>
     <th width="50">排名</th>
     <th>商品编号</th>
     <th>商品名称</th>
     <th width="80">销售数量</th>
    </thead>
    <tbody>
     <tr>
      <td ><em>1</em></td>
      <td>23457</td>
      <td><a href="#">海南火龙果</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>2</em></td>
      <td>23457</td>
      <td><a href="#">菲律宾香蕉</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>3</em></td>
      <td>2345776</td>
      <td><a href="#">新疆紫皮葡萄</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>4</em></td>
      <td>2345776</td>
      <td><a href="#">东北大冬瓜</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>5</em></td>
      <td>2345776</td>
      <td><a href="#">黄河沙瓤西瓜</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>6</em></td>
      <td>2345776</td>
      <td><a href="#">台湾毛桃</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>7</em></td>
      <td>2345776</td>
      <td><a href="#">西藏青稞面</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>8</em></td>
      <td>2345776</td>
      <td><a href="#">安徽核桃</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>9</em></td>
      <td>2345776</td>
      <td><a href="#">四川红高粱</a></td>
      <td>23</td>
     </tr>
      <tr>
      <td ><em>10</em></td>
      <td>2345776</td>
      <td><a href="#">北京猕猴桃</a></td>
      <td>23</td>
     </tr>
    </tbody>
   </table>
  </div>
  </div>
 </div>
</div>
</body>
</html>



<script>
//设置框架
 $(function() { 
	$("#index_style").frame({
		float : 'left',
		menu_nav:'.Quick_operation',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		Sellerber_header:'.Sellerber_header',
	});
});
$("#iframe_box").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
/*********************/
   require.config({
            paths: {
                echarts: './js/dist'
            }
        });
        require(
            [
                'echarts',
				'echarts/theme/macarons',
                'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/bar'
            ],
            function (ec,theme) {
                var myChart = ec.init(document.getElementById('main'),theme);
               option = {
    title : {
        text: '当周交易记录',
        subtext: '每周7天的交易记录'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['所有订单','已完成','未完成']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            boundaryGap : false,
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],
    yAxis : [
        {
            type : 'value',
            axisLabel : {
                formatter: '{value}单'
            }
        }
    ],
    series : [
        {
            name:'所有订单',
            type:'line',
            data:[110, 110, 150, 130, 125, 133, 106],
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name: '平均值'}
                ]
            }
        },
        {
            name:'已完成',
            type:'line',
            data:[110, 105, 140, 130, 110, 121, 100],
            markPoint : {
                data : [
                    {name : '周最低', value : -2, xAxis: 1, yAxis: -1.5}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name : '平均值'}
                ]
            }
        },
		   {
            name:'未完成',
            type:'line',
            data:[0, 5, 10, 0, 15, 12, 6],
            markPoint : {
                data : [
                    {name : '周最低', value : -2, xAxis: 1, yAxis: -1.5}
                ]
            },
            markLine : {
                data : [
                    {type : 'average', name : '平均值'}
                ]
            }
        }
    ]
};
                  
			myChart.setOption(option);
			}
			);
</script>
