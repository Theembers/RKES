<html>
	<head>
    	<title>修改用户</title>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
		 <div class="ws">
              <div class="wz fl">
                 当前位置：系统设置<span>></span><a href="#" class="col">用户管理</a>
              </div>
           </div>
           <div class="clear"></div>
           <div class="edit">
           		 <@s.form action="edituser" method="post">
		 		 <@s.hidden name="user.id" />
                 <div class="editline">
                 	<label>用户名称：</label>
                 	<@s.textfield name="user.username" cssClass="e_txt" maxlength="20" readOnly="readonly"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>真实姓名：</label>
                 	<@s.textfield name="user.rname"  maxlength="20"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>邮箱地址：</label>
                 	<@s.textfield name="user.email"  maxlength="50"  cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>联系电话：</label>
                 	<@s.textfield name="user.phone"  maxlength="11" cssClass="e_txt"/><i class="col1">*</i>
                 </div>
                 <div class="editline" style="height:300px;">
                 	<label>用户角色：</label>
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
                 	<@s.submit value="修改" cssClass="modifybtn"/>
                 	<input type="button" value="返回" onclick="window.location='getuser.do'" class="backbtn"/>
                 </div>
                 </@s.form>
           </div>
        </div>
	</body>
</html>
