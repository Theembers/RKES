<html>
	<head>
    	<title>修改角色</title>
    	<link rel="stylesheet" type="text/css" href="${base}/styles/jquery.treeview.css"/>
    	<script type="text/JavaScript" src="${base}/scripts/jquery.treeview.js"></script>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
		 <div class="ws">
              <div class="wz fl">
                 当前位置：系统设置<span>></span><a href="#" class="col">角色管理</a>
              </div>
           </div>
           <div class="clear"></div>
           <div class="edit">
           		 <@s.form action="editrole" method="post">
		 		 <@s.hidden name="role.id" />
                 <div class="editline">
                 	<label>角色名称：</label>
                 	<@s.textfield name="role.jsmc" cssClass="e_txt" maxlength="20"/><i class="col1">*</i>
                 </div>
                 <div class="editline">
                 	<label>角色描述：</label>
                 	<@s.textfield name="role.jsms" cssClass="e_txt e_txt1" maxlength="50"/><i class="col1">*</i>
                 </div>
                 <div class="editline" style="height:300px;">
                 	<label>角色功能：</label>
	                <div id="treeview" class="tree">${tree}</div>
                 	<i class="col1">*</i>
                 </div>
                 <div class="editline lastli">
                 	<label>&nbsp;</label>
                 	<@s.submit value="修改" cssClass="modifybtn"/>
                 	<input type="button" value="返回" onclick="window.location='getrole.do'" class="backbtn"/>
                 </div>
                 </@s.form>
           </div>
        </div>
         
    <script>
    	$(function(){
    		treeinit("treeview");
    	})
    </script>
	</body>
</html>
