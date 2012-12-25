<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>融资俱乐部_中国资金网</title>
<link rel="stylesheet" href="/css/public.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="/css/module.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="/script/jquery-1.7.2.min.js" > </script>
<script type="text/javascript" src="/script/public.js" > </script>
<script type="text/javascript" src="/script/load-club.js" > </script>
<script language="javascript">
	function doQuerySupplyInfo(investType){
		$("#sltInvestStyle").attr("value",investType);
		$("#frmQuerySupplyInfo").submit();
	}
	
	function create_new_info(info_type) {
		url1 = "/service/requestInfoAction4User!edit.act";
		url2= "/service/supplyInfoAction4User!editFirstStep.act";
		var user_type = '${session._user.userTypeGroup}';
		if (user_type=='') {
			alert('您尚末登录!');
		} else {
			var is_valid_user = false;
			var user_status = "${session._user.auditstatus}";
			if (user_status != "2") {
				alert("您的注册资料尚未通过审核，暂不能发布此信息!");
				return;
			} 
			if (info_type==1) {
				if (user_type =='1' || user_type=='5') {
					window.location.href=url1;
				} else {
					alert('只有用户身份为企业或个人才可以发布项目信息！');
				}
				is_valid_user = true;
			}
			
			if (info_type==2) {
				if (user_type =='2' || user_type=='3') {
					window.location.href=url2;
				} else {
					alert('只有用户身份为银行或金融机构才可以发布资金信息！');
				}
				is_valid_user = true;
			}
			
			if (!is_valid_user) {
				alert("您当前身份不能发布任何相关信息...");
			}
			
		}
	}
</script>
</head>
<body>
<!--头部-->
<div class="header index_header">
<jsp:include page="/public/head1.jsp"/>
</div>
  <!--main-->
  <div class="hr_10"> &nbsp; </div>
  <div class="M_menu">
  	<a href="/club/clubAction.act">融资俱乐部</a>&nbsp;&nbsp;<b>&gt;</b>&nbsp;&nbsp;资金信息库
  </div>
  <div class="hr_10"> &nbsp; </div>
  <div style="width:950px; margin:0 auto;">
  	<div style="width:630px; height:auto; float:left;"> 
      <!-- 找资金 -->         
	  <div class="grid_350 box_4" style="overflow:hidden;">       
        <div class="blue_bg">
          <div class="gray news_menu tab_menu2">
            <ul class="mews_ul">
              <li class="hover">找资金</li>
            </ul>
          </div>			         
          <div>
          	<div class="xxkbox2 first2">
          	<!-- 表单开始 -->
	            <form class="box_form" action="/service/supplyInfoAction!home.act" 
	            	method="post" 
	            	id="frmQuerySupplyInfo" 
	            	style="margin-left:10px;">
	            	
				<table border="0" cellspacing="0" cellpadding="0" class="find_table">
				  <tr>
				  	<td class="find_table_r">行业：</td>
				    <td class="v-align" colspan="2">
		                <select id="mainIndustry" name="query"  style="width:155px;">
				    		<option value="">不限</option>
					    	<s:iterator id="item" value="industryList">
								<s:if test="#item.parentid==0">
									<option value="${item.name }" >${item.name}</option>
								</s:if>
					    	</s:iterator>
				    		<option value="其他行业" <s:if test="query[1] == '其他行业'">selected</s:if>>其他行业</option>
				   		</select>			    
				    </td>
				    <td class="find_table_r">融资方式：</td>
				    <td class="v-align" colspan="2">
		                <select id="sltInvestStyle" name="query"  style="width:155px;">
							<option value="">不限</option>
							<s:iterator id="item" value="investStyleList">
								<s:if test="#item.parentId==0" >
									<option value="${item.name }" > ${item.name }</option>
								</s:if>
							</s:iterator>
							<s:iterator id="item" value="investStyleList">
								<s:if test="#item.parentId!=0" >
									<option value="${item.code }" > ${item.name }</option>
								</s:if>
							</s:iterator>
						</select>		    
				    </td>
				    
				  </tr>
				  <tr>
				  	<td class="find_table_r">地区：</td>
				    <td class="v-align" colspan="2">
		                <s:select headerKey="" 
		                	headerValue="不限" 
		                	list="provinceList" 
		                	name="query" listKey="name" listValue="name"  style="width:155px;"></s:select>		    	
				    </td>
				    
				    <td class="find_table_r">输入关键词：</td>
				    <td class="v-align"><input type="text" class="input-text" name="query"/></td>
				    <td class="v-align"><a href="javascript:$('#frmQuerySupplyInfo').submit();" class="btn blue1">搜索</a></td>
				  </tr>
				</table>
	          	<div class="find_table_t">最新资金信息<span><img src="/images/line1.jpg" /></span></div>			 	    
			  <!-- 表单结束 -->          	
				  <s:if test="supplyInfoList.size>0">
				  	<ul style="float:left; margin-right:50px; width:260px; padding-left:7px;" class="new_li">
						<s:iterator id="item" value="supplyInfoListForQueryPanel" status="st">
						<li title="${item.title}"><a href="/service/supplyInfoAction!detail.act?clbSupplyInfoId=${item.id }">
							<s:if test="#item.title.length()>50">
								<s:property value="#item.title.substring(0,50)"></s:property>...
							</s:if><s:else>
								${item.title}
							</s:else>
						</a></li>
						<s:if test="#st.index == 4">
							</ul><ul class="new_li" >
						</s:if>
						</s:iterator>
					</ul>
					</s:if>
					<s:else>
						<li>无记录</li>
					</s:else>
                <span class="fr" style="padding-right: 13px;padding-bottom: 20px;"><a href="/service/supplyInfoAction!home.act?pageNo=1">更多»</a></span>
			  </form>
            </div>     
         </div>        
        </div>
       </div>        
       <!--找资金 -->
	</div>
	<div style="width:310px; float:right;"><a href="/service/requestInfoAction4User!edit.act"><img src="/images/fbxx_xm.jpg" /></a></div>
	<div class="hr_10">&nbsp;</div>
	<!-- 资金信息开始 -->
	<div class="box_4" style="width:950px; overflow:hidden; margin-right:10px;">
	  <div class="menu_gray" style="border-bottom:4px solid #97181d;">
	 	<span class="fr"><a href="/service/supplyInfoAction!home.act">更多»</a></span>
	    <h6 style="font-weight:bolder">资金信息</h6>
	  </div>	  
	</div>
	<div class="hr_10">&nbsp;</div>
	<!-- 1 -->
	<s:iterator id="item" value="investStyleList.{?parentId>0}" status="st">
		<s:if test="#st.index>0 && (#st.index+1) % 3 ==0">
			<div style="width: 310px; float:left;">	  
		</s:if> <s:else>
			<div class="zjxx_box">	  
		</s:else>
		    <div class="sky_blue"><span class="fr"><a href="javascript:doQuerySupplyInfo('${item.code }')">更多»</a></span>
		      <h6>${item.name } </h6>
		    </div>
		    <div class="box_3">
		      <ul class="sky_new_li">
		        <s:set name="count" value="0"></s:set>
		      	<s:iterator id="supplyInfo" value="supplyInfoList">
		    	    <s:if test="#item.code==#supplyInfo.investType">
		    	     <s:set name="count" value="#count+1"></s:set>
		    	   	 <li><a href="/service/supplyInfoAction!detail.act?clbSupplyInfoId=${supplyInfo.id }" target="_blank">${supplyInfo.title} </a></li>
		    		</s:if>
		        </s:iterator>
		        <s:if test="#count<1">
		        	<li>无记录</li>
		        </s:if>
		      </ul>
		    </div>
		    <div class="hr_10">&nbsp;</div>
	    </div>
    </s:iterator>
</div>          
  <!--main--> 
<div class="clear"> &nbsp; </div>
<div class="hr_10"> &nbsp; </div>
<!--foot-->
<jsp:include page="/public/bottom.jsp" />
<!--foot-->
</body>
</html>