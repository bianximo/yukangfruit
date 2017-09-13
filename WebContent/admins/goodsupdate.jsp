<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<style type="text/css">
	div {
	font-size: 22px;
	margin-left: 100px;
	}
	.tijiao{
	width: 100px;
	margin-top: 20px;
	font-size: 22px;
	}
	.a{
	font-size: 22px;
}
.input{
	width:520px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>
	<form action="goodsServlet?method=update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="goodsID" value="${goodss.goodsID }">
		商品名称：<input type="text" name="goodsName"
			value="${goodss.goodsName}" class="input"><br /><br /> 商品价格：<input
			type="text" name="goodsPrice" value="${goodss.goodsPrice}"
			class="input" id="price"><span id="price_span"></span><br /><br />
			<input type="hidden" name="goodsImgPath" value="${goodss.goodsImgPath}">
		商品简介：
		<textarea name="goodsDesc" cols="60">${goodss.goodsDesc}</textarea>
		<br /><br /> 商品库存：<input type="text" name="goodsStock"
			value="${goodss.goodsStock}" id="stack">
			 <br /><br /> 选择图片：
				<img width="100px" height="100px"
			src="<%=basePath%>${goodss.goodsImgPath}"> 修改<input
			type="file" name="goodsImgPath" class="a"><br />

		<input type="submit" value="提交" class="tijiao">
	</form>
	</div>
	<p align="right"><input type="button" style="width: 260px;font-size: 22px" name="Submit" value="返回上一页" onclick="javascript:window.history.back(-1);"></p>
</body>
</html>