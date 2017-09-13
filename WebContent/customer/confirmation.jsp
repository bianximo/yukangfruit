<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/etao.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
<link href="css/etao.css" media="screen" rel="stylesheet"
	type="text/css" />
<link href="css/cart.css" media="screen" rel="stylesheet"
	type="text/css" />
<link href="css/bootstrap.min.css" media="screen" rel="stylesheet"
	type="text/css" />
<title>订单确认</title>
</head>
<body class="container">
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#new_address_dialog")
									.on(
											"show.bs.modal",
											function(e) {
												loadPage(
														"new_address_content_div",
														"<?php echo $this->baseUrl . '/system/address/add.ajax/cid/' . $this->customerId . '/from/' . base64_encode($_SERVER['REQUEST_URI']); ?>");
											});

							$("#new_address_dialog").on("hidden.bs.modal",
									function(e) {
										$(this).removeData("bs.modal");
									});

							$("#new_address_button")
									.click(
											function() {
												$
														.ajax({
															url : "<?php echo $this->baseUrl . '/system/address/save.ajax' ?>",
															type : 'POST',
															data : {
																"customer" : $(
																		'#customer')
																		.val(),
																"address" : $(
																		'#address')
																		.val(),
																"zip_code" : $(
																		'#zip_code')
																		.val(),
																"telephone" : $(
																		'#telephone')
																		.val(),
																"cell_phone" : $(
																		'#cell_phone')
																		.val(),
																"contact_person" : $(
																		'#contact_person')
																		.val(),
																"province_name" : $(
																		'#province_name')
																		.val(),
																"city_name" : $(
																		'#city_name')
																		.val(),
																"area_name" : $(
																		'#area_name')
																		.val(),
																"is_default" : 0
															},
															error : function() {
																alert("添加收货地址出错!!");
															},
															success : function(
																	msg) {
																//alert(msg);
																$(
																		".address-list li")
																		.removeClass(
																				"selected");
																$(
																		".address-list")
																		.append(
																				"<li class='selected'><input type='radio' id='addr_0' name='ship_to1' value='' checked /><label for='addr_0'>"
																						+ msg
																						+ "</label>");
																$('#ship_to')
																		.val(
																				msg);
																$(
																		"#new_address_dialog")
																		.modal(
																				"hide");
															}
														});
											});

							$(".address-list li :radio").click(
									function() {
										$(this).parent().parent().addClass(
												"selected").siblings()
												.removeClass("selected");
									});

							$("#rebate").blur(function() { //确保返利的数字有效
								item_qty = parseInt($(this).val());
								if (isNaN(item_qty) || (item_qty == 0)) {
									$(this).val($("#max_rebate").val());
								}
							});

							$("#credit").blur(function() { //确保信用额度的数字有效
								item_qty = parseInt($(this).val());
								if (isNaN(item_qty) || (item_qty == 0)) {
									$(this).val(0);
								}
							});

							$("#new_iris_project_dialog")
									.on(
											"show.bs.modal",
											function(e) {
												loadPage(
														"new_iris_project_content_div",
														"<?php echo $this->baseUrl . '/trans/iris/add.ajax/'; ?>");
											});

							$("#new_iris_project_dialog").on("hidden.bs.modal",
									function(e) {
										$(this).removeData("bs.modal");
									});

							$("#new_iris_project_button")
									.click(
											function() {
												$
														.ajax({
															url : "<?php echo $this->baseUrl . '/trans/iris/save.ajax' ?>",
															type : 'POST',
															data : {
																"db_action" : $(
																		'#db_action')
																		.val(),
																"customer_id" : $(
																		'#customer_id')
																		.val(),
																"project_name" : $(
																		'#project_name')
																		.val(),
																"project_site" : $(
																		'#project_site')
																		.val(),
																"project_cycle" : $(
																		'#project_cycle')
																		.val(),
																"project_vendor" : $(
																		'#project_vendor')
																		.val(),
																"freezing_medium" : $(
																		'#freezing_medium')
																		.val(),
																"is_valid" : $(
																		'#is_valid')
																		.val()
															},
															error : function() {
																alert("添加IRIS项目出错!!");
															},
															success : function(
																	msg) {
																$(
																		"#new_iris_project_dialog")
																		.modal(
																				"hide");
																location
																		.reload();
															}
														});
											});
						});

		function saveAddress() {
			$
					.ajax({
						type : "post",
						url : "<?php echo $this->baseUrl . '/system/address/save.ajax';?>",
						data : {
							"customer" : $('#customer').val(),
							"address" : $('#address').val(),
							"zip_code" : $('#zip_code').val(),
							"telephone" : $('#telephone').val(),
							"cell_phone" : $('#cell_phone').val(),
							"contact_person" : $('#contact_person').val(),
							"province_name" : $('#province_name').val(),
							"city_name" : $('#city_name').val(),
							"area_name" : $('#area_name').val(),
							"is_default" : 0
						},
						error : function(msg) {
							alert("Error:" + msg);
						},
						success : function(msg) {
							$(".address-list li").removeClass("selected");
							$(".address-list")
									.append(
											"<li class='selected'><input type='radio' id='addr_0' name='ship_to1' value='' checked /><label for='addr_0'>"
													+ msg + "</label>");
							$('#ship_to').val(msg);
							closeDiv('new_address_div');
						}
					});
		}

		//数据检查
		function beforePost() {
			if (isValid() == false)
				return false;
			if (($("#BTB2").prop("checked") == true)
					&& (jQuery.trim($('#BTB_desc').val()) == "")) {
				alert("请注明最终用户名称和最终目的地！");
				return false;
			}
			if ($("#use_rebate").prop("checked") == true) {
				if (parseInt($("#rebate").val()) > parseInt($("#max_rebate")
						.val())) {
					//alert($("#rebate").val());
					//alert($("#max_rebate").val());
					alert("返利使用金额超出最大值");
					$("#rebate").focus();
					return false;
				}
			}
			if ($("#terms").prop("checked") == false) {
				alert("提交订单前，请阅读《艾默生销售条款和条件》");
				return false;
			}
			return true;
		}
	</script>


	<div class="row col-md-offset-2">

		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-9" id="workspace"
			role="main">

			<div class="row hidden-print">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<ol class="breadcrumb">
						<li><a href="index.jsp">首页</a></li>
						<li class="active">确认购买</li>
					</ol>
				</div>
			</div>

			<form style="margin-bottom: 40px;" class="form-horizontal"
				id="order_confirm_form" name="order_confirm_form" method="POST"
				action="/yukangfruit/OrderServlet">
				<input type="hidden" id="db_action" name="method" value="2" />

				<!-- 订单信息 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="well well-sm">

							<fieldset>
								<legend>订单信息</legend>
								<div class="form-group">
									<label
										class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
										for="mail_address">欢迎您</label>
									<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
										<span class="form-control input-sm" >${sessionScope.Username}</span>
									</div>
								</div>
								<div class="form-group">
									<label
										class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
										for="deliver_type">运输方式</label>
									<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
										<select class="form-control input-sm" id="deliver_type"
											name="transType" required requireText="请选择运输方式">
											<option value="平邮">平邮</option>
											<option value="顺丰">顺丰</option>
											<option value="圆通">圆通</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label
										class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
										for="payment_term">付款方式</label>
									<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
										<select class="form-control input-sm" id="payment_term"
											name="payment_term" required requireText="请选择付款方式">
											<option value="支付宝">支付宝</option>
											<option value="微信">微信付款</option>
											<option value="银行">银行转帐</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label
										class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
										for="mail_address">邮件地址</label>
									<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
										<input class="form-control input-sm" id="mail_address"
											name="mail_address" required requireText="请输入邮件地址"
											type="email" maxLength="80" value="" />
										<p class="help-block">当您的订单发生变更时，系统会即时发送邮件到这个邮箱</p>
									</div>
								</div>
								<div class="form-group">
									<label
										class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">订单备注</label>
									<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
										<textarea class="form-control input-sm" id="remark"
											name="remark" rows="5" maxLength="150"></textarea>
										<p class="help-block">留言请控制在150个汉字以内</p>
									</div>
								</div>



							</fieldset>
						</div>
					</div>
				</div>

				<!-- 收货地址 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="well well-sm">
							<fieldset>
								<legend> 收货地址 </legend>
								<div class="form-group">
									<label
										class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
										for="mail_address">收货地址</label>
									<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
										<input class="form-control input-sm" id="address"
											name="address" required requireText="请输入收货地址" type="text"
											maxLength="80" value="" />
										<p class="help-block">请填写您的收货地址，精确到街道</p>
									</div>
								</div>
							</fieldset>
						</div>
					</div>
				</div>

				<!-- 购买明细 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
						<div class="well well-sm table-responsive">
							<fieldset>
								<legend>
									购买明细
									<div class="btn-toolbar pull-right hidden-print" role="tolbar">
										<div class="btn-group btn-group-sm">
											<a class="btn btn-default" role="button"
												href="<%=application.getContextPath()%>/customer/cart.jsp">回到购物车，修改产品</a>
										</div>
									</div>
								</legend>
								<table class="table table-condensed table-hover">
									<thead>
										<tr>
											<th>产品名称</th>
											<th>产品描述</th>
											<th>销售单价</th>
											<th>数量</th>
											<th>小计</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${sessionScope.buyGoods}" var="item">
											<tr>
												<td>${item.key.getGoodsName()}</td>
												<td>${item.key.getGoodsDesc()}</td>
												<td>${item.key.getGoodsPrice()}</td>
												<td>${item.value}</td>
												<td>${String.format("%.2f",item.key.getGoodsPrice()*item.value)}</td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="7" class="text-right">
												<p class="form-control-static">
													产品合计：<span class="large-bold-red">￥${String.format("%.2f",sessionScope.total)	}</span>
												</p>
											</td>
										</tr>
									</tfoot>
								</table>
							</fieldset>
						</div>
					</div>
				</div>



				<!-- 背对背订单、最终用途、销售条款 -->
				<div class="row" style="margin-bottom: 20px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
						<div class="checkbox pull-right">
							<label> <input type="checkbox" id="terms" name="terms" />
								我已阅读并同意《销售条款和条件》
							</label>
						</div>

					</div>
				</div>
				<div class="row">
					<div
						class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<input type="submit" class="btn btn-lg btn-block btn-primary"
							id="btn_submit_order"
							onclick="if (true == beforePost()) order_confirm_form.submit();" value="提交订单"/>
					</div>
				</div>
			</form>

		</div>


	</div>
</body>
</html>