var ApiRequest = new ApiRequest({} , { 
	url : './api/admin/' , 
	event : true ,
	error : function(code , message){
		console.log(message)
	}
})
