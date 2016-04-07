<html>
	<head>
    	<title>Web爬虫Demo-任务列表</title>
		<#include "/WEB-INF/decorators/customtable.ftl"/>
    	<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
           <div class="clear"></div>
           <div class="detail_search clearfix">
              <div class="d_search_list ">
              	  <form id="table_form" action="${base}/demo/demo002/getcwm.do" method="post">
                  <@s.hidden id="table_page" name="page" value="${page}"/>
          		  <@s.hidden id="table_total" name="total" value="${total}" />
                  <div class="d_search_line"><label>Web名称</label>
                  		<@s.textfield id="table_dtmc" name="vo.webname" cssClass="d_search_txt"/>
                  </div>
                   <div class="d_search_btn">
                     <@s.submit value="查询"cssClass="search_btn"/>
                     <input type="button" id="syncbtn" value="新增" class="search_btn search_btn1" onclick="add()"/>
                  	 <form action="${base}/demo/demo002/startcwm.do" method="post">
                  		 <input type="button" id="startbtn" value="运行" class="search_btn search_btn1" onclick="start()"/>
                 	 </form>
                 	 <input type="button" id="startbtn" value="查看新闻" class="search_btn search_btn1" onclick="news()"/>
                  </div>
                  <div class="clear"></div>
                  </form>
              </div>
           </div>
          <div class="clear"></div>
          
		  <div class="usr_tab">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <th width="10%">序号</th>
                    <th width="15%">Web名称</th>
                    <th width="40%">域名</th>
                    <th width="20%">状态<br/>(点击切换)</th>
                    <th width="20%">操作</th>
                  </tr>
                 <#list list as list>
				  <tr>
						<td align="center">${page*rows+list_index+1}</td>
						<td align="">${list.webname}</td>
						<td align="">${list.weburl}</td>
						<#if list.yxbj==1><td align="center" ><a href="javascript:work('${list.id}','${list.yxbj}')"><font color="#10FF00">已开启</a></td><#elseif list.yxbj==0><td align="center" ><a href="javascript:work('${list.id}','${list.yxbj}')"><font color="red">已关闭</a></td></#if>
						<td align="center"><a href="${base}/demo/demo002/initeditweb.do?id=${list.id}&page=${page}" class="col">编辑</a><span>/</span><a href="javascript:del('${list.id}')" class="col">删除</a></td>
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

function del(id){
	if(confirm("是否确定删除")){	
		window.location="${base}/demo/demo002/deleteweb.do?id="+id;
	}
}

function work(id,yxbj){
		window.location="${base}/demo/demo002/workweb.do?id="+id+"&yxbj="+yxbj;
}

function add(){
	window.location="${base}/demo/demo002/initaddweb.do";
}

function start(){
	if(confirm("抓去信息时间较长，确定执行？")){
		window.location="${base}/demo/demo002/startcwm.do";
	}
}
function news(){
	window.location="${base}/demo/demo002/getnews.do";
}
</script>           
	</body>
</html>

