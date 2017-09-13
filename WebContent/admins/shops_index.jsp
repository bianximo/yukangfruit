<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="<%=basePath %>admins/css/shop.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath %>admins/skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="<%=basePath %>admins/css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="<%=basePath %>admins/css/bkg_ui.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath %>admins/font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="<%=basePath %>admins/js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="<%=basePath %>admins/js/layer/layer.js" type="text/javascript"></script>
<script src="<%=basePath %>admins/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath %>admins/js/Sellerber.js" type="text/javascript"></script>
<script src="<%=basePath %>admins/js/shopFrame.js" type="text/javascript"></script>
<script src="<%=basePath %>admins/js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath %>admins/js/jquery.cookie.js"></script> 
<title>店铺管理-果蔬在线销售配送系统</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script type="text/javascript" src="js/PIE/PIE_IE678.js"></script>
 <![endif]-->
<body>
 <div class="Sellerber" id="Sellerber">
 <!--顶部-->
  <div class="Sellerber_header apex clearfix" id="Sellerber_header">
   <div class="l_f logo"><img src="images/logo_03.png" /></div>
   <div class="r_f Columns_top clearfix">
   <!--<div class="time_style"><i class="fa  fa-clock-o"></i><span id="time"></span></div>-->
   <div class="news l_f"><a href="#" class="fa  fa-bell "></a><em>5</em></div>
     <div class="administrator l_f">
       <img src="images/avatar.png"  width="36px"/><span class="user-info">管理员</span><i class="glyph-icon fa  fa-caret-down"></i>
       <ul class="dropdown-menu">
        <li><a href="#"><i class="fa fa-user"></i>个人信息</a></li>
        <li><a href="#"><i class="fa fa-cog"></i>系统设置</a></li>
        <li><a href="javascript:void(0)" id="Exit_system"><i class="fa fa-user-times"></i>退出</a></li>
       </ul>
     </div>
   </div>
  </div>
<!--左侧-->
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
    <div class="menu_style" id="menu_style">
    <div class="list_content">
    <div class="skin_select">
      <ul class="dropdown-menu dropdown-caret">
         <li><a class="colorpick-btn selected" href="javascript:ovid()"data-val="default"  id="default" style="background-color:#222A2D" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="blue" style="background-color:#438EB9;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="green" style="background-color:#72B63F;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="blue" style="background-color:#D0D0D0;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:ovid()" data-val="blue" style="background-color:#FF6868;" ></a></li>
        </ul>     
     </div>
     <div class="search_style">
        <form action="#" method="get" class="sidebar_form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control">
                        <span class="input-group-btn">
                            <a class="btn_flat" href="javascript:" onclick=""><i class="fa fa-search"></i></a>
                        </span>
                    </div>
                </form>
     </div>     
    <dl class="nav nav-list" id="menu_list">
     <dt class="shop_index nav_link " ><a href="javascript:void(0)" name="index.jsp" class="iframeurl" title=""><i class="fa fa-home"></i><span class="menu-text">系统首页</span></a></dt>
     <dd class="submenu" style="height:0px; border:0px;"></dd>
     <dt class="nav_link ">
     <a href="javascript:void(0)" class="dropdown-toggle title_nav"><i class="fa fa-desktop"></i><span class="menu-text"> 商品管理 </span><b class="arrow fa fa-angle-down"></b></a>
     </dt>
     <dd class="submenu">
       <ul>
          <li class="home"><a href="test22.jsp" target="iframepage">ifream测试</li>
         <li class="home"><a href="<%=basePath %>goodsServlet?method=GoodList"  target="iframepage" method="post" title="产品管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>产品管理</a></li>
         <li class="home"><a href="javascript:void(0)" name="ProviderManage.jsp" title="供应商管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>供应商管理</a></li>
         <li class="home"><a href="javascript:void(0)" name="Category_Manage.jsp" title="仓储管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>仓储管理</a></li>
         </ul>
         </dd>
  <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-database"></i><span class="menu-text"> 订单管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Order.html" title="订单列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>订单类表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Brand_Manage.html" title="品牌管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>订单处理</a></li>
       <li class="home"><a href="javascript:void(0)" name="Order_Logistics.html" title="物流管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>物流管理</a></li>
        <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>退款操作</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-credit-card"></i><span class="menu-text"> 支付管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Products_List.html" title="已支付订单" class="iframeurl"><i class="fa fa-angle-double-right"></i>已支付订单</a></li>
       <li class="home"><a href="javascript:void(0)" name="Products_List.html" title="未支付订单" class="iframeurl"><i class="fa fa-angle-double-right"></i>未支付订单</a></li>
       </ul>
      </dd>
     
      <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa  fa-file-photo-o"></i><span class="menu-text"> 广告管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Advertising_list.html" title="广告列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>广告列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Advertising_sort.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>分类管理</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>分类管理</a></li>
       </ul>
      </dd>
  <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-bar-chart"></i><span class="menu-text"> 报表管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="system_info.html" title="订单报表" class="iframeurl"><i class="fa fa-angle-double-right"></i>订单报表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Columns.html" title="产品销量" class="iframeurl"><i class="fa fa-angle-double-right"></i>产品销量</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="分类管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>交易量</a></li>
       </ul>
      </dd>
        <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-user"></i><span class="menu-text"> 用户管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="member_list.html" title="用户列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>用户列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Columns.html" title="等级管理" class="iframeurl"><i class="fa fa-angle-double-right"></i>等级管理</a></li>
       <li class="home"><a href="javascript:void(0)" name="Category_Manage.html" title="用户记录" class="iframeurl"><i class="fa fa-angle-double-right"></i>用户记录</a></li>
       </ul>
      </dd>
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-file-text-o"></i><span class="menu-text"> 评价管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="Article_list.html" title="评价列表" class="iframeurl"><i class="fa fa-angle-double-rightt"></i>评价列表</a></li>
       </ul>
      </dd>
        
       <dt class="nav_link"><a href="#" class="dropdown-toggle title_nav"><i class="fa fa-users"></i><span class="menu-text">管理员管理 </span><b class="arrow fa fa-angle-down"></b></a></dt>
    <dd class="submenu">
     <ul>
       <li class="home"><a href="javascript:void(0)" name="administrator_list.html" title="管理员列表" class="iframeurl"><i class="fa fa-angle-double-right"></i>管理员列表</a></li>
       <li class="home"><a href="javascript:void(0)" name="Personal_info.htm" title="个人信息" class="iframeurl"><i class="fa fa-angle-double-right"></i>个人信息</a></li>
       </ul>
      </dd>
       
    </dl>  
    </div>
  </div>
 </div>
<!--内容-->
  <div class="Sellerber_content" id="contents">

  <!--具体内容-->  
  <div id="iframe_box" class="iframe_content">
  <div class="show_iframe" id="show_iframe">
       <iframe scrolling="yes" class="simei_iframe" frameborder="0" src="index.jsp" name="iframepage" data-href="index.jsp"></iframe>
       </div>
      </div>
  </div>
<!--底部-->
  <div class="Sellerber_bottom info" id="bottom">
  <span class="l_f">版权所有：太原理工大学计算机科学与技术学院计科1403</span>
  </div>
 </div>
</body>
</html>

<script>
//设置框架
 $(function() { 
	$("#Sellerber").frame({
		float:'left',
		color_btn:'.skin_select',
		header:70,//顶部高度
		bottom:30,//底部高度
		menu:200,//菜单栏宽度
		Sellerber_menu:'.list_content',
		Sellerber_header:'.Sellerber_header',
	});
});
//时间设置
  function currentTime(){ 
   var weekday=new Array(7)
	weekday[0]="星期一"
	weekday[1]="星期二"
	weekday[2]="星期三"
	weekday[3]="星期四"
	weekday[4]="星期五"
	weekday[5]="星期六"
	weekday[6]="星期日"	
    var d=new Date(),str='';	
    str+=d.getFullYear()+'年'; 
    str+=d.getMonth() + 1+'月'; 
    str+=d.getDate()+'日'; 
    str+=d.getHours()+'时'; 
    str+=d.getMinutes()+'分'; 
    str+= d.getSeconds()+'秒'+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	str+=weekday[d.getDay()-1]; 
    return str; 
} 
setInterval(function(){$('#time').html(currentTime)},1000); 
$('#Exit_system').on('click', function(){
      layer.confirm('是否确定退出系统？', {
     btn: ['是','否'] ,//按钮
	 icon:2,
    }, 
	function(){
	  location.href="login.html";
        
    });
});
</script>
<script type="text/javascript">
$("#menu_style").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
}); 
</script>

