/**
 * 
 */
$(document).ready(function(){
	$('#submit').click(function(){
		var mail = $('#formid1').val();
		if(mail == "")
		{
			$('#errormail').html('*this field must be filled');
			$('#errormail').css('color','red');
			return false;
		}
		var atindex = mail.indexOf('@');
		var dotindex = mail.lastIndexOf('.');
		if(atindex<1 || dotindex>mail.length-2 || dotindex-atindex<3)
		{
			$('#errormail').html('*please enter valid email');
			$('#errormail').css('color','red');
			return false;
		}
	});
});