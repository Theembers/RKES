<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" type="text/css" href="${base}/styles/frame.css"/>
		<link rel="stylesheet" type="text/css" href="${base}/styles/comm.css"/>
		<script type="text/JavaScript" src="${base}/scripts/jquery-1.10.2.min.js"></script>
		<script type="text/JavaScript" src="${base}/scripts/customtable.js"></script> 
		<title>${title}</title>
		${head}
	</head>

    <body>
      <div class="wrapper">
	    <div class="top">
	       <div class="w1200">
	          <div class="logo fl">
	              <img src="${base}/images/logo.png" width="321" height="74" />
	          </div>
	          <#include "/WEB-INF/decorators/logout.ftl"/>
	       </div>
	    </div>
	    <div class="main w1200 clearfix">
	        <#include "/WEB-INF/decorators/menu.ftl"/>
	        <div class="right fl">
	        	${body}
	        </div>
	    </div>
	    <div class="push"></div>
	</div>
      
    <div class="footer">
          	<#include "/WEB-INF/decorators/footer.ftl"/>
    </div>
    <script>
    	$(function(){
    		var height = document.body.scrollHeight > document.body.clientHeight?  document.body.scrollHeight : document.body.clientHeight;
    		var minheight = height - 80 - 102 - 37;
    		minheight = minheight + "px"
    		$(".right").css("min-height",minheight);
    		$(".left dl").css("min-height",minheight);
    	})
    </script>
	</body>
</html>
