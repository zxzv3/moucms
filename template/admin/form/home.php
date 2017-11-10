</head>
<body>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/top-header');?>
	<?php $this->load->view(ADMIN_TEMPLATE . '/template/menu');?>


	<div class="warpper">
		<div class="tools">

			<?php
				if(isset($Table_data['table_base_function']['removeAll'])) echo '<button class="btn danger" id="js-remove-all" ><i class="fa fa-trash-o"></i>删除选中</button>';
				if(isset($Table_data['table_base_function']['create'])) echo '<button class="btn active" id="js-create" ><i class="fa fa-plus"></i>创建数据</button>';

			?>
			
			
			<button class="btn" id="js-search"><i class="fa fa-search"></i>搜索筛选</button>
			<select class="widget-switch" widgetname="search" name="from_group" value="">
				<option value="-1">全部用户</option>
				
				<option value="4">钻石会员</option>
				
				<option value="3">黄金会员</option>
				
				<option value="2">白银会员</option>
				
				<option value="1">普通会员</option>
				
			</select>
			<select class="widget-switch" widgetname="search" name="state" value="">
				<option value="-1">全部状态</option>
				<option value="0">正常</option>
				<option value="1">封禁</option>
			</select>

		</div>
		<table class="table-list">
			<tr>

				<?php
					// 是否有批量删除权限
					if(isset($Table_data['table_base_function']['removeAll'])) echo '<th width="50"><div class="widget-checkbox"></div></th>';
					
					// 将所有字段展示出来
					// {$value['width']}
					foreach ($Table_field_lists as $key => $value){
						if($value['view'] == 0) echo "<th width=''>{$value['name']}</th>";
					}

					// 是否存在行功能
					$row_setup_function = json_decode($Table_data['row_setup_function'] , true);
					$row_base_function = json_decode($Table_data['row_base_function'] , true);
					$row_function = array_merge($row_setup_function , $row_base_function);
					if(count($row_function) >= 0) echo "<th>操作</th>";
				?>
				
			</tr>
			

			<?php
					//print_r($Data_lists);
				foreach ($Data_lists as $data_key => $data_value) {
					echo "<tr data-data='{$data_value['data']}'>";
					if(isset($Table_data['table_base_function']['removeAll'])) echo '<td width="50"><div class="widget-checkbox"></div></td>';
					foreach ($Table_field_lists as $field_key => $field_value) {
						if($field_value['view'] != 0) continue;
						if( ! isset($data_value[$field_value['field_name']])){
							echo "<td><span style='color:#ff0000'>Error</span></td>";
							continue;
						}

						echo "<td>{$data_value[$field_value['field_name']]}</td>";
					}

					if(count($row_function) > 0){
						echo "<td>";
						foreach ($row_function as $row_function_key => $row_function_value) {
							echo "<i class='fa fa-{$row_function_value}'></i>";
						}
						echo "</td>";
					}
					echo '</tr>';
				}

			?>

			
			<!-- <tr data-data="{&quot;id&quot;:&quot;268&quot;,&quot;nickname&quot;:null,&quot;username&quot;:&quot;2317392448&quot;,&quot;password&quot;:&quot;f4a6249a63e2bcc154db15225243660d&quot;,&quot;slat&quot;:&quot;681066&quot;,&quot;repassword_rand&quot;:null,&quot;repassword_time&quot;:null,&quot;email_rand&quot;:null,&quot;phone_rand&quot;:null,&quot;email_timeout&quot;:null,&quot;phone_timeout&quot;:null,&quot;phone&quot;:null,&quot;qq&quot;:null,&quot;mail&quot;:&quot;2317392448@qq.com&quot;,&quot;from_group&quot;:&quot;1&quot;,&quot;lost_time&quot;:&quot;0000-00-00 00:00:00&quot;,&quot;lost_ip&quot;:&quot;&quot;,&quot;now_time&quot;:null,&quot;now_ip&quot;:null,&quot;count&quot;:&quot;0&quot;,&quot;state&quot;:&quot;0&quot;}">
				<td width="50" limit="User/remove" style="display: table-cell;"><div class="widget-checkbox" data-id="268"></div></td>
				<td>2317392448</td>
				<td>从未登录</td>
				<td>从未登录</td>
				<td></td>
				<td></td>
				<td>{success_title_count}</td>
				<td>{max_title_count}</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0次</td>
				<td><span class="label success">正常</span></td>
				<td limit="User/edit" style="display: table-cell;">
					<i class="fa fa-eye"></i>
					<i class="fa fa-edit" limit="User/edit" style="display: inline;"></i>
				</td>
			</tr> -->
			
		</table>
	</div>

	<?php $this->load->view(ADMIN_TEMPLATE . '/template/footer');?>
</body>
</html>