<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>银行_个人用户中心_中国资金网</title>
<link rel="stylesheet" href="/css/public.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="/css/member.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="/css/module.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="/script/jquery-1.7.2.min.js" > </script>
<script type="text/javascript" src="/script/profile.js" > </script>
<script type="text/javascript">
$(function() {
showApply();
});

function showApply(){
   	var url = "/user/loan/uncheck/unCheckApply.act";
   	$.post(url,{}, function(data){
   		var da = $('#finance_apply_list');
   		da.html(data);
   	}, 'html');
   	$.post("/user/loan/uncheck/unCheckRequest!loanRequestHome.act",{}, function(data){
   		$('#loan_request_list').html(data);
   	});
}
 </script>
</head>
<body>
<!--头部-->
<div class="header user_header">
<jsp:include page="/WEB-INF/web/user/head.jsp"></jsp:include>
  <div class="clear"> &nbsp; </div>
</div>
<div class="hr_10"> &nbsp; </div>
<!--主体部分-->
<div class="container_960">
  <div class="user_box">
    <div class="user_info fl"> <img class="user_logo fl" src="<s:if test="#session._user.avatar!=null">${session._user.avatar}</s:if><s:else>/images/member_logo.jpg</s:else>" alt="${session._user.realname}" />
        <h6>${typeName } <font style="color: red;">&nbsp;&nbsp;&nbsp;<s:if test="#session._user.auditstatus==0">未审核</s:if><s:elseif test="#session._user.auditstatus==1">待审核</s:elseif><s:elseif test="#session._user.auditstatus==2">已审核</s:elseif></font></h6>
        <span id="mail">
        	<s:if test="#session._user.activetype==1 || #session._user.activetype==3"><a class="mail_on" title="Email已认证"></a></s:if><s:else><a class="mail_off" title="Email未认证"></a></s:else>
        </span>
        <span id="mobile">
        	<s:if test="#session._user.activetype==2 || #session._user.activetype==3"><a class="mobile_on" title="手机号码已认证"></a></s:if><s:else><a class="mobile_off" title="手机号码未认证"></a></s:else>
        </span>
        <span id="ca"><a class="ca_off" title="CA证书未认证"></a></span>
        <span id="vip">
        <s:if test="#session._user.viptype==2"><a title="资信通vip会员"><img src="/images/vip_on1.gif"/></a></s:if><s:elseif test="#session._user.viptype==1"><a class="vip_on" title="资信通认证会员"></a></s:elseif><s:else><a class="vip_off" title="非资信通会员"></a></s:else>
        </span>
      <div class="hr_10"> &nbsp; </div>
      <h6>${userTypeName }</h6>
    </div>
    <div class="user_real fl">
      <h6>尊敬的 ${session._user.realname} <s:if test="#session._user.gender==1">先生：</s:if><s:else>女士：</s:else></h6>
      <p class="notice">您上次登录的时间为 <font color="#CC0000"><s:date name="usrLoginhistory.logindt" format="yyyy-MM-dd HH:mm:ss" /></font>，如有疑问请及时修改密码并联系客服。</p>
      <span class="msg">您有（<a class="red" href="/user/message!viewMsg.act"><s:if test="msgNo==null">0</s:if><s:else>${msgNo }</s:else></a>）条新消息</span>
      <p>查看您的<a href="/user/Profile.act"><font style="color: red;">详细信息</font></a>。</p>
    </div>
    <div class="clear"> &nbsp; </div>
  </div>
  <div class="hr_10"> &nbsp; </div>
  <div class="grid_710">
   <div class="hr_10"> &nbsp; </div>
    <!-- 快速申请 -->
    <div id="loan_request_list">
    
    </div>
    <div class="hr_10"> &nbsp; </div>
    <!-- 融资申请 -->
    <div id="finance_apply_list">
    
    </div>
    <!-- Supply Info List -->
    <div id="div_supply_info">
    	<s:include value="../common/_supply_info.jsp"></s:include>
    </div>
    
    
    <div class="hr_10"> &nbsp; </div>
    <div class="hr_10"> &nbsp; </div>
    <!-- 
    <div class="box_4"><img src="/images/ad_708.jpg" /></div>
     -->
  </div>
  <div class="grid_230">
    <div class="menu_blue white"><span class="fr white"><a href="/service/requestInfoAction!home.act?pageNo=1">更多»</a></span>
      <h6>最新项目信息</h6>
    </div>
    <div class="box_3">
    <s:if test="newRequestInfo.size>0">
        <ul class="new_li">
		<s:iterator id="item" value="newRequestInfo" status="st">
			<li title="${item.title}">
			<a href="/service/requestInfoAction!detail.act?clbRequestInfoId=${item.id }">
				<s:if test="#item.title != null && #item.title.length()>15">
					<s:property value="#item.title.substring(0,15)"></s:property>...
				</s:if><s:else>
					${item.title}
				</s:else>
			</a></li>
		</s:iterator>
	</ul>				  
	</s:if>				
	<s:else>
		<li>暂无</li>
	</s:else>
      
    </div>
    <div class="hr_10"> &nbsp; </div>
  </div>
</div>
<div class="hr_10"> &nbsp; </div>
<!--尾部-->
<jsp:include page="/public/bottom.jsp"></jsp:include>
</body>
</html>