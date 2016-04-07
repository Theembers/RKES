<html>
	<head>
    	<title>新增Web</title>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
           <div class="clear"></div>
           <div class="edit">
           		 <@s.form action="addweb.do" method="post"> 
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
		              	  	<option value="${list.code}">${list.code}</option>
		              	  </#list>
                  		</select><i class="col1">*</i>
                  </div>
                 <div class="editline">
                 	<label>URL规则：</label>
                 	<@s.textarea name="vo.url_re"   cssClass="e_txt"/><i class="col1">*</i>
                 </div>   
                 <div class="editline">
                 	<label>标题规则：</label>
                 	<@s.textarea name="vo.title_re"  value="<title>(.*?)</title>" cssClass="e_txt" /><i class="col1">*</i>
                 </div>  
                 <div class="editline">
                 	<label>正文规则：</label>
                 	<@s.textarea name="vo.context_re"   cssClass="e_txt"/><i class="col1" >*</i>
                 </div>                                           
                 
                 <div class="editline lastli">
                 	<label>&nbsp;</label>
                 	<!--<input type="button" value="测试" onclick="test()" class="backbtn"/> -->               	              
                 	<@s.submit value="添加" cssClass="addbtn"/>
                 	<input type="button" value="返回" onclick="window.location='getcwm.do'" class="backbtn"/>
                 </div>
                 </@s.form>
           </div>
        </div>                       
	</body>
</html>
