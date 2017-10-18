
</head>
<body>
	
	<div class="login" api-name="Admin_user/Login">
		<input type="text" api-param-name="username" name="用户名" max="16" min="5" placeholder="请输入您的管理员账号">
		<input type="password" api-param-name="password" name="密码" max="16" min="5" placeholder="请输入您的管理员密码">
		<button class="btn" api-event="submit">登录账号</button>
	</div>

	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
	<script type="text/javascript">
		
	</script>
</body>
</html>