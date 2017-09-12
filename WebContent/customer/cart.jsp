<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>购物车</title>
<link href="css/produ.css" rel="stylesheet">
<link href="css/share.css" rel="stylesheet">
<script src="js/jquery-1.12.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.min.js"></script>
<script type="text/javascript" src="js/etao.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
<link href="css/cart.css" media="screen" rel="stylesheet"
	type="text/css" />
<link href="css/bootstrap.min.css" media="screen" rel="stylesheet"
	type="text/css" />
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
					<li><a href="/yukangfruit/ProdeceServlet"
						style="color: #4AB344"> <span style="color: #4AB344">全部产品</span></a></li>
					<li><a href="consult.jsp">最新资讯</a></li>
					<li><a href="/yukangfruit/OrderServlet?method=3">我的订单</a></li>
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
		<!--产品推荐开始-->
		<div class="recommand clear">
			<div class="rec-cont clear">

				<div class="row hidden-print">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.jsp">首页</a></li>
							<li class="active">查看购物车</li>
						</ol>
					</div>
				</div>
				<div class="cart-wrap">
					<form action="/yukangfruit/OrderServlet" method="get">
					<input type="hidden" name="method" value="1"/>
						<table id="cartTable" class="cart table table-condensed">
							<thead>
								<tr>
									<th class="t-checkbox"><label><input
											class="check-all check" type="checkbox" />全选</label></th>
									<th class="text-center">产品备注</th>
									<th class="t-selling-price text-center"><label>销售单价</label></th>
									<th class="t-qty text-center"><label>采购数量</label></th>
									<th class="t-subtotal text-center"><label>金额小计</label></th>
									<th class="t-action"><label>操作</label></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${sessionScope.cart}" var="item">
									<tr>
										<td colspan="1" class="goods"><label> 
										<input type="checkbox" name="isBuy" class="check-one check" value="${item.key.getGoodsName()}"/>${item.key.getGoodsName() }
										</label></td>
										<td style="padding-top: 1.1rem;" align="center">${item.key.getDesc() }</td>
										<td class="selling-price number small-bold-red text-right"
											style="padding-top: 1.1rem;"
											data-bind="${item.key.getPrice() }">${item.key.getPrice() }</td>
										<td>
											<div class="input-group input-group-sm">
												<span class="input-group-addon minus">-</span> 
												<input name="${item.key.getHash()}" type="text" 
												class="number form-control input-sm" value="${item.value}" />
												<span class="input-group-addon plus">+</span>
											</div>
										</td>
										<td class="subtotal number small-bold-red text-right"
											style="padding-top: 1.1rem;"></td>
										<td class="action" style="padding-top: 1.1rem;"><a
											class="delete btn btn-xs btn-warning"
											href="/yukangfruit/CartServlet?
										method=1&goodsName=${item.key.getGoodsName()}">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="row">
							<div class="col-md-12 col-lg-12 col-sm-12">
								<div class="cart-summary">
									<div style="margin-left: 2rem;" class="pull-right">
										<input type="submit" id="btn_settlement" type="button"
											class="btn btn-primary" disabled value="去结算"/>
									</div>
									<div style="margin-left: 1rem; margin-top: 0.4rem;"
										class="pull-right total">
										<label>金额合计:<span id="priceTotal"
											class="price-total large-bold-red">0.00</span></label>
									</div>
									<div style="margin-top: 4px;" class="pull-right">
										<label>您选择了<span id="itemCount" class="large-bold-red"
											style="margin: 0 4px;"></span>种产品，共计<span id="qtyCount"
											class="large-bold-red" style="margin: 0 4px;"></span>件
										</label>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<!--产品推荐结束-->
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
<script src="js/produ.js"></script>
</html>