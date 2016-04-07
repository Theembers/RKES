function treeinit(id) {	
	$("#"+id+">ul").treeview({
		collapsed : true,
		unique : true,
		animated : 50,
		persist : "location"
	});
}

function changeNode(obj) {
	childNodecheck(obj);
	fatherNodecheck(obj);
}

function childNodecheck(obj) {
	if ($(obj).parent().children("ul").children("li").size() == 0) {
		return;
	}
	if ($(obj).prop("checked")) {
		$(obj).parent().children().children().children("input[type=checkbox]").prop("checked", "checked");
	} else {
		$(obj).parent().children().children().children("input[type=checkbox]").removeProp("checked");
	}
	childNodecheck($(obj).parent().children().children().children("input[type=checkbox]"));
}

function fatherNodecheck(obj) {
	var sible = $(obj).parent().siblings();

	if ($(obj).prop("checked")) {
		for (var i = 0; i < sible.size(); i++) {
			if (!$(sible[i]).children("input[type=checkbox]").prop("checked")) {
				return;
			}
		}
		$(obj).parent().parent().parent().children("input[type=checkbox]").prop("checked", "checked");
	} else {
		$(obj).parent().parent().parent().children("input[type=checkbox]").removeProp("checked");
	}

	if ($(obj).parent().parent().parent().attr("class") == "tree") {
		return;
	} else {
		fatherNodecheck($(obj).parent().parent().parent().children("input[type=checkbox]").get(0));
	}

}

function addtree(obj, gnid){
	var level = $(obj).parent().attr("level");
	var cnt = $(obj).parent().children().children("li").size();
	if(level >= 2){
		alert("只能最多拥有2层菜单");
		return;
	} else if(level == 0 && cnt >= 3) {
		alert("第一级菜单只能最多拥有3个节点");
		return;
	} else if(level == 1 && cnt >= 5) {
		alert("第二级菜单只能最多拥有5个节点");
		return;
	}
	
	var appname = $(obj).parents("div").attr("id");
	window.location.href = "./addmenuinit.do?menuvo.appname=" + appname + "&menuvo.fid=" + gnid;
}

function modtree(obj, gnid){
	if(gnid == 0){
		alert("根节点不能修改");
	} else {
		var appname = $(obj).parents("div").attr("id");
		window.location.href = "./editmenuinit.do?menuvo.id=" + gnid;
	}
}

function deltree(obj, gnid){
	if(gnid == 0){
		alert("不能删除根节点");
	} else {
		if(confirm("删除菜单会将其及子菜单一同删除，是否确定删除")){
			window.location.href = "./delmenu.do?menuvo.id=" + gnid;
		}
	}
}