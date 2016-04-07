<html>
	<head>
    	<title>关键字抽取</title>
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<#include "/WEB-INF/decorators/customerror.ftl"/>		
	</head>
	<body>		
           <div class="edit">
           		 <@s.form action="doadd" method="post">		 	
		 		 <div class="clear"><label>文本分析：</label></div>
					<div class="clear"></div>				 
	                <div id="treeview" class="tree">
						<@s.textarea id="content" value="输入测试文本" name="demovo.content" type="text" style="border:0px;background:#4f4f4f;color:#fff;overflow-y:hidden; height:95%; width:98%" onpropertychange="this.style.height=this.scrollHeight + 'px'" oninput="this.style.height=this.scrollHeight + 'px'"/>
					</div>               
                 <div class="editline lastli">                	
                 	<@s.submit value="提交文本" cssClass="modifybtn"/>
                 </div>
                 </@s.form>
           </div>
<script type='text/javascript'> 
	var t = document.getElementById('content');
	t.onfocus = function(){
		if(this.value == '输入测试文本')
			{this.value = ''}
	};
     
	t.onblur = function(){
		if(this.value == ''){
			this.value = '输入测试文本'   
		}   
	};
</script>
	</body>
</html>
