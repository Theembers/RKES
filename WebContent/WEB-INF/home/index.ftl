<html>
	<head>
    	<title>首页</title>
    	<#include "/WEB-INF/decorators/customtable.ftl"/>
    	<#include "/WEB-INF/decorators/customerror.ftl"/>
    	<style type="text/css">
     		ul.name {
	     		padding-left:41%;
	     		font-size: 300%;	     		
	     		letter-spacing:15px;
     		}
			ul.enname{
				padding-left:41%;
				font-size:100%;
				font-style:italic;
				text-indent:280px;
				letter-spacing:2px;
			}
			ul.info{
				padding-left:41%;
				font-size:110%;
				letter-spacing:2px;
			}
		</style>
	</head>
	
	<body>
         
           <div class="info_personal">
          	  <div class="info_personal_left fl">
                 <img src="${base}/images/${homevo.tp}" class="img">
              </div>       
              <div style="padding-left:20px;">
                 <ul class="name">${homevo.name}</ul>
                 <ul class="enname">${homevo.ename}</ul>
                 <hr style="height:1px;border:none;border-top:1px solid #fff;" />
                 <ul class="info">户籍：${homevo.hj}</ul>
                 <ul class="info">学校：${homevo.xx}</ul>
                 <ul class="info">班级：${homevo.bj}</ul>
                 <ul class="info">学号：${homevo.xh}</ul>
                 <ul class="info">电话：${homevo.dh}</ul>
                 <ul class="info">E-mail：${homevo.email}               
                 </ul>
              </div>
           </div>  
	</body>
</html>

