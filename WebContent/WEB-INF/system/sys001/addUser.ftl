<html>
	<head>
    	<title>新增用户</title>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>	
           <div class="clear"></div>
           <div class="edit">
           		 <@s.form action="adduser" method="post">
                 <div class="editline">
                 	<label >用户名称：</label>
                 	<@s.textfield name="user.username" cssClass="e_txt" maxlength="20"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label >登录密码：</label>
                 	<@s.password name="user.password"  maxlength="20"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label >确认密码：</label>
                 	<@s.password name="user.password1"  maxlength="20"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label >真实姓名：</label>
                 	<@s.textfield name="user.rname"  maxlength="20"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label >邮箱地址：</label>
                 	<@s.textfield name="user.email"  maxlength="50"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label >联系电话：</label>
                 	<@s.textfield name="user.phone"  maxlength="11" cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline" style="height:300px;">
                 	<label align="right">用户角色：</label>
	                <div id="js">
	                	<@s.iterator value="roleList" var="temp">
		 					<span><input type="checkbox" value="${temp.jsid}" name="user.jsid"
			 					<@s.iterator value="user.jsid" var="jsidchecked">
			 						<@s.if test="${jsid == jsidchecked}">
										checked = "checked"
			 						</@s.if>
			 					</@s.iterator>
		 					/>${temp.jsmc}</span>
		 				</@s.iterator>
	                </div>
                 	<i class="col1">*</i>
                 </div>
                 <div class="editline lastli">
                 	<label>&nbsp;</label>
                 	<@s.submit value="新增" cssClass="addbtn"/>
                 	<input type="button" value="返回" onclick="window.location='getuser.do'" class="backbtn"/>
                 </div>
                 </@s.form>
           </div>
        </div>
	</body>
</html>
