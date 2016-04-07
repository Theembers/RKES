<html>
	<head>
    	<title>修改密码</title>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
		 <div class="ws">
              <div class="wz fl">
                 当前位置：</span><a href="#" class="col">修改密码</a>
              </div>
           </div>
           <div class="clear"></div>
           <div class="edit">
           		 <@s.form action="editpwd" method="post">
                 <div class="editline">
                 	<label>用户名称：</label>
                 	<@s.textfield value="${username!''}" maxlength="20" readonly="true" cssClass="e_txt"/>
	 				<@s.hidden name="username" value="${username!}" /><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>新的密码：</label>
                 	<@s.password name="newpwd"  maxlength="20"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>确认密码：</label>
                 	<@s.password name="newpwd1"  maxlength="20"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline lastli">
                 	<label>&nbsp;</label>
                 	<@s.submit value="修改"  cssClass="modifybtn"/>
                 </div>
                 </@s.form>
           </div>
        </div>
	</body>
</html>