	<link rel="stylesheet" href="./assets/css/admin/page/table/table.css">
</head>
<body>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/top-header');?>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/menu');?>

	<div class="warpper">
		<div class="warpper-menu">
			{Table_group_lists}
			<div class="item">
				<div class="top-menu">
					<i class="fa fa-plus-square-o"></i> {name}
				</div>
				<div class="song-menu">
					<ul>
						{song}
						<li><a onclick="window.location.href=adminDir + '/table/home/edit?id={id}'">{name}</a></li>
						{/song}
					</ul>
				</div>
			</div>
			{/Table_group_lists}
		</div>
		<!-- <div class="tools">
			<button class="btn fezocms"><i class="fa fa-plus"></i>创建超级表单组</button>
			<button class="btn danger"><i class="fa fa-trash-o"></i>删除超级表单</button>
			<button class="btn danger"><i class="fa fa-trash-o"></i>删除超级表单组</button>
		</div> -->

		<div class="box" api-name="Table/Create" style="padding-bottom: 30px;">
			<h1>表单基础设置</h1>
			<table class="table-list setting">
				<tr><th width="150"></th><th></th></tr>
				<tr>
					<td>所属表单组</td>
					<td style="padding:10px 20px;">
						<select api-param-name='from_table_group'>
							<option value="0">请选择所属表单组</option>
							{Table_group_lists}
							<option value="{id}">{name}</option>
							{/Table_group_lists}
						</select>
						<i class="iconfont icon-icon_album_add fl" id="js-create-group"></i>
					</td>
				</tr>
				<tr>
					<td>表单名称</td>
					<td><input api-param-name='name' max="20" min="2" name="表单名称" type="text" placeholder="请在此处输入表单名称"></td>
				</tr>
				<tr>
					<td>辅数据表名</td>
					<td><input api-param-name='moudles' max="512" min="0" name="辅数据表名" type="text" placeholder="请在此处输入辅数据表名"></td>
				</tr>
				<tr>
					<td>主数据表名</td>
					<td><input api-param-name='main_moudle' max="20" min="1" name="主数据表名" type="text" placeholder="请在此处输入主数据表名"></td>
				</tr>
	

			</table>

			<table class="table-list setting">
				<tr><th width="150"></th><th></th></tr>
				<tr>
					<td>自设行功能</td>
					<td><input api-param-name='row_setup_function' max="512" min="0" name="自设行功能"  type="text" placeholder="请在此处输入自设行功能的fa"></td>
				</tr>
				<tr>
					<td>行基础功能</td>
					<td id="js-row-base-function">
						<div class="item">
							<div class="widget-checkbox active" data-name="edit"></div>
							<span>编辑</span>
						</div>
						<div class="item">
							<div class="widget-checkbox active" data-name="trash-o"></div>
							<span>删除</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>表单基础功能</td>
					<td id="js-table-base-function">
						<div class="item">
							<div class="widget-checkbox active" data-name="search"></div>
							<span>搜索</span>
						</div>
						<div class="item">
							<div class="widget-checkbox active" data-name="removeAll"></div>
							<span>批删</span>
						</div>
						<div class="item">
							<div class="widget-checkbox active" data-name="create"></div>
							<span>创建</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>表单标识名</td>
					<td><input api-param-name='uid' max="32" min="4" name="表单标识" type="text" placeholder="请在此处输入表单标识（字母）"></td>
				</tr>
			</table>
			<table class="table-list setting">
				<tr><th width="150"></th><th></th></tr>
				<tr>
					<td>每页显示行数</td>
					<td><input api-param-name='page_count' value="10" max="2" min="0" name="每页显示行数" type="text" placeholder="请在此处输入每页显示行数"></td>
				</tr>
				
			</table>
			
		</div>

		<div class="box" style="padding:5px; background: transparent;">
			<div class="tools" style="margin-bottom: 0;">
				<button class="btn fezocms" id="js-table-create"><i class="fa fa-save"></i>创建超级表单</button>
			</div>
		</div>
	</div>
	
	

	<script type="text/dom">
		var create-table-group = <div class="create-table-group" api-name="Table_group/Create">
			<input type="text" placeholder="请输入表单组名称" api-param-name="name">
		</div>
	</script>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
	<script type="text/javascript">

					
		$("#js-create-group").click(function(){
			popup.sure({
				title : '创建表单组',
				content : dom.get('create-table-group')
			}).then(function(){
				ApiRequest.push('Table_group/Create' , { success : true }).then(function(data){
					var result = '';
					result += '<option value="0">请选择所属表单组</option>';
					$.each(data.result , function(key , value){
						result += "<option value='" + value.id + "'>" + value.name + "</option>";
					});
					$("[api-param-name='from_table_group']").html(result);
					popup.toast('添加表单组成功');
					popup.close();
				});
			})
		})

		$("#js-table-create").click(function(){

			var row_base_function = new Array();
			var table_base_function = new Array();
			$("#js-row-base-function .active").each(function(key , value){
				row_base_function.push($(value).attr('data-name'))
			})

			$("#js-table-base-function .active").each(function(key , value){
				table_base_function.push($(value).attr('data-name'))
			})


			ApiRequest.push('Table/Create' , {
				params : {
					"row_base_function" : row_base_function,
					"table_base_function" : table_base_function,
				}
			});

		})
	</script>
</body>
</html>