<html>
	<head>
    	<title>新闻展示</title>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>
	</head>
	<body>
		
           <div class="clear"></div>
           <div class="edit">
           		 <form>		 		 
                 <div class="editline" >                	
                 	<@s.label name="vo.title" style="font-size:20px;color:#ffb800"/>
                 </div>
                 <div class="editline"> 
                 <hr style="height:1px;border:none;border-top:1px solid #fff;" />
                 </div>
                 <div class="editline">           	
                 	<div id="treeview" class="">
						<@s.label name="vo.context" style="text-align:left;AutoSize:false;height:95%; width:98%;line-height: 20px;"/>
					</div>           
                 </div>
                 <div class="editline"> 
                 <hr style="height:1px;border:none;border-top:1px solid #fff;" />
                 </div>
                 <div class="editline">
                 	<label>关键词：</label>
                 	<@s.label name="vo.keywords"/>
                 </div>
                 <div class="editline">
                 	<label>来源URL：</label>           
                 	<a href="${vo.url}" class="col" target="_blank">${vo.url}</a>
                 </div>
                 
                 <div class="editline lastli">
                 	<label>&nbsp;</label> 
                 	<input type="button" value="查看分析" onclick="wkeshow(${id})" class="modifybtn"/>     
                 	<input type="button" value="返回" onclick="window.location='getnews.do?page=${page}'" class="backbtn"/>
                 </div>
                 </form>
           </div>
        </div>
        <script>
        function wkeshow(id){
			window.location="${base}/demo/demo001/wkeshow.do?id="+id;
		}
		</script>
	</body>
</html>
