<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>

<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script> 
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>添加产品-果蔬在线销售配送管理系统</title>
</head>

<body>
<div class="margin">
<div class="add_style">
 <ul>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>产品名称：&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="goodsName" id="goodsName" type="text"  class="col-xs-6"/></div></li>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>简单描述：&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="goodsDesc" id="goodsDesc" type="text" class="col-xs-4"/></div></li>
  <li class="clearfix">
   <label class="label_name col-xs-1"><i>*</i>产品分类：&nbsp;&nbsp;</label>
   <div class="Add_content col-xs-11" id="goodlist">
   
   <select id="goodsType" name="goodsType"> 
  <option value ="应季果蔬">应季果蔬</option>  
  <option value ="限时促销">限时促销</option>  
  <option value="特价处理">特价处理</option>  
  <option value="新品发布">新品发布</option>  
  </select> 
   
 
   
   <!-- <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" id="ib1" class="ace"><span id="lb2" class="lbl">新品发布</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" id="ib1" class="ace"><span id="lb2" class="lbl">限时促销</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" id="ib1" class="ace"><span id="lb2" class="lbl">特价处理</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" id="ib1" class="ace"><span id="lb2" class="lbl">应季水果</span></label></span>
    -->
    
   </div> 
   </li>
     <li class="clearfix">
      
    <div class="col-xs-4">
    <label class="label_name col-xs-3"><i>*</i>商品现价：&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
   <input name="goodsPrice" id="goodsPrice"  type="text"  class="col-xs-7"/><em class="Prompt">元</em>
    </div>   
    </div>
    <div class="col-xs-4">
    <label class="label_name col-xs-3"><i>*</i>商品数量：&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
   <input name="goodsStock" id="goodsStock" type="text"  class="col-xs-7"/><em class="Prompt">件</em>
    </div>   
    </div>
    </li>
   <li class="clearfix"><label class="label_name col-xs-1">设置时间：&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-11">
    <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" id="checkbox"><span class="lbl">是</span></label>
    <div class="Date_selection" style="display:none">
      <span class="label_name">进货时间</span><p class="laydate-icon" id="start" style="width:200px; margin-right:10px; height:30px; line-height:30px; float:left"></p>
    </div>
    </div>   
    </li>
  
 
      <li class="clearfix">
     <label class="label_name col-xs-1"><i>*</i>产品图片：&nbsp;&nbsp;</label>
    
     <div class="images_Upload clearfix margin-bottom" id="images_Upload">
      <span class="Upload_img"><input name="goodsImgPath"  id="goodsImgPath" type="file" /></span>
    </div>
    
     </li>
     
 </ul>
 <div class="Button_operation btn_width">
    <button class="btn button_btn bg-deep-blue" type="button" id="savebutton">保存并提交</button>
  
  <button class="btn button_btn bg-gray" type="button" id="cencelbutton">取消添加</button>
   
 </div>
</div>
</div>
</body>

   <!--复文本编辑框-->
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script>
/* $(function(){
 var ue = UE.getEditor('editor');
}); */


var datetime ;
$(document).ready(function(){
	
	
	
    var spotMax = 8;
  if($('div.images_Upload').size() >= spotMax) {$(obj).hide();}
  $("#add_Upload").on('click',function(){ 
       var cid =$('.images_Upload').each(function(i){ $(this).attr('id',"Uimages_Upload_"+i)});
       addSpot(this, spotMax, cid);
  });
});
function addSpot(obj, sm ,sid) {
	  $("#Upload").append("<div class='images_Upload clearfix margin-bottom' id='"+sid+"'>"+
	  "<span class='Upload_img'><input name='' type='file' /></span>"+
	  "<a href='javascript:ovid()' class='operating delete_Upload'><i class='fa fa-remove'></i></a>"+
	  "<a href='javascript:ovid()' class='operating' onclick='preview_img(this.id)'><i class='fa  fa-image'></i></a>"+
	  "</div>&nbsp;")  
	.find(".delete_Upload").click(function(){
		if($('div.images_Upload').size()==1){
			layer.msg('请至少保留一张图片!',{icon:0,time:1000});			
			}
			else{
				 $(this).parent().remove();
                 $('#add_Upload').show();
				} 				
				
  });
  if($('.delete_Upload').size() >= sm) {$(obj).hide();layer.msg('当前为最大图片添加量!',{icon:0,time:1000});}}
 /*checkbox激发事件*/
$('#checkbox').on('click',function(){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.Date_selection ').css('display','block');
		}
	else{
		
		 $('.Date_selection').css('display','none');
		}	
	});
	function add_category(){
	 $(".add_category_style").toggle();
	
	}
	
	
	
	$('#savebutton').on('click',function(){
		/* alert("999"); */
		var goodsName = document.getElementById("goodsName").value;
		/* alert(goodsName); */
		var goodsPrice = document.getElementById("goodsPrice").value;
		/* alert(goodsPrice); */
		var goodsStock = document.getElementById("goodsStock").value;
		/* alert(goodsStock); */
		var goodsDesc = document.getElementById("goodsDesc").value;
		/* alert(goodsDesc); */
		var goodsType = document.getElementById("goodsType").value;
		/* alert(goodsType); */
		var goodsImgPath = document.getElementById("goodsImgPath").value;
		/* alert(goodsImgPath); */
		var time = datetime;
		/* alert(time+"time"); */
		/* var goodsType = document.getElementById("lb2").innerText; */
		
		$.ajax({
		
			url : "<%=basePath%>goodsServlet?method=addGoods",
			contentType: "application/json; charset=utf-8",
	        data: {"goodsName":goodsName,"goodsPrice":goodsPrice,"goodsStock":goodsStock,"goodsDesc":goodsDesc,"goodsImgPath":goodsImgPath,"goodsType":goodsType,"time":time},
	        dataType: "json",
	        success: function (message) {
	                alert("请求已提交！我们会尽快与您取得联系");
	        },
	        error: function (message) {
	            $("#request-process-patent").html("提交数据失败！");
	        }
		});
	});
	
	
  /******时间设置*******/
 var start = {
    elem: '#start',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16 23:59:59', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
    	alert(datas+"---");
    	datetime = datas;
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
    }
};
var end = {
    elem: '#end',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(),
    max: '2099-06-16 23:59:59',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //结束日选好后，重置开始日的最大日期
    }
};
laydate(start);
laydate(end); 
/*********滚动事件*********/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
</script>
</html>