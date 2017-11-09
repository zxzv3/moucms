var ApiRequest = new ApiRequest({} , { 
	url : './api/admin/' , 
	event : true ,
	error : function(code , message){
		console.log(message)
	}
})
var popup = new popupWidget();
var dom = new Dom();

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


$(".widget-checkbox").click(function(){
	$(this).toggleClass('active')
})