	<link rel="stylesheet" href="./assets/css/admin/home.css">
</head>
<body>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/top-header');?>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/menu');?>

	<div class="warpper">
		<div class="top">
			<div class="box user-data">
				<img src="https://tvax4.sinaimg.cn/crop.69.0.281.281.180/006qCLOdly8fjzfrep5lij30dw07tgnt.jpg" alt="">
				<div class="data">
					<h2>您好，<?=$_SESSION['admin_user']['username']?> <a href="">修改资料</a></h2>
					<hr>
					<p>上次登录IP：127.168.0.1 (本地局域网)</p>
					<p>上次登录时间：2017年10月10日 10点10分10秒</p>
				</div>
			</div>
			<div class="box">2</div>
		</div>
		<div class="box">
			<h1>访问统计报表</h1>
		</div>
		<div class="box">
			<h1>订单统计报表</h1>
		</div>
	</div>

	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
</body>
</html>