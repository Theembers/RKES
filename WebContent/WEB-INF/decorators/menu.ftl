<div class="left fl clearfix">
	<dl>
	<dt class="user menu">
			<a href="${base}/home/init.do">首页</a>
		</dt>
		<dt class="mes menu">
			<a href="${base}/xtsm/init.do">系统说明</a>
		</dt>
			<#if Session?? && Session['xtsm']??>
				<#assign menu=Session['xtsm']/>
				<#list menu?keys as key>
					<dd type="user"><a href="${base}${menu[key]}">${key}</a></dd>
				</#list>
			</#if>
	
		<dt class="wechat_gl menu">
			<a href="#">系统DEMO</a>
		</dt>
			<#if Session?? && Session['demo']??>
				<#assign menu=Session['demo']/>
				<#list menu?keys as key>
					<dd type="user"><a href="${base}${menu[key]}">${key}</a></dd>
				</#list>
			</#if>
		 
	    <dt class="root menu">
	    	<a href="#">系统管理</a></dt>
	    	<#if Session??  && Session['sys']??>
				<#assign menu=Session['sys']/>
				<#list menu?keys as key>
					<dd type="root"><a href="${base}${menu[key]}">${key}</a></dd>
				</#list>
			</#if>
	    
	 </dl>
	 <div id="demo"></div>
</div>

<script>
	/*$(function(){
		$(".menu").click(function(){
			$("#demo").stop(true,true);
			$("dd").css("height", 0);
			var objclass = $(this).attr("class").split(" ")[0];
			var _element = new Array();
			$("dd[type="+objclass+"]").each(function(index){
				_element.push(function(){$("dd[type="+objclass+"]").eq(index).animate({height:45},120,_toggle)});});
			
			$("#demo").queue('slideList',_element); 
			
			var _toggle = function(){
				$("#demo").dequeue('slideList'); 
			}
			
			_toggle();
		})
		
	})*/
</script>