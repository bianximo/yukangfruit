<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<!-- Head -->
<head>

<title>果然新鲜果蔬销售配送系统</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- //Meta-Tags -->

<!-- Style -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>果然新鲜果蔬销售配送系统</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			<form action="LoginServlet" method="post">
				<input type="text" Name="Username" placeholder="用户名" required="">
				<input type="password" Name="Password" placeholder="密码" required="">

				<ul class="tick w3layouts agileits">
					<li><input type="checkbox" id="brand1" value="remerber" name="Remember"> <label
						for="brand1"><span></span>记住我</label> 
					</li>
				</ul>

				<div class="send-button w3layouts agileits">
					<input type="submit" value="登 录">
				</div>
			</form>
			<a href="#">记住密码?</a>

			<div class="social-icons w3layouts agileits">
				<p>- 其他方式登录 -</p>
				<ul>
					<li class="qq"><a href="#"> <span
							class="icons w3layouts agileits"></span> <span
							class="text w3layouts agileits">QQ</span></a></li>
					<li class="weixin w3ls"><a href="#"> <span
							class="icons w3layouts"></span> <span
							class="text w3layouts agileits">微信</span></a></li>
					<li class="weibo aits"><a href="#"> <span
							class="icons agileits"></span> <span
							class="text w3layouts agileits">微博</span></a></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="register w3layouts agileits">
			<h2>注 册</h2>
			<form action="RegistServlet" method="post">
				<input type="text" Name="Name" placeholder="用户名" required="">
				<input type="password" Name="Password" placeholder="密码" required="">
				<input type="text" Name="Address" placeholder="地址" required="">
				<input type="text" Name="Tel" placeholder="手机号码" required="">
				<div class="send-button w3layouts agileits">
					<form>
						<input type="submit" value="免费注册">
					</form>
				</div>
			</form>

			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>



</body>
<!-- //Body -->

</html>