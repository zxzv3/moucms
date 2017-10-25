	<link rel="stylesheet" href="./assets/css/admin/login.css">
</head>
<body>
	<div class="container">
		<div id="particles-js"></div>
	</div>

	<div class="login" api-name="Admin_user/Login">
		<div class="top-header">
			<h1>moucms</h1> <br>
			<span>更高效更便捷的快速开发系统</span>
		</div>
		<div class="box">
			<div class="item">
				<span><i class="iconfont icon-usered"></i></span>
				<input type="text" api-param-name="username" name="用户名" max="16" min="5" placeholder="请输入您的管理员账号">
			</div>

			<div class="item">
				<span><i class="iconfont icon-mima4"></i></span>
				<input type="password" api-param-name="password" name="密码" max="16" min="5" placeholder="请输入您的管理员密码">
			</div>

			<div class="item verification">
				<span><i class="iconfont icon-yanzhengma1" style=""></i></span>
				<input type="text" api-param-name="verification" name="验证码" max="4" min="4" placeholder="请输入右侧的验证码">
				<img src="./verification?rand=<?=time()?>" onclick="$(this).attr('src' , './verification?rand=' + Math.random())">
			</div>
			<button class="btn fezocms" api-event="submit">登录账号</button>
		</div>
	</div>

	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
	<script type="text/dom">
		var popup_toast = <div class="toast" class="toast" id="js-toast">
			<p></p>
		</div>
		var popup_input_toast = <div class="input-toast" id="js-input-toast">
			<div class="input-toast-up">
				<i id="js-i" class="fa fa-sort-asc"></i>
			</div>
			<p></p>
		</div>
		var popup_input_toast_success = <div class="input-toast success" id="js-input-toast">
			<div class="input-toast-up">
				<i id="js-i" class="fa fa-sort-asc"></i>
			</div>
			<p></p>
		</div>

		var popup_sure = <div class="popup-opacity" id="js-popup-sure">
			<div class="popup-sure">
				<div class="popup-sure-header">
					<h1></h1>
					<div class="close" id="js-close"><i class="fa fa-power-off"></i></div>
				</div>
				<div class="popup-sure-content">
				</div>
				<div class="popup-sure-bottom">
					<button class="btn fezocms">确认</button>
					<button class="btn" id="js-close">取消</button>
				</div>
			</div>
		</div>
	</script>
	<script src="./assets/js/three.js"></script>
	<script src="./assets/lib/dom/dom.js"></script>
	<script src="./assets/lib/popup/popup.js"></script>
	<script src="./assets/js/Projector.js"></script>
	<script src="./assets/js/CanvasRenderer.js"></script>

	<script>

		var popup = new popupWidget();

		ApiRequest.set(function(data){
			popup.toast('登录成功，稍后页面将会自动刷新')
			ApiRequest.success()
		} , function(key , data){
			if(typeof data.data != 'undefined'){
				popup.toast(data.data[0].message)
			}else{
				popup.toast(data.message)
			}
		})

		var SEPARATION = 100, AMOUNTX = 50, AMOUNTY = 50;

		var container, stats;
		var camera, scene, renderer;

		var particles, particle, count = 0;

		var mouseX = 0, mouseY = -500;

		var windowHalfX = window.innerWidth / 2;
		var windowHalfY = window.innerHeight / 2;

		init();
		animate();

		function init() {

			container = document.createElement( 'div' );
			container.style.position = 'relative';
			container.style.top = '200px';
			document.body.appendChild( container );

			camera = new THREE.PerspectiveCamera( 55, window.innerWidth / window.innerHeight, 1, 25000 );
			camera.position.z = 1400;

			scene = new THREE.Scene();

			particles = new Array();

			var PI2 = Math.PI * 2;
			var material = new THREE.SpriteCanvasMaterial( {

				color: 0xdddddd,
				program: function ( context ) {

					context.beginPath();
					context.arc( 0, 0, 0.5, 0, PI2, true );
					context.fill();

				}

			} );

			var i = 0;

			for ( var ix = 0; ix < AMOUNTX; ix ++ ) {

				for ( var iy = 0; iy < AMOUNTY; iy ++ ) {

					particle = particles[ i ++ ] = new THREE.Sprite( material );
					particle.position.x = ix * SEPARATION - ( ( AMOUNTX * SEPARATION ) / 2 );
					particle.position.z = iy * SEPARATION - ( ( AMOUNTY * SEPARATION ) / 2 );
					scene.add( particle );

				}

			}

			renderer = new THREE.CanvasRenderer({
				alpha:true,
				antialias: true

			});
			renderer.setPixelRatio( window.devicePixelRatio );
			renderer.setSize( window.innerWidth, window.innerHeight );
			container.appendChild( renderer.domElement );
			renderer.setClearColor(0xFFFFFF, 0.0); 



			/*stats = new Stats();
			container.appendChild( stats.dom );*/

			document.addEventListener( 'mousemove', onDocumentMouseMove, false );
			document.addEventListener( 'touchstart', onDocumentTouchStart, false );
			document.addEventListener( 'touchmove', onDocumentTouchMove, false );

			//

			window.addEventListener( 'resize', onWindowResize, false );

		}

		function onWindowResize() {

			windowHalfX = window.innerWidth / 2;
			windowHalfY = window.innerHeight / 2;

			camera.aspect = window.innerWidth / window.innerHeight;
			camera.updateProjectionMatrix();

			renderer.setSize( window.innerWidth, window.innerHeight );

		}

		//

		function onDocumentMouseMove( event ) {

			//mouseX = event.clientX - windowHalfX;
			//mouseY = event.clientY - windowHalfY;

		}

		function onDocumentTouchStart( event ) {

			if ( event.touches.length === 1 ) {

				event.preventDefault();

				mouseX = event.touches[ 0 ].pageX - windowHalfX;
				mouseY = event.touches[ 0 ].pageY - windowHalfY - 200;

			}

		}

		function onDocumentTouchMove( event ) {

			if ( event.touches.length === 1 ) {

				event.preventDefault();

				mouseX = event.touches[ 0 ].pageX - windowHalfX;
				mouseY = event.touches[ 0 ].pageY - windowHalfY;

			}

		}

		//

		function animate() {

			requestAnimationFrame( animate );

			render();
			//stats.update();

		}

		function render() {

			camera.position.x += ( mouseX - camera.position.x ) * .05;
			camera.position.y += ( - mouseY - camera.position.y ) * .05;
			camera.lookAt( scene.position );

			var i = 0;

			for ( var ix = 0; ix < AMOUNTX; ix ++ ) {

				for ( var iy = 0; iy < AMOUNTY; iy ++ ) {

					particle = particles[ i++ ];
					particle.position.y = ( Math.sin( ( ix + count ) * 0.3 ) * 50 ) +
						( Math.sin( ( iy + count ) * 0.5 ) * 50 );
					particle.scale.x = particle.scale.y = ( Math.sin( ( ix + count ) * 0.3 ) + 1 ) * 4 +
						( Math.sin( ( iy + count ) * 0.5 ) + 1 ) * 4;

				}

			}

			renderer.render( scene, camera );

			count += 0.1;

		}

	</script>
</body>
</html>