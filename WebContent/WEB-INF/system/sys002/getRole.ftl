<html>
	<head>
    	<title>角色管理</title>
    	<#include "/WEB-INF/decorators/customtable.ftl"/>
    	<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
           <div class="ws">
              <div class="wz fl">
	 			当前位置：系统设置<span>></span><a href="#" class="col">角色管理</a>
              </div>
              <div class="add fr">
              <form	action="${base}/system/sys002/initadd.do">
                 <@s.submit value="新增" cssClass="addbtn" />
              </form>
              </div>
              <div class="search fr">
              <form id="table_form" action="${base}/system/sys002/getrole.do" method="post">              
                 <input type="text" id="search_hint" class="s_txt hint" value="<#if initrolename?? && initrolename != "">${initrolename}<#else>请输入角色名称</#if>" hint="请输入角色名称"/>
                 <input type="button" id="search" class="s_btn"/>
                 <@s.hidden id="table_initrolename" name="initrolename" value="${initrolename}"/>
                 <@s.hidden id="table_page" name="page" value="${page}"/>
          		 <@s.hidden id="table_total" name="total" value="${total}" />
              <s.form>
              </div> 
           </div>
           <div class="clear"></div>
	
		  <div class="usr_tab">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <th width="10%">序号</th>
                    <th width="20%">角色名称</th>
                    <th width="25%">角色描述</th>
                    <th width="30%">修改时间</th>
                    <th width="15%">操作</th>
                  </tr>
                 <#list gridModel as role>
				  <tr>
						<td align="center">${page*rows+role_index+1}</td>
						<td align="center">${role.jsmc}</td>
						<td align="center">${role.jsms}</td>
						<td align="center">${role.lrsj?string("yyyy-MM-dd HH:mm")}</td>
						<td align="center"><a href="${base}/system/sys002/editroleinit.do?id=${role.id}" class="col">编辑</a><span>/</span><a href="javascript:del('${role.id}')" class="col">删除</a></td>
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
		if(obj.val() != obj.attr("hint")){
			$("#table_initrolename").val(obj.val());
		} else {
			$("#table_initrolename").val("");
		}
		$("#table_page").val(0);
		$("#table_form").submit();
	})
	
})

function del(id){
	if(confirm("是否确定删除")){	
		window.location="${base}/system/sys002/deleterole.do?id="+id;
	}
}
</script>           
	</body>
</html>
