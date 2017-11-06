	<link rel="stylesheet" href="./assets/css/admin/home.css">
</head>
<body>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/top-header');?>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/menu');?>

	<div class="warpper">
		<div class="top">
			<div class="box user-data">
				<div class="user">
					<img src="https://tvax4.sinaimg.cn/crop.69.0.281.281.180/006qCLOdly8fjzfrep5lij30dw07tgnt.jpg" alt="">
					<div class="data">
						<h2>您好，<?=$_SESSION['admin_user']['username']?> <a href="">修改资料</a></h2>
						<hr>
						<p>上次登录IP：127.168.0.1 (本地局域网)</p>
						<p>上次登录时间：2017年10月10日 10点10分10秒</p>
					</div>
				</div>
			</div>
			<div class="box count">
				<div class="item">
					<h2>293,938</h2>
					<span>今日新增人数</span>
				</div>
				<div class="item">
					<h2>293,938</h2>
					<span>昨日新增人数</span>
				</div>
				<div class="item">
					<h2>293,938</h2>
					<span>总注册人数</span>
				</div>
				<div class="item">
					<h2>293,938</h2>
					<span>今日访问人数</span>
				</div>
			</div>
		</div>
		<div class="box todo">
			<h1>最近待办事宜</h1>
			<div class="list">
				<ul>
					<li><i class="fa fa-envelope-o"></i><a href="">当前有一笔新的订单需要您处理</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">有一条新的用户留言待反馈</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">用户提交了一个新的工单</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">网站接口出现了报错异常</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">当前有一笔新的订单需要您处理</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">有一条新的用户留言待反馈</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">用户提交了一个新的工单</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">网站接口出现了报错异常</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
					<li><i class="fa fa-envelope-o"></i><a href="">访问统计曲线访问统计曲线访问统计曲线</a> <span class="time">2017年11月6日11:07:27</span></li>
				</ul>
			</div>
		</div>

		<div class="box other">
			<div class="other-main">
				<h1>服务器相关</h1>
				<div class="state">

					<div class="item">
						<div class="item-main">
							<h2>10</h2>
							<span>接口预警</span>
						</div>
					</div>

					<div class="item">
						<div class="item-main">
							<h2>20<span>GB</span></h2>
							<span>空间充足</span>
						</div>
					</div>

					<div class="item">
						<div class="item-main">
							<h2>20<span>GB</span></h2>
							<span>剩余内存</span>
						</div>
					</div>
					<div class="item">
						<div class="item-main">
							<h2>10</h2>
							<span>接口预警</span>
						</div>
					</div>

					<div class="item">
						<div class="item-main">
							<h2>20<span>GB</span></h2>
							<span>剩余空间</span>
						</div>
					</div>

					<div class="item">
						<div class="item-main">
							<h2>20<span>GB</span></h2>
							<span>剩余内存</span>
						</div>
					</div>


				</div>
				<div class="data">
					<ul>
						<li>系统版本号：0.1 bate</li>
						<li>服务器引擎：Apache/2.4.23..</li>
						<li>PHP版本号：0</li>
						<li>Mysql版本号：0</li>
						<li>服务器操作系统：Windows</li>
						<li>上传文件限制：2M</li>
						<li>脚本超时时间：	30秒</li>
						<li>短标签支持：√</li>
						<li>Session支持：√</li>
						<li>Cookie 支持：√</li>
						<li>POST最大限制：8M</li>
						<li>上传文件最大限制：2M</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="box">
			<h1>访问统计曲线</h1>
			<canvas id="canvas" style="position: relative;height: 250px;"></canvas>
		</div>
		<div class="box">
			<h1>注册人数统计曲线</h1>
				<canvas id="reg" style="position: relative;height: 250px;"></canvas>
		</div>
		<div class="box">
			<h1>订单统计曲线</h1>
				<canvas id="canvas2" style="position: relative;height: 250px;"></canvas>
		</div>
	</div>
	

	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
	<script type="text/javascript" src="./assets/lib/chart/chart.js"></script>
	<script type="text/javascript">
		var randomScalingFactor = function() {
	        return (Math.ceil(Math.random() * 10.0) * Math.pow(10, Math.ceil(Math.random() * 5))) / 1000;
	    };
		window.chartColors = {
			red: 'rgb(255, 99, 132)',
			reds: 'rgba(255, 99, 132,0.5)',
			orange: 'rgb(255, 159, 64)',
			yellow: 'rgb(255, 205, 86)',
			green: 'rgb(75, 192, 192)',
			blue: 'rgb(54, 162, 235)',
			purple: 'rgb(153, 102, 255)',
			grey: 'rgb(201, 203, 207)',
			yellows: 'rgba(255, 205, 86,0.5)',
			blues: 'rgba(54, 162, 235,0.5)',
		};

	    var config = {
	        type: 'line',
	        data: {
	            labels: ["0点", "1点", "2点", "3点", "4点", "5点", "6点", "7点", "8点", "9点", "10点", "11点", "12点", "13点", "14点", "15点", "16点", "17点", "18点", "19点", "20点", "21点", "22点", "23点"],
	            datasets: [{
	                label: "访问人数",
	                backgroundColor: window.chartColors.yellows,
	                borderColor: window.chartColors.yellow,
	                fill: true,
	                data: ["62.52","59.69","60.00","62.76","64.04","67.92","69.54","75.58","77.78","75.91",0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	            }]
	        },
	        options: {
	        	maintainAspectRatio : false,
	            responsive: true,
	            title:{
	                display:false,
	            },
	            scales: {
	                xAxes: [{
	                    display: true,
	                }],
	                // yAxes: [{
	                //     display: true,
	                //     type: 'logarithmic',
	                // }]
	            }
	        }
	    };



	    var order = {
	        type: 'line',
	        data: {
	            labels: ["0点", "1点", "2点", "3点", "4点", "5点", "6点", "7点", "8点", "9点", "10点", "11点", "12点", "13点", "14点", "15点", "16点", "17点", "18点", "19点", "20点", "21点", "22点", "23点"],
	            datasets: [{
	                label: "成交订单",
	                backgroundColor: window.chartColors.blues,
	                borderColor: window.chartColors.blue,
	                fill: true,
	                data: ["26.52","23.69","24","26.76","28.04","31.92","33.54","39.58","41.78","39.91",0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	            } ,{
	                label: "创建订单",
	                backgroundColor: window.chartColors.yellows,
	                borderColor: window.chartColors.yellow,
	                fill: true,
	                data: ["62.52","59.69","60.00","62.76","64.04","67.92","69.54","75.58","77.78","75.91",0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	            }]
	        },
	        options: {
	        	maintainAspectRatio : false,
	            responsive: true,
	            title:{
	                display:false,
	            },
	            scales: {
	                xAxes: [{
	                    display: true,
	                }],
	                // yAxes: [{
	                //     display: true,
	                //     type: 'logarithmic',
	                // }]
	            }
	        }
	    };
	    window.onload = function() {
	        var ctx = document.getElementById("canvas").getContext("2d");
	        window.myLine = new Chart(ctx, config);
	        var ctx2 = document.getElementById("canvas2").getContext("2d");
	        window.myLine = new Chart(ctx2, order);
	        var reg = document.getElementById("reg").getContext("2d");
	        window.myLine = new Chart(reg, config);
	    };


	</script>
</body>
</html>