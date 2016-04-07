<script language="javascript">
function next(){
	var page = $("#table_page").val();
	var total = $("#table_total").val();
	page++; 
	if(page >= total){
		alert("已经是末页");
	} else {
		$("#table_page").val(page);
		$("#table_form").submit();
	}	
}

function preview(){
	var page = $("#table_page").val();
	page--;
	if(page < 0){
		alert("已经是首页");
	} else {
		$("#table_page").val(page);
		$("#table_form").submit();
	}	
}

function first(){
	var page = $("#table_page").val();
	page--
	if(page < 0){
		alert("已经是首页");
	} else {
		$("#table_page").val(0);
		$("#table_form").submit();
	}
}

function last(){
	var page = $("#table_page").val();
	page++;
	var total = $("#table_total").val();
	if(page >= total){
		alert("已经是末页");
	} else {
		$("#table_page").val(total-1);
		$("#table_form").submit();
	}
}
</script>      