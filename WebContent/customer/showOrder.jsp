<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的订单</title>
<script type="text/javascript" src="js/jquery-1.11.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" media="screen" rel="stylesheet"
	type="text/css" />
<link href="css/touch.css" rel="stylesheet">
<link href="css/share.css" rel="stylesheet">
</head>
<body>
	<!--顶部导航-->
	<div class="headr">
		<div class="heard-con">
			<img src="images/logo.jpg"
				style="margin-top: 7px; float: left; position: absolute">
			<div class="headr-nav">
				<ul>
					<li><a href="index.jsp">首页</a></li>
					<li><a href="/yukangfruit/ProdeceServlet">全部产品</a></li>
					<li><a href="consult.jsp">最新资讯</a></li>
					<li><a href="/yukangfruit/OrderServlet?method=3"
						style="color: #4AB344"><span style="color: #4AB344">我的订单</span></a></li>
					<li><a href="user.jsp">账号管理</a></li>
				</ul>
				<div class="sptopfoot">
					<div class="spbottom"></div>
				</div>
			</div>
			<div class="headr-right">
				<a class="iconfont" href="cart.jsp"
					style="font-size: 15px; margin-right: 5px">&#xe7d5; <span
					style="font-family: 微软雅黑; margin-left: 10px">我的购物车</span></a>
			</div>
		</div>
	</div>
	<!--顶部导航结束-->
	<!--banner图片-->
	<div class="her-banner"></div>
	<!--banner图片结束-->
	<div class="content">
		<!--建议开始-->
		<div class="recommand clear">
			<div class="rec-cont clear">
				<div class="rec-left">
					<div class="classily">
						<div class="cltop">
							<p>产品分类</p>
						</div>
						<div class="cltcon">
							<p>
								<a href="#">国产水果</a>
							</p>
							<p>
								<a href="#"> 进口水果</a>
							</p>
							<p style="border-bottom: 0px dashed #999999;">
								<a href="#">新鲜时蔬</a>
							</p>
						</div>

					</div>
					<div class="service">
						<div class="cltop">
							<p>在线客服</p>
						</div>
						<div class="sercon">
							<div class="qqs">
								<p>
									<a hidefocus="true" href="#"> <span
										class="serOnline-img0 qqImg0">&nbsp;</span>蜜桃
									</a>
								</p>
								<P>
									<a hidefocus="true" href="#"> <span
										class="serOnline-img0 qqImg0">&nbsp;</span>芒果
									</a>
								</P>
							</div>
							<div class="tims">
								<div class="marBL-10">
									<span class="worktime-header-img">&nbsp;</span> <span
										class="serWorkTimeText"><b>工作时间</b></span>
								</div>
								<div class="serOnline-list-v ">
									<span>周一至周五 ：8:30-17:30</span>
								</div>
								<div class="serOnline-list-v lastData">
									<span>周六至周日 ：9:00-17:00</span>
								</div>
							</div>
						</div>

					</div>

				</div>

				<div class="rec-right">
					<table class="table table-condensed table-hover">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>商品名称</th>
								<th>销售单价</th>
								<th>数量</th>
								<th>下单时间</th>
								<th>运输类型</th>
								<th>地址</th>
								<th>小计</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sessionScope.orders}" var="item">
								<tr>
									<td>${item.getOrderId()}</td>
									<td>${item.getGoodsName()}</td>
									<td>${item.getGoodsPrice()}</td>
									<td>${item.getGoodsNum()}</td>
									<td>${item.getOrderDate()}</td>
									<td>${item.getTransType()}</td>
									<td>${item.getAddress()}</td>
									<td>${String.format("%.2f",item.getGoodsPrice()*item.getGoodsNum())}</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>


			</div>
		</div>

		<!--建议结束-->
	</div>
	<!--底部-->
	<div class="footer">
		<div class="ft-con">
			<div class="ft-top">
				<img src="images/fot-1.jpg">
			</div>
			<div class="ft-bo">
				<div class="ft-b">
					<h3>服务保障</h3>
					<p>正品保证</p>
					<p>7天无理由退换</p>
					<p>退货返运费</p>
					<p>7X15小时客户服务</p>

				</div>
				<div class="ft-b">
					<h3>支付方式</h3>
					<p>公司转账</p>
					<p>货到付款</p>
					<p>在线支付</p>
					<p>分期付款</p>

				</div>
				<div class="ft-b">
					<h3>商家服务</h3>
					<p>商家入驻</p>
					<p>培训中心</p>
					<p>广告服务</p>
					<p>服务市场</p>

				</div>
				<div class="ft-b">
					<h3>服务保障</h3>
					<p>免运费</p>
					<p>海外配送</p>
					<p>EMS</p>
					<p>211限时达</p>

				</div>

			</div>

		</div>
	</div>
</body>
<script src="js/touch.js"></script>
</html>