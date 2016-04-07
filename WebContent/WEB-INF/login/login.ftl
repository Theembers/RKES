<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="${base}/styles/login.css"/>
	</head>
	
	<body>
	<div class="top"></div>
	<div class="wrap_login">
	    <div class="login_out">
	       <div class="login_inner fr">
	           <h4>登录</h4>
	           <div class="login_line">
	              <p class="error">
	                <script>
	                	var msg = '';
	                	<#if Parameters.status?? && Parameters.status == 'nologin'>
							msg="未登录或者登录超时，重新登录";
						<#elseif actionErrors?size gt 0>
							<#list actionErrors as actionerr>
				    			msg = '${actionerr}';
				    			<#break>
				    		</#list>
				    	<#elseif actionMessages?size gt 0>
				    		<#list actionMessages as actionmsg>
				    			msg = '${actionmsg}';
				    			<#break>
				    		</#list>
				        <#elseif fieldErrors?size gt 0>
							<#list fieldErrors as errorMap>
								<#list errorMap.keySet() as key>
									temp = "${errorMap[key]}";
									msg = temp.substring(1,temp.length-1);
									<#break>  
								</#list>
							</#list>
						</#if>
							document.write(msg);
					</script>
				  </p>
				  <@s.form action="login">
	              <p><@s.textfield name="loginvo.username" cssClass="login_txt user_txt"/></p>
	              <p><@s.password name="loginvo.password" cssClass="login_txt pwd_txt"/></p>              
	              <p class="last_p"><@s.submit value="登录" cssClass="login_btn"/>
	              </@s.form>
	           </div>
	       </div>
	    </div>
	</div>
	<div class="foot"  style='position: absolute; bottom: 0; display: block; height: 88px; width: 100%'></div>
	</body>
</html>
</html>
