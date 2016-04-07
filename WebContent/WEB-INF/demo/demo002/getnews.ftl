<html>
	<head>
    	<title>Web爬虫Demo-新闻列表</title>
		<#include "/WEB-INF/decorators/customtable.ftl"/>
    	<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
           <div class="clear"></div>
           <div class="detail_search clearfix">
              <div class="d_search_list ">
              	  <form id="table_form" action="${base}/demo/demo002/getnews.do" method="post">
                  <@s.hidden id="table_page" name="page" value="${page}"/>
          		  <@s.hidden id="table_total" name="total" value="${total}" />
                  <div class="d_search_line"><label>关键词</label>
                  		<@s.textfield id="table_news" name="vo.keywords" cssClass="d_search_txt" />
                  </div>
                   <div class="d_search_btn">
                     <@s.submit value="查询"cssClass="search_btn"/>                     
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
                    <th width="15%">来源</th>
                    <th width="40%">标题</th>
                    <th width="25%">关键字</th>
                    <th width="20%">详细信息</th>                  
                  </tr>
                 <#list list as list>
				  <tr>
						<td align="center">${page*rows+list_index+1}</td>
						<td align="">${list.webname}</td>
						<td align="">${list.title}</td>
						<td align="">${list.keywords}</td>					
						<td align="center"><a href="${base}/demo/demo002/shownews.do?id=${list.id}&page=${page}" class="col">查看</a></td>
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
	</body>
</html>

