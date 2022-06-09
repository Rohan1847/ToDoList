/**
 * 
 */
$(document).ready(function(){
	$('#submit').click(function(){
		var mail = $('#formid2').val();
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
		var pass = $('#formid3').val();
		var passpattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
		if(!passpattern.test(pass))
		{
			$('#errorpass').html('*password should contains minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character');
			$('#errorpass').css('color','red');
			$('formid3').focus();
			return false;
		}
	});
});