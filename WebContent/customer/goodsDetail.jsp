<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>果然新鲜</title>
<link href="css/orange.css" rel="stylesheet">
<link href="css/share.css" rel="stylesheet">
<script src="js/jquery-1.12.3.js"></script>
</script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
</head>
<body>
	<!--顶部导航-->
	<div class="headr">
		<div class="heard-con">
			<img src="images/logo.jpg"
				style="margin-top: 7px; float: left; position: absolute">
			<div class="headr-nav">
				<ul>
					<li><a href="index.jsp"><span>首页</span></a></li>
					<li><a href="/yukangfruit/ProdeceServlet">全部产品</a></li>
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
	<!--主页内容-->
	<div class="content">
		<div class="cont-top">
			<div class="cont-left">
				<div class="ctl-img">
					<img src="${sessionScope.goods.getGoodsImgPath() }">
				</div>
				<div class="collect">
					<div class="coll">
						<i class="iconfont">&#xe641;</i> 收藏
					</div>
					<div class="coll">
						<i class="iconfont">&#xe617;</i> 分享
						<div class="share"></div>
					</div>
				</div>
				<div class="next">
					<div class="nt">上一个</div>
					<div class="nt ntp">下一个</div>
				</div>


			</div>
			<div class="cont-right">
				<div class="J_productTitle title g_minor">
					<span>${sessionScope.goods.getGoodsName()} </span> <span
						id="productQrCode" class="webSiteQrCode">&nbsp;
						<div class="code">
							<img src="images/qrCode%20(1).gif">
							<p>扫描二微码</p>
						</div>
					</span>
				</div>
				<div class="pic">
					<span class="ppi">价格:</span> <span class="f-mallUnit">￥</span> <span
						class="pcc">${sessionScope.goods.getGoodsPrice() }</span>
				</div>
				<div class="pict">
					<div class="f-proSatifySumWrap">
						<div class="f-satifyDetail">
							<span class="g_minor  salesVolume">评论：</span><span
								class="J_commNum">1</span>条
						</div>
						<div class="J_pdDetailBorder f-pdDetailBorder"></div>
						<div class="f-satifyDetail">
							<span class="g_minor  salesVolume">收藏：</span>1
						</div>
					</div>
				</div>
				<div class="pic">
					<span class="ppi">商品描述:</span> <span class="f-mallUnit">${sessionScope.goods.getGoodsDesc() }</span>
				</div>
				<form action="/yukangfruit/CartServlet" method="get">
					<div class="fk-pd5MallCartCount">
						<div class="f-cartbuyCountWrap">
							<span class="f-propName g_minor"
								style="width: 75px; min-width: 75px; max-width: 75px;">购买数量：</span>
							<input type="text" value="1"
								class="g_itext cartBuyCount f-cartBuyCount" name="goodsNum">
						</div>
						<div class="f-buyCountBtn">
							<div class="f-countBtn mallJian"></div>
							<div class="f-countBtn disableMallJian"></div>
						</div>
					</div>
					<div class="fk-pd5MallActBtns">
						<input type="hidden" name="goodsName"
							value="${sessionScope.goods.getGoodsName()}" /> <input
							type="hidden" name="method" value="2" /> <div class="buttn"
							>加入购物车</div>
						<input class="butto" value="立即购买" type="submit"/>

					</div>

					<div class="popup">
						<div class="login">
							<div class="lg-cont">
								<div class="lhd"></div>
								<div class="lbd">
									<div class="lbd1" style="display: block">
										<div style="text-align: center;">加入购物车成功！</div>
										<input class="loginButton middle" type="submit" value="确定"/>
									</div>

								</div>

							</div>
						</div>
					</div>
					<!--弹框结束-->

				</form>

			</div>
		</div>

		<div class="cont-bot">
			<div class="hd">
				<ul>
					<li class="active">
						<div class="hd1 acti"></div> 产品详情
					</li>
					<li>
						<div class="hd1"></div> 产品评论(1)
					</li>
					<li>
						<div class="hd1"></div> 销售记录(0)
					</li>
				</ul>

			</div>
			<div class="bd">
				<div class="bd1" style="display: block"></div>
				<div class="bd1">
					<img src="images/or-5.jpg"> <img src="images/or-6.jpg">
				</div>
				<div class="bd1">
					<div class="sale">
						<ul>
							<li>买家</li>
							<li>选项​​信息</li>
							<li>数量</li>
							<li>成交时间</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--主页内容结束-->
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
	<!--底部结束-->
	<!--弹框-->

</body>
<script src="js/orange.js"></script>
</html>