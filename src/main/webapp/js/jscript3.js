/**
 * 
 */
$(document).ready(function(){
	$('.delete').click(function(){
		var confirmation = confirm('Are you sure?');
		if (confirmation)
		{
        	console.log('ok');
	    }
	    else
	    {
	      console.log('cancel')
	      return false;
	    }
	});
});

$(document).ready(function(){
	$('.edit').click(function(){
		var id = $(this).attr('number');
		$('#editnote'+id).css('display', 'block');
		$('#note'+id).css('display','none');
	})
})

$(document).ready(function(){
	$('.cancel').click(function(){
		var id = $(this).attr('number');
		$('#editnote'+id).css('display', 'none');
		$('#note'+id).css('display','block');
		return false;
	})
})