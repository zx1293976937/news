<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>修改管理员信息</title>
<script type="text/javascript">
function getCode(obj){
	var val = $(obj).val();
	var txt = $(obj).find("option:selected").text();
	var id = $(obj).find("option:selected").attr("id");
	var title = $(obj).find("option:selected").attr("title");
	
	$("#userCode").val(val);
	$("#proName").val($.trim(txt));
	$("#in").val($.trim(txt));
	$("#pa").val(id);
	$("#pr").val(title);
}
function checkForm(){
	if(!checkNull("proName")){
		alert("请填写单位名称");
		return false;
	}
	var name = $("#proName").val();
	var userId = $("#userId").val();
	var checkCode = 1;
	$.ajax({
        url:'user_checkName.action',
        type:"post",
        data:{name:name,flg:"upt",userId:userId},
        async:false, 
        dataType:"json", //服务器返回的数据类型  
        error:function(){
        },
        success:function(data){
        	checkCode = data.checkCode;
    		if(checkCode == 2){
    			alert("该单位名称已被使用");
    			return false;
    		}
        }
    });
	if(checkCode == 2){
		return false;
	}
	
	if(!checkNullByName("user.passWord")){
		alert("请填写密码");
		return false;
	}
	if(!checkNullByName("user.trueName")){
		alert("请填写管理员姓名");
		return false;
	}
}
</script>
<body>
<div class="box">
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-info">
				您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b class="tip"></b><a href="#">管理员信息</a>
			</div>
		</div>
	</div>
	<div class="row" style="height:10px"></div>
</div>
	<DIV id="dindex">
		<div id="dindex_2" class="tjdzj_detailed">
			<ul>
				<li></li>
				<li>
					<table width="98%" border="0">
						<s:form method="post" action="user_update" namespace="/"
							theme="simple" onsubmit="return checkForm();">
							<s:hidden name="user.userId" id="userId"></s:hidden>
							<tr>
								<th width="10%">机构</th>
								<th width="60%">
								<select onchange="getCode(this);">
									<c:forEach items="${provinceList}" var="p">
										<option value="${p.priority}" id="${p.parentUnit}" title="${p.privilege}" <c:if test="${user.userCode eq p.priority}">selected="selected"</c:if>>${p.provinceName}</option>
									</c:forEach>
								</select>
								<input type="hidden" name="user.inchargeMent" id="in" value="${user.inchargeMent}"/>
								<input type="hidden" name="user.privilege" id="pr" value="${user.privilege}"/>
								<input type="hidden" name="user.parentUnit" id="pa" value="${user.parentUnit}"/>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">用户代码 <font color="#ff0000">*</font></th>
								<th width="60%"><input type="text" readonly="readonly" name="user.userCode" id="userCode" value="${user.userCode}" class="form-control"/>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">单位名称 <font color="#ff0000">*</font></th>
								<th width="60%"><input type="text" name="user.proName" value="${user.proName}" id="proName" class="form-control"/>
								</th>
							</tr>
							<tr><th></th></tr>
							<tr><th></th></tr>
							<tr><th></th></tr>
							<tr>
								<th width="10%">密码 <font color="#ff0000">*</font></th>
								<th width="60%"><s:textfield name="user.passWord" cssClass="form-control"></s:textfield>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">管理员姓名 <font color="#ff0000">*</font></th>
								<th width="60%"><s:textfield name="user.trueName" cssClass="form-control"></s:textfield>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">性别</th>
	  							<th width="60%" >
								  	<input type="radio" name="user.userSex" value="男" <c:if test="${user.userSex eq '男'}">checked="checked"</c:if>/>男
								  	<input type="radio" name="user.userSex" value="女" <c:if test="${user.userSex eq '女'}">checked="checked"</c:if>/>女
								  </th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">工作电话</th>
								<th width="60%">
								<input type="text" name="user.phone" class="form-control" value="${user.phone}"/>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">手机</th>
								<th width="60%">
								<input type="text" name="user.mobilePhone" class="form-control" value="${user.mobilePhone}"/>
								</th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							
							<tr>
								<th width="10%">电子邮箱</th>
								<th width="60%"><s:textfield name="user.mailBox" cssClass="form-control"></s:textfield></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th width="10%">通讯地址</th>
								<th width="60%"><s:textfield name="user.address" cssClass="form-control"></s:textfield></th>
							</tr>
							<tr><th></th></tr>
							<tr><th></th></tr>
							<tr><th></th></tr>
							<tr>
								<th width="10%"></th>
								<th width="80%" align="center" >
								  <button type="submit" class="btn btn-primary" style="width: 100px;"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;提交</button>
								  &nbsp;&nbsp;&nbsp;&nbsp;
								  <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);" style="width: 100px;">返回</button>
								  </th>
						  </tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
							<tr>
								<th></th>
							</tr>
						</s:form>
					</table>
				</li>
			</ul>
		</div>

		<%@ include file="../bottom.jsp"%>

	</div>

</body>
</html>