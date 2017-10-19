	<link rel="stylesheet" href="./assets/css/admin/login.css">
</head>
<body>

	<div class="login" api-name="Admin_user/Login">

		<div class="item">
			<span><i class="iconfont icon-usered"></i></span>
			<input type="text" api-param-name="username" name="用户名" max="16" min="5" placeholder="请输入您的管理员账号">
		</div>

		<div class="item">
			<span><i class="iconfont icon-mima4"></i></span>
			<input type="password" api-param-name="password" name="密码" max="16" min="5" placeholder="请输入您的管理员密码">
		</div>

		<button class="btn" api-event="submit">登录账号</button>
	</div>

	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
</body>
</html>