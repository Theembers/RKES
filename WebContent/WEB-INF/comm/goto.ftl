<html>
	<head>
    	<title>跳转页面</title>
    	<script type="text/JavaScript" src="${base}/scripts/jquery-1.10.2.min.js"></script>
    	<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
	<script>
		$(function(){
			<#if location?starts_with("/") >
				window.location="${base}${location?lower_case}";
			<#else>
				window.location="${base}/${location?lower_case}";
			</#if>
		})
	</script>
	</body>
</html>
