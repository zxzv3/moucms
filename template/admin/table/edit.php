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

		<div class="box" api-name="Table/Edit" style="padding-bottom: 30px;">
			<h1>表单基础设置</h1>
			<table class="table-list setting">
				<tr><th width="150"></th><th></th></tr>
				<tr>
					<td>所属表单组</td>
					<td style="padding:10px 20px;">
						<select api-param-name='from_table_group' value="<?=$Table_data['from_table_group']?>">
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
					<td><input api-param-name='name' value="<?=$Table_data['name']?>" max="20" min="2" name="表单名称" type="text" placeholder="请在此处输入表单名称"></td>
				</tr>
				<tr>
					<td>辅数据表名</td>
					<td><input api-param-name='moudles' value="<?=$Table_data['modles']?>" max="512" min="0" name="辅数据表名" type="text" placeholder="请在此处输入辅数据表名"></td>
				</tr>
				<tr>
					<td>主数据表名</td>
					<td><input api-param-name='main_moudle' value="<?=$Table_data['main_modle']?>" max="20" min="1" name="主数据表名" type="text" placeholder="请在此处输入主数据表名"></td>
				</tr>
	

			</table>

			<table class="table-list setting">
				<tr><th width="150"></th><th></th></tr>
				<tr>
					<td>自设行功能</td>
					<td><input api-param-name='row_setup_function' value="<?=$Table_data['row_setup_function']?>" max="512" min="0" name="自设行功能"  type="text" placeholder="请在此处输入自设行功能的fa"></td>
				</tr>
				<tr>
					<td>行基础功能</td>
					<td id="js-row-base-function">
						<div class="item">
							<div class="widget-checkbox" data-name="edit"></div>
							<span>编辑</span>
						</div>
						<div class="item">
							<div class="widget-checkbox" data-name="remove"></div>
							<span>删除</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>表单基础功能</td>
					<td id="js-table-base-function">
						<div class="item">
							<div class="widget-checkbox" data-name="search"></div>
							<span>搜索</span>
						</div>
						<div class="item">
							<div class="widget-checkbox" data-name="removeAll"></div>
							<span>批删</span>
						</div>
						<div class="item">
							<div class="widget-checkbox" data-name="create"></div>
							<span>创建</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>表单标识名</td>
					<td><input api-param-name='uid' value="<?=$Table_data['uid']?>" max="32" min="4" name="表单标识" type="text" placeholder="请在此处输入表单标识（字母）"></td>
				</tr>
			</table>



			<table class="table-list setting">
				<tr><th width="150"></th><th></th></tr>
				<tr>
					<td>每页显示行数</td>
					<td><input api-param-name='page_count' value="<?=$Table_data['page_count']?>" max="2" min="0" name="自设行功能" type="text" placeholder="请在此处输入每页显示行数"></td>
				</tr>
				
			</table>
			
			<div class="tools" style="margin-top:30px;">
				<button class="btn" id="js-table-create"><i class="fa fa-trash-o"></i>删除选中字段</button>
				<button class="btn" id="js-field-create"><i class="fa fa-list"></i>添加字段</button>
				
			</div>
			<table class="table-list list">
				<tr>
					<th width="50"><div class="widget-checkbox"></div></th>
					<th>字段名称</th>
					<th>中文名称</th>
					<th>可否创建</th>
					<th>可否编辑</th>
					<th>删除依据</th>
					<th>是否展示</th>
					<th>对值数据</th>
					<th>操作</th>
				</tr>
				{Table_field_lists}
					<tr>
						<td width="50"><div class="widget-checkbox"></div></td>
						<td>{field_name}</td>
						<td>{name}</td>
						<td>{create}</td>
						<td>{edit}</td>
						<td>{delete}</td>
						<td>{view}</td>
						<td>对值数据</td>
						<td>
							<i class="fa fa-edit"></i>
							<i class="fa fa-trash-o"></i>
						</td>
					</tr>
				{/Table_field_lists}
			</table>
		</div>

		<div class="box" style="padding:5px; background: transparent;">
			<div class="tools" style="margin-bottom: 0;">
				<button class="btn fezocms" id="js-table-edit"><i class="fa fa-edit"></i>编辑超级表单</button>
				<button class="btn danger" id="js-table-remove"><i class="fa fa-trash-o"></i>删除超级表单</button>
				<button class="btn" id="js-table-view"><i class="fa fa-list"></i>浏览超级表单</button>
			</div>
		</div>
	</div>
	
	

	<script type="text/dom">
		var create-table-group = <div class="create-table-group" api-name="Table_group/Create">
			<input type="text" placeholder="请输入表单组名称" api-param-name="name">
		</div>
		var create-field = <div class="create-table-group" api-name="Table/CreateField">
			<input type="text" placeholder="请输入字段名称" name="字段名称" max="26" min="1" api-param-name="key">
			<input type="text" placeholder="请输入字段中文名称" name="字段中文名" max="16" min="1" api-param-name="name">
			<select api-param-name="create" min="1" max="1" name="可否创建">
				<option value="">请选择可否创建</option>
				<option value="0">可以创建</option>
				<option value="1">不可创建</option>
			</select>
			<select api-param-name="edit" min="1" max="1" name="可否编辑">
				<option value="">请选择可否编辑</option>
				<option value="0">可以编辑</option>
				<option value="1">不可编辑</option>
			</select>
			<select api-param-name="delete" min="1" max="1" name="是否为删除依据">
				<option value="">请选择是否为删除依据</option>
				<option value="0">删除依据</option>
				<option value="1">不是删除依据</option>
			</select>
			<select api-param-name="view" min="1" max="1" name="可否展示">
				<option value="">请选择可否展示</option>
				<option value="0">可以展示</option>
				<option value="1">不可以展示</option>
			</select>
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


		$.each(<?=$Table_data['row_base_function']?> , function(key , value){
			$("#js-row-base-function [data-name='" + value + "']").addClass('active')
		})

		$.each(<?=$Table_data['table_base_function']?> , function(key , value){
			$("#js-table-base-function [data-name='" + value + "']").addClass('active')
		})


		$("#js-field-create").click(function(){
			popup.sure({
				title : '添加表单字段',
				content : dom.get('create-field')
			}).then(function(){
				ApiRequest.push('Table/CreateField' , {
					params : {
						from_table : <?=$Table_data['id']?>,
					}
				})
			})
		})


		// 删除超级表单
		$("#js-table-remove").click(function(){
			popup.sure({
				title : '您确定要删除该表单吗',
				content : '您确定要删除该表单吗？您确定要删除该表单吗？该操作将无法复原，所属该表单下的相关数据将会被全部删除'
			}).then(function(){

				ApiRequest.push('Table/Remove' , {
					params : {
						"id" : <?=$Table_data['id']?>,
					}
				});
			})
		})



		// 编辑超级表单
		$("#js-table-edit").click(function(){
			var row_base_function = new Array();
			var table_base_function = new Array();
			$("#js-row-base-function .active").each(function(key , value){
				row_base_function.push($(value).attr('data-name'))
			})

			$("#js-table-base-function .active").each(function(key , value){
				table_base_function.push($(value).attr('data-name'))
			})

			ApiRequest.push('Table/Edit' , {
				params : {
					"id" : <?=$Table_data['id']?>,
					"row_base_function" : row_base_function,
					"table_base_function" : table_base_function,
				}
			});

		})
	</script>
</body>
</html>