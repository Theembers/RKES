<html>
	<head>
    	<title>修改大厅</title>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
           <div class="clear"></div>
           <div class="edit">
           		 <@s.form action="editweb.do" method="post"> 
           		 <@s.hidden name="vo.id" />
                 <div class="editline">
                 	<label>Web名称：</label>
                 	<@s.textfield name="vo.webname" cssClass="e_txt" /><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>Web域名：</label>
                 	<@s.textfield name="vo.weburl"   cssClass="e_txt"/><i class="col1">*</i><i>(例：news.sbs.com)</i>
                 </div>
                 <div class="editline"><label>编码规则：</label>
                  		<select class="wechatno" name="vo.code">
                  		  <option value="-1">--请选择--</option>
		              	  <#list list as list>
		              	  	<option value="${list.code}" <#if list.code==vo.code>selected</#if>>${list.code}</option>
		              	  </#list>
                  		</select><i class="col1">*</i>
                  </div>    
                 <div class="editline">
                 	<label>URL规则：</label>
                 	<@s.textarea name="vo.url_re"   cssClass="e_txt"/><i class="col1">*</i>
                 </div>   
                 <div class="editline">
                 	<label>标题规则：</label>
                 	<@s.textarea name="vo.title_re"   cssClass="e_txt" /><i class="col1">*</i>
                 </div>  
                 <div class="editline">
                 	<label>正文规则：</label>
                 	<@s.textarea name="vo.context_re"   cssClass="e_txt"/><i class="col1" >*</i>
                 </div>
                           
                 <div class="editline lastli">
                 	<label>&nbsp;</label>
                 	<@s.submit value="确定" cssClass="modifybtn"/>
                 	<input type="button" value="返回" onclick="window.location='getcwm.do?page=${page}'" class="backbtn"/>
                 </div>
                 </@s.form>
           </div>
        </div>
	</body>
</html>
