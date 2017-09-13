<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="admins/css/shop.css" type="text/css" rel="stylesheet" />
<link href="admins/css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="admins/css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="admins/font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="admins/js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="admins/js/jquery.cookie.js"></script>
<script src="admins/js/shopFrame.js" type="text/javascript"></script>
<script src="admins/js/Sellerber.js" type="text/javascript"></script>
<script src="admins/js/layer/layer.js" type="text/javascript"></script>
<script src="admins/js/jquery.dataTables.min.js"></script>
<script src="admins/js/jquery.dataTables.bootstrap.js"></script>


<title>产品列表-果蔬在线销售配送管理系统</title>
</head>

<body>
<div class="margin" id="page_style">
<div class="operation clearfix">

<span class="submenu"><a href="<%=basePath %>admins/index.jsp" class="btn button_btn bg-deep-blue"><i class="fa  fa-edit"></i>&nbsp;返回</a></span>
<span class="submenu"><a href="<%=basePath %>admins/add_product.jsp" name="add_product.jsp" class="btn button_btn bg-deep-blue" title="添加产品"><i class="fa  fa-edit"></i>&nbsp;添加产品</a></span>
<div class="search  clearfix">
 <label class="label_name">商品搜索：</label><input name="" type="text"  class="form-control col-xs-6"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;搜索</button>

</div>
</div>
<!--列表展示-->
<div class="list_Exhibition margin-sx">
 <table class="table table_list table_striped table-bordered" id="sample-table">
  <thead>
  <tr>
   <th width="100" >产品编号</th>
   <th width="100">产品名称</th>
   <th width="120">产品现价</th>
   <th width="120">销量</th>
   <th width="100">库存</th>
   <th width="100">操作</th>
   </tr>   
  </thead>
  <tbody>
  
   	<c:forEach items="${glist }" var="p"> 
   	<tr>
   	
 
   		 <th >
   		<%--  <input type="hidden" name="goodsId" value=" ${p.goodsId}"> --%>
   		 ${p.goodsId}
   		 </th>
   
   		 
   		 
   		 
   		 <th>
   		  ${p.goodsName}
   		 </th>
   		 <th>
   		  ${p.goodsPrice}
   		 </th>
   		 <th>
   		  ${p.goodsSale}
   		 </th>
   		 <th>
   		  ${p.goodsStock}
   		 </th>
   		 <th>
   		 <a href="goodsServlet?method=updatequery&goodsId=${p.goodsId}" class="btn bg-deep-blue operation_btn">修改</a> <a href="goodsServlet?method=delete&goodsId=${p.goodsId}" onclick="return confirm('您确定删除吗？')" class="btn bg-deep-blue operation_btn">删除</a> <a href="javascript:ovid()" onclick="picture_img(this,'+${p.goodsId}+'))" class="btn bg-deep-blue operation_btn">图片</a>
   		 </th>
   	</tr>
   	</c:forEach>
  </tbody>	
 </table>
</div>
</div>

</body>
</html>

<script type="text/javascript">
//设置框架
 $(function() { 
	$("#page_style").frame({
		float : 'left',
		menu_nav:'.operation',
		color_btn:'.skin_select',
	});
});
$(document).ready(function(){
    var spotMax = 8;
  if($('#add_Carousel_figure .table tbody tr').size() >= spotMax) {$(obj).hide();}
  $("#add_Upload").on('click',function(){ 
       var cid =$('.images_Upload').each(function(i){ $(this).attr('id',"Uimages_Upload_"+i)});
       addSpot(this, spotMax, cid);
  });
});



/*********滚动事件*********/
$("#page_style").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});

 $(document).ready(function(){
	var ReturnWindow=$('#contents', parent.document); 
	var width = ReturnWindow.css("width");
	 $("#sample-table").css({"width":width-20+"px"});
	  $('#sample-table').location.replace(location.href);
	 });
</script>
