jQuery(document).ready(function(){
	$(".usr_tab td").mouseover(function(){
		$(this).parent().addClass("customtablehover");
	}).mouseout(function(){
		$(this).parent().removeClass("customtablehover");
	})
	
	$(".hint").focus(function(){
		var obj = $(this);
		if(obj.val()==obj.attr("hint")){			
			obj.val("");
		}
	}).blur(function(){
		var obj = $(this);
		if(obj.val().length <= 0){			
			obj.val(obj.attr("hint"));
		}
	})
})