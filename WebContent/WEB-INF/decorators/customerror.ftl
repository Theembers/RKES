<script language="javascript">
$(function(){
		var msg = '';
		<#if actionErrors?size gt 0>
			<#list actionErrors as actionerr>
    			msg += ${actionerr_index+1} + ":${actionerr}\n";
    		</#list>
    		alert(msg);
    	<#elseif actionMessages?size gt 0>
    		<#list actionMessages as actionmsg>
    			msg += ${actionmsg_index+1} + ":${actionmsg}\n";
    		</#list>
    		alert(msg);	
        <#elseif fieldErrors?size gt 0>
			<#list fieldErrors as errorMap>
				<#list errorMap.keySet() as key>
					temp = "${errorMap[key]}";
					msg += ${key_index+1} + ":" + temp.substring(1,temp.length-1) + "\n";
				</#list>
			</#list>
			alert(msg);
		</#if>
})
</script>      