<html>
	<head>
    	<title>后台用户管理</title>
    	<#include "/WEB-INF/decorators/customtable.ftl"/>
    	<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
           <div class="ws">             
              <div class="add fr">
              <form	action="${base}/system/sys001/initadd.do">
                 <@s.submit value="新增" cssClass="addbtn" />
              </form>
              </div>
              <form id="table_form" action="${base}/system/sys001/getuser.do" method="post">
                 <@s.hidden id="table_initusername" name="initusername" value="${initusername}"/>
                 <@s.hidden id="table_initrname" name="initrname" value="${initrname}"/>
                 <@s.hidden id="table_page" name="page" value="${page}"/>
          		 <@s.hidden id="table_total" name="total" value="${total}" />
	              <div class="search fr" >	              	
	                 <input type="text" id="search_hint1" class="s_txt hint" value="<#if initusername?? && initusername != "">${initusername}<#else>请输入用户名称</#if>" hint="请输入用户名称"/>
                 <input type="button" id="search" class="s_btn"/>
	              </div> 
	          	 
              <s.form>
           </div>
           <div class="clear"></div>
	
		  <div class="usr_tab">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <th width="10%">序号</th>
                    <th width="20%">用户名</th>
                    <th width="25%">真实姓名</th>
                    <th width="30%">修改时间</th>
                    <th width="15%">操作</th>
                  </tr>
                 <#list gridModel as user>
				  <tr>
						<td align="center">${page*rows+user_index+1}</td>
						<td align="center">${user.username}</td>
						<td align="center">${user.rname}</td>
						<td align="center">${user.zcsj?string("yyyy-MM-dd HH:mm")}</td>
						<td align="center"><a href="${base}/system/sys001/edituserinit.do?id=${user.id}" class="col">编辑</a><span>/</span><a href="javascript:del('${user.id}')" class="col">删除</a></td>
					</tr>
				</#list>
                </table>
           </div>
           <div class="fenye">
            <div class="fy1">
               <span>第<b>${page+1}</b>页，共<i>${records}</i>条</span>
               <a href="javascript:first()" class="pre">首页</a>
               <a href="javascript:preview()" class="pre">上一页</a>
               <a href="javascript:next()" class="pre">下一页</a>
               <a href="javascript:last()" class="pre">末页</a>
            </div>
           </div>

<script>
$(function(){
	$("#search").click(function(){
		var obj = $("#search_hint");
		var obj1 = $("#search_hint1")
		if(obj.val() != obj.attr("hint")){
			$("#table_initusername").val(obj.val());
		} else {
			$("#table_initusername").val("");
		}
		
		if(obj1.val() != obj1.attr("hint")){
			$("#table_initrname").val(obj1.val());
		} else {
			$("#table_initrname").val("");
		}
		
		$("#table_page").val(0);
		$("#table_form").submit();
	})
	
})

function del(id){
	if(confirm("是否确定删除")){	
		window.location="${base}/system/sys001/deleteuser.do?id="+id;
	}
}
</script>           
	</body>
</html>

