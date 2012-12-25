<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="common" uri="/Common"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>企业经营贷款快速申请</title>
<link rel="stylesheet" href="/css/public.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="/css/module.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="/css/member1.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="/css/jquery-ui.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="/script/jquery-1.7.2.min.js" > </script>
<script type="text/javascript" src="/script/jquery.ui.min.js"></script>
<script type="text/javascript" src="/script/jquery.ui.dialog.min.js" > </script>
<script type="text/javascript" src="/script/jquery.form.js" > </script>
<script language="javascript">
//文本框触发焦点效果s
    $(function() {
        finance_type_chenge('${product.financeType}');
    });

function finance_type_chenge(financeType){
	if(financeType == '151'){
		$('.finance_type_152').hide();
		$('.finance_type_153').hide();
		$('.finance_type_154').hide();
		$('.finance_type_151').show();
	}else if(financeType == '152'){
		$('.finance_type_151').hide();
		$('.finance_type_153').hide();
		$('.finance_type_154').hide();
		$('.finance_type_152').show();
	}else if(financeType == '153'){
		$('.finance_type_151').hide();
		$('.finance_type_152').hide();
		$('.finance_type_154').hide();
		$('.finance_type_153').show();
	}else if(financeType == '154'){
		$('.finance_type_151').hide();
		$('.finance_type_152').hide();
		$('.finance_type_153').hide();
		$('.finance_type_154').show();
	}
}

function updatestatus(value){
	if (window.confirm('确定提交吗！')) {
		$('#product_prostatus').val(value);
		$("#loanForm").submit();
	}
}

function uploadAttachFile(prdId){
	$('#finance_id').val(prdId);
   	$('#uploadAttachObj').html($('<input type="file" name="upload" id="attachUfile"/>'));
   	$("#upload_attach_file").dialog({
   		width:500,
   		modal:true,
   		close: function(event, ui) {
   		}
   		
   	});
   	$('#attachUfile').val('');
   	$('#finance_message').html('');
   }
   
function uploadAttachsubmit() {
   	if($('#attachUfile').val()=='' || $('#attachUfile').val()==null){
   		$('#finance_message').html("请选择上传文件！");
   		return false;
   	}
   	
	var uploadfile = $('#attachUfile').val();
	if (uploadfile != "") {
		var types = [ "png", "jpg", "jpeg", "bmp", "doc", "docx", "xls","xlsx", "pdf","rar","zip" ];
		var ext = uploadfile.substring(uploadfile.lastIndexOf(".") + 1).toLowerCase();
		
		var sing = false;
		for ( var i = 0; i < types.length; i++) {
			if (ext == types[i]) {
				sing = true;
			}
		}
		if (!sing) {
			$('#finance_message').html("您选择的文件类型不符合要求!");
			return false;
		}
	}
	$('#finance_message').html("正在上传文件,请稍候...");
	$('#uploadAttachForm').submit();
	/*$('#uploadAttachForm').ajaxSubmit({
		datatype : "html",
		success : function(data) {
			if(data.indexOf('error') >= 0){
				$('#attachUfile').hide();
				$('#finance_message').html("上传失败，只支持上传小于3M的png、jpg、jpeg、bmp、word、excel、pdf、rar、zip文件！");
			}else{
				$("#upload_attach_file").dialog("close");
			}
		}
	});*/
}

function prdTemplate(prdId){
	var url = "/user/loan/prdAttach!applyDataList.act";
	var param = {'prdId':prdId};
   	$.post(url,param, function(data){
   		$('#prdTemplateList').html(data);
   		$("#prdTemplateList").dialog({
    		width:700,
    		modal:true
    	});
   	}, 'html');
}

</script>
  </head>
  
  <body>
<!--头部2-->
<div class="header user_header">
<jsp:include page="/WEB-INF/web/user/head.jsp"></jsp:include>
  <div class="clear"> &nbsp; </div>
</div>
<div class="hr_10"> &nbsp; </div>
  <div class="M_menu">
  	<div style="float: left;">融资管理&nbsp;&nbsp;<b>></b>&nbsp;&nbsp;<a href="/user/loan/financeProduct.act">融资产品管理</a>&nbsp;&nbsp;<b>></b>&nbsp;&nbsp;融资产品查看</div>
  </div>
<div class="hr_10"> &nbsp; </div>
<!--主体部分开始-->
<div class="container_950 box_4">
		<div class="P_title">产品查看</div>
		<div class="line" style="background:#f9f9f7; height:25px;" >
			<div class="f_text01 fl">
				<span>状态：<font color="d5652c"><common:print valueId="product.proStatus" /></font></span>
			</div>
			<div class="view_detail fr" style="margin-right: 20px;">
	   					<s:if test="product.proStatus == 196">
				   			<a href="/user/loan/financeProduct!updateFinancePage.act?product.id=${product.id }" >修改</a>&nbsp;&nbsp;
				   			<a href="javascript:updatestatus(197);" >提交审核</a>&nbsp;&nbsp;
				   			<a href="javascript:updatestatus(199);" >撤销发布</a>
				   			<a href="javascript:uploadAttachFile('${product.id }');" >上传产品文档</a>
				   			<s:if test="product.attach != null && product.attach != ''">
					   			<a href="/user/loan/prdAttachDown.act?prdId=${product.id }">下载产品文档</a>
				   			</s:if>
				   			<a href="javascript:prdTemplate('${product.id }');" >上传申贷资料模版</a>
						</s:if>
						<s:elseif test="product.proStatus == 197">
							<a href="javascript:updatestatus(199);" >撤销发布</a>
						</s:elseif>
						<s:elseif test="product.proStatus == 198">
							<a href="javascript:updatestatus(199);" >撤销发布</a>
						</s:elseif>
		   				<s:elseif test="product.proStatus == 199">
		   					<a href="/user/loan/financeProduct!updateFinancePage.act?repeatStatus=1&product.id=${product.id }" >重新发布</a>
		   				</s:elseif>
			</div>
		</div>	
</div>

<div class="hr_10"> &nbsp; </div>
<div class="apply_form">
<form action="/user/loan/financeProduct!updateStatus.act" id="loanForm"  class="box_form" style="margin:0px;" method="post">
<s:hidden name="product.id"></s:hidden>
<s:hidden name="product.proStatus" id="product_prostatus"></s:hidden>
	<div class="f_box">
		<div class="f_sqxx"><span class="f_gz">产品参数</span><font style="color:red;">${msg }</font></div>
	</div>
	<div class="C_form">
            <dl>
              <dd>
                <h1>贷款产品名称：</h1>
                ${product.financeName}
              </dd>
              <dd>
                <h1>贷款类型：</h1>
                <common:print valueId="product.financeType" />
              </dd>
              <dd>
                <h1>贷款期限：</h1>
                ${product.financeLittledt } ~ ${product.financeMostdt }个月
				</dd>
				<dd>
                <h1>贷款金额：</h1>
                <s:number name="product.financeLittleamount" /> ~ <s:number name="product.financeBigamount" />万
				</dd>
			  <dd class="finance_type_154" style="display:none;" >
                <h1>房屋性质：</h1>
                <common:print valueId="product.houseProperty" />
              </dd>
              <dd class="finance_type_154" style="display:none;" >
                <h1>房屋使用年限：</h1>
                ${product.useTime}
              </dd>
				<dd>
                	<h1>贷款利率：</h1>
				  	<common:print valueId="product.interestType" />
				</dd>
				<s:if test="product.interestType == 155">
				<dd>
					<h1>&nbsp;</h1>
					<div>
						<table width="400">
							<tr>
								<th align='left'>贷款期限</th>
								<th align='left'>基准利率</th>
								<th align='left'>浮动范围(上浮)</th>
							</tr>
							<s:iterator value="product.interests" id="item">
							<tr>
								<td>
									${interestMemo }
								</td>
								<td>
									<common:print valueId="financeEnddt" type="rate"/>%
								</td>
								<td>
									${rateDown } - ${rateUp }%
								</td>
							</tr>
							</s:iterator>
						</table>
					</div>
				</dd>
				</s:if>
				<s:if test="product.serviceCost != null && product.serviceCost > 0">
				  <dd>
	                <h1>服务费：</h1>
	                ${product.serviceCost }%
	              </dd>
				</s:if>
				<dd class="finance_type_151 finance_type_152 finance_type_153">
                <h1>支持还款方式：</h1>
				  <common:print valueId="product.repaymentType" />
				</dd>
				<dd class="finance_type_151 finance_type_152 finance_type_153">
                <h1>抵押类型：</h1>
				  <common:print valueId="product.mortgageType" />
				</dd>
				<dd>
                <h1>支持用途：</h1>
				  <common:print valueId="product.purposeType" />
				</dd>
				
				<dd class="finance_type_154" style="display:none;" >
                <h1>支持公积金：</h1>
                <common:print valueId="product.surplus" valueSetMap="ZJ102"/>
              </dd>
              
				<dd>
                <h1>审批时间：</h1>
                ${product.checkTime }个工作日
              </dd>
              <dd>
                <h1>面向区域：</h1>
                <div style="width:200px">
                	<s:if test="productAreaList.size()==0">
                	全国
                	</s:if>
                	<s:else>
	                		<s:iterator value="productAreaList" id="item">
	                			${item.name }&nbsp;&nbsp;
	                		</s:iterator>
                	</s:else>
                </div>
              </dd>
			 </dl>
	</div>
	<div class="clear"></div>
	<div class="f_box">
		<div class="f_sqxx"><span class="f_gz">产品介绍</span></div>
	</div>
	<div class="C_form">
		<dl>
           <dd>
             	<h1>贷款产品特色：</h1>
			  <common:print valueId="product.proSpecial" />
		   </dd>
			<dd>
                <h1>贷款产品介绍：</h1>
                <div style="padding-left:140px;">${product.proIntroduce }</div>
              </dd>
		</dl>
	</div>
	<div class="clear"></div>
	<div class="f_box">
		<div class="f_sqxx"><span class="f_gz">申贷资料</span></div>
	</div>
	<div class="C_form">
		<dl>
			<dd>
                <h1>申贷需要资料清单</h1>
              </dd>
              <dd>
              	<h1>&nbsp;</h1>
              	<s:if test="product.dataFiles != null && product.dataFiles.size() > 0">
                	<table width="400">
						<tr>
							<th>资料名称</th>
							<th>份数</th>
						</tr>
						<s:iterator value="product.dataFiles" id="item">
						<tr>
							<td>
								${item.dataName }
							</td>
							<td>
								${item.needNum }
							</td>

						</tr>
						<s:if test="haveMemo == 1">
							<tr>
								<td colspan="3">
									<div style="padding-left:40px;">${otherMemo }</div>
								</td>
							</tr>
						</s:if>
						</s:iterator>
					</table>
                </s:if>
              </dd>
              <dd>
              	<h1>资料递交方式：</h1>
				  <common:print valueId="product.uploadWay" />
			  </dd>
		</dl>
	</div>
	<div class="clear"></div>
	<div class="f_box">
		<div class="f_sqxx"><span class="f_gz">申请条件</span></div>
	</div>
	<div class="C_form">
		<dl>
			  <dd class="finance_type_151 finance_type_152">
                <h1>所属行业：</h1>
                	<s:if test="productIndustryList.size()==0">
                		不限
                	</s:if>
                	<s:else>
	                		<s:iterator value="productIndustryList" id="item">
	                			${item.name }&nbsp;&nbsp;
	                		</s:iterator>
                	</s:else>
              </dd>
              <dd class="finance_type_151">
                <h1>企业的总资产：</h1>
                 <common:print valueId="product.companyAllAsset" valueSetMap="ZJ112"/>
              </dd>
              <dd class="finance_type_151 finance_type_152">
                <h1>年营业收入：</h1>
                <common:print valueId="product.operatIncome" valueSetMap="ZJ104"/>
              </dd>
              <dd class="finance_type_151">
                <h1>企业成立年数：</h1>
                <common:print valueId="product.settingYear" valueSetMap="ZJ105"/>
              </dd>
              <dd class="finance_type_152" style="display:none;" >
                <h1>保证金：</h1>
                <common:print valueId="product.needEnsure" valueSetMap="ZJ101"/>
              </dd>
              <dd class="finance_type_152" style="display:none;" >
                <h1>申请人行业经验：</h1>
                <common:print valueId="product.experience" valueSetMap="ZJ106"/>
              </dd>
              <dd class="finance_type_152" style="display:none;" >
                <h1>经营场所：</h1>
                <common:print valueId="product.runningArea" valueSetMap="ZJ103"/>
              </dd>
              
              <dd class="finance_type_153 finance_type_154" style="display:none;" >
                <h1>申请人月工资收入：</h1>
                <common:print valueId="product.salaryIncome" valueSetMap="ZJ107"/>
              </dd>
              <dd class="finance_type_153 finance_type_154" style="display:none;" >
                <h1>工资发放形式：</h1>
                <common:print valueId="product.salaryPutWay" valueSetMap="ZJ108"/>
              </dd>
              <dd class="finance_type_153 finance_type_154" style="display:none;" >
                <h1>现单位工作时长：</h1>
                <common:print valueId="product.workTime" valueSetMap="ZJ109"/>
              </dd>
              <dd class="finance_type_153 finance_type_154" style="display:none;" >
                <h1>所在地自有房产：</h1>
                <common:print valueId="product.house" valueSetMap="ZJ103"/>
              </dd>
              <dd class="finance_type_152 finance_type_153 finance_type_154" style="display:none;" >
                <h1>信用记录：</h1>
                <common:print valueId="product.creditAcount" valueSetMap="ZJ103"/>
              </dd>
              <dd class="finance_type_152 finance_type_153 finance_type_154" style="display:none;" >
                <h1>银行流水：</h1>
                <common:print valueId="product.bankSalaryList" valueSetMap="ZJ103"/>
              </dd>
              
              <dd>
                <h1>其他申请条件：</h1>
                <div style="padding-left:140px;">${product.otherRequire }</div>
              </dd>
              <dd>
                <h1>备注：</h1>
                <div style="padding-left:140px;">${product.memo }</div>
              </dd>
		</dl>
	</div>
	<div class="clear"></div>
	<div class="f_box">
		<div class="f_sqxx"><span class="f_gz">自定义申请单</span></div>
	</div>
	<div class="C_form">
		<table class="container_950 center box_4 ctl" style="width:890px">
		<%int m = 1; %>
			<tr class="top_color">
				<td style="padding-left:25px;">项目名</td>
				<td>类型</td>
				<td>选项</td>
			</tr>
			<s:iterator value="financeProductSpModel.extendsPropertyList">
				<tr class="top_color01">
					<td style="padding-left:25px;">${fieldName }</td>
					<td><common:print valueId="fieldType" valueSetMap="ZJ114"/></td>
					<td>
						${fieldValue }
					</td>
				</tr>
			</s:iterator>
		</table>
	</div>	
		<div class="hr_10"> &nbsp; </div>

</form>
</div>
<div id="prdTemplateList" style="display:none;" title="资料模版上传"></div>
<div id="upload_attach_file" style="display:none;" title="文件上传">
   <div class="hr_10"> &nbsp;</div>
	<s:form id="uploadAttachForm" action="prdAttach.act" namespace="/user/loan" method="post" enctype="multipart/form-data">
	<s:hidden name="prdId" id="finance_id"></s:hidden>
	<table id="t_border">
		<tr>
			<td><h6>选择资料 &nbsp;&nbsp; <span id="finance_message" style="color: red"></span></h6></td>
		</tr>
		<tr id="uload">	
			<td>
			<span id="uploadAttachObj"><s:file name="upload" theme="simple" id="attachUfile" ></s:file></span>
			<input type="button" value="上传"  onclick="uploadAttachsubmit();"/></td> 
		</tr>
		<tr>	
			<td>说明：支持png、jpg、jpeg、bmp、doc、xls、pdf、rar、zip格式 文件小于3M</td>
		</tr>
	</table>
	</s:form>
</div> 
<!--主体部分结束-->
<div class="hr_10"> &nbsp; </div>
<div class="hr_10"> &nbsp; </div>
<!--尾部-->
<jsp:include page="/public/bottom.jsp" />
  </body>
</html>
