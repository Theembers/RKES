<html>
	<head>
    	<title>关键字展示</title>
    	
		<script type="text/JavaScript" src="${base}/scripts/customtree.js"></script>
		<script src="${base}/scripts/bootstrap.js"></script>
		<script src="${base}/scripts/jquery.awesomeCloud-0.2.min.js"></script>
		<script src="${base}/scripts/jquery.min.js"></script>
		
		<link rel="stylesheet" href="${base}/styles/wordstyle.css">				
		<#include "/WEB-INF/decorators/customerror.ftl"/>
		
		<style type="text/css">
		#fixedLayer { 
			text-align: center;
			color:#4f4f4f;
			padding: 5px;			 
			position:fixed; 
			left: 85%; 
			top: 15%;
			line-height:20px;			  
			background:#ddd;		
			} 
		
		*{
		    margin:0;
		    padding:0
		}
		a{ 
		    text-decoration:none;
		    font-weight:bold;
		}

	</style>
  <script type="text/javascript">
    window.onload=function(){
      var obox=document.getElementById("wrap");
      var obj=obox.getElementsByTagName("a");
      //随机方法
      function rand(num){
       return parseInt(Math.random()*num+1);
      }
      //随机颜色值
      function randomcolor(){
        var str=Math.ceil(Math.random()*16777215).toString(16);
        if(str.length<6){
          str="0"+str;
        }
        return str;
      }
      //循环	
      for( len=obj.length,i=len;i--;){
       var score =  obj[i].firstElementChild.defaultValue;
        obj[i].className="color"+rand(5);
        obj[i].style.zIndex=rand(5);
        obj[i].style.fontSize=score*0.8+"px";      
        obj[i].style.color="#"+randomcolor();
        obj[i].onmouseover=function(){
          this.style.background="#"+randomcolor();
        }
        obj[i].onmouseout=function(){
          this.style.background="none";
        }
      }
    }
  </script>    
	</head>
	<body>
		 
		<div class="clear"></div>
           <div class="edit">
           		 <@s.form action="" method="post">  
           		 <div class="editline">         		          		
		 		<div class="clear"><label>文本分析源码</label></div>                 
	            <div id="treeview" class="tree">
					<label style="text-align:left;AutoSize:false;height:95%; width:98%;line-height: 20px;">${content}</label>				
				</div> 
				</div> 								
				<div class="editline">
				<div class="clear"><label>基本分词(BaseAnalysis)</label></div>
				<div class="tree" id="wordcloud" >
					<#list minResult as minResult>
						<tr>
							<dd class="word_${minResult.getNatureStr()} word_width">${minResult.name}</dd>
						</tr>
					</#list>	 		 	
			 	</div>	
				</div>
				<div class="editline">
				<div class="clear"><label>精准分词(ToAnalysis)</label></div>
				<div class="tree" id="wordcloud" >
					<#list toResult as toResult>
						<tr>
							<dd class="word_${toResult.getNatureStr()} word_width">${toResult.name}</dd>
						</tr>
					</#list>	 		 	
			 	</div>
			 	</div>				
				<div class="editline">
			 	<div class="clear"><label>面向索引分词(IndexAnalysis)</label></div>
				<div class="tree" id="wordcloud" >
					<#list indexResult as indexResult>
						<tr>
							<dd class="word_${indexResult.getNatureStr()} word_width">${indexResult.name}</dd>
						</tr>
					</#list>	 		 	
			 	</div>	
			 	</div>	
			 	<div class="editline">
			 	<div class="clear"><label>NLP分词(NlpAnalysis)</label></div>
				<div class="tree" id="wordcloud" >
					<#list nlpResult as nlpResult>
						<tr>
							<dd class="word_${nlpResult.getNatureStr()} word_width">${nlpResult.name}</dd>
						</tr>
					</#list>	 		 	
			 	</div>
			 	</div>
			 	<div class="editline">
			 	<div class="clear"><label>NLP分词词性标注</label></div>
				<div class="tree" id="wordcloud" >	
					<#list nlpResult as nlpResult>
						<tr>
							<dd class="word_width">[${nlpResult.name}]->[${nlpResult.getNatureStr()}]</dd>
						</tr>
					</#list>	 		 	
			 	</div>
			 	</div>
			 	<div class="editline">  	
				<div class="clear"><label>关键词权重</label></div>
				<div class="keywords">				   
					<#list keyWords as keyWords>									
							[${keyWords.name}]->${keyWords.score}<br/>																
					</#list>			 	
				</div>
				</div>
				<div class="editline">
				<div class="clear"><label>关键词对照</label></div>
					<div class="tree">
						<pre style="white-space: pre-wrap;" class="word_width">${summaryStr}</pre>
					</div>
				</div>		
			 	<div class="editline">  	
				<div class="clear"><label>关键词提取(WKE)</label></div>
				<div class="keywords" id="wrap" >				   
					<#list keyWords as keyWords>									
							<a href="#" >${keyWords.name}			
							<input type="hidden" id="keyWordsscore" name="keyWordsscore" value="${keyWords.score}"/>						
							</a>					
					</#list>			 	
				</div>
				</div>
				<div class="editline">  	
				<input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回" class="modifybtn">		 	
				</div>
				</div>														
                 </@s.form>
           </div>
			<!-- 悬浮示例-->
			<div id="fixedLayer">
			<dd class="word_n ">名词-n</dd>
			<dd class="word_t ">时间词-t</dd>
			<dd class="word_s ">处所词-s</dd>
			<dd class="word_f ">方位词-f</dd>
			<dd class="word_v ">动词-v</dd>
			<dd class="word_a ">形容词-a</dd>
			<dd class="word_b ">区别词-b</dd>
			<dd class="word_z ">状态词-z</dd>
			<dd class="word_r ">代词-r</dd>
			<dd class="word_m ">数词-m</dd>
			<dd class="word_q ">量词-q</dd>
			<dd class="word_d ">副词-d</dd>
			<dd class="word_p ">介词-p</dd>
			<dd class="word_c ">连词-c</dd>
			<dd class="word_u ">助词-u</dd>
			<dd class="word_e ">叹词-e</dd>
			<dd class="word_y ">语气词-y</dd>
			<dd class="word_o ">拟声词-o</dd>
			<dd class="word_h ">前缀-h</dd>
			<dd class="word_k ">后缀-k</dd>
			<dd class="word_x ">字符串-x</dd>
			<dd class="word_w ">标点符号-w</dd>
			<dd class="word_nw ">新词-nw</dd>
			</div>	
	</body>
</html>
