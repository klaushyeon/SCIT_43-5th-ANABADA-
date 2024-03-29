$(document).ready(function(){
	subadd();
	$('.main').change(subadd);
	$('#write').submit(submitcheck);
	$('.tempadd').click(tempadd);
});	

function submitcheck(){
	if($('#used_title').val().trim() == ""){
		$('#used_title ~ div').css("display" ,"block");
		$('#used_title').focus();
		return false;
	}else{
		$('#used_title ~ div').css("display" ,"none");
	}
	if($('#used_price').val() == "" || isNaN($('#used_price').val()) || $('#used_price').val() <= 0){
		$('#used_price ~ div').css("display" ,"block");
		$('#used_price').focus();
		return false;
	}else{
		$('#used_price ~ div').css("display" ,"none");
	}
	if(!$('#uploadOne').val()){
		$('#uploadOne ~ div').css("display" ,"block");
		$('#uploadOne').focus();
		return false;
	}else{
		$('#uploadOne ~ div').css("display" ,"none");
	}	
	
	if($('#used_content').val().trim().length <= 50){
		$('#used_content ~ div').css("display" ,"block");
		$('#used_content').focus();
		return false;
	}else{
		$('#used_content ~ div').css("display" ,"none");
	}
}

function tempadd(){
		let formdata = $("form#write").serialize();
		if($('#used_price').val() != ""){
			if(isNaN($('#used_price').val()) || $('#used_price').val() <= 0){
				$('#used_price ~ div').css("display" ,"block");
				return false;
			} else{
				$('#used_price ~ div').css("display" ,"none");
			}
		}
			$.ajax({
			url: 'tempadd'
			, type: 'post'
			, data : formdata
			, success: function(){
				alert("임시 저장 되었습니다.")
			}
			, error: function(){
				alert("실패");
			}
			
		});
}

function subadd(){
	 $.ajax({
                url: 'subcate'
                , type: 'get'
                , data: { 'main': $('.main').val() }
                , dataType: 'json'
                , success: function (category_sub) {
					let raw = '';
					for (let i = 0; i < category_sub.length; ++i){
						raw += '<option value="';
						raw += category_sub[i].category_id
						raw += '">'
						raw += category_sub[i].category_sub + '</option>';
						}
					$('.subcate').html(raw);
					}
                , error: function () {
                    alert("실패");
                }
            });
        }