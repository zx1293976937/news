<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="/bizBase.jsp"%>
<title>修改密码</title>
<script>
	function checkForm() {
		var holdPwd = $("input[name=holdPwd]").val();
		var oldPwd = $("input[name=oldPwd]").val();
		var newPwd = $("input[name=newPwd]").val();
		var confirmPwd = $("input[name='user.passWord']").val();
		
		if(oldPwd == ""){
			alert("原密码不能为空！");
			return false;
		}
		if (oldPwd != holdPwd) {
			alert("您输入的原密码不正确!");
			return false;
		}
		if(newPwd == ""){
			alert("新密码不能为空！");
			return false;
		}
		if(confirmPwd == ""){
			alert("请再次确认密码！");
			return false;
		}
		if (newPwd != confirmPwd) {
			alert("您两次输入的新密码不一致，请重新输入!");
			return false;
		}
		if ((oldPwd == holdPwd) && (newPwd == confirmPwd)) {
			alert("密码修改成功！");		
			form.user.passWord = confirmPwd;
			return false;
		}
		return false;
	}
</script>
</head>
<body>
	<div class="box">
		<div class="row">
			<div class="col-xs-12">
				<div class="alert alert-info">
					您所在的位置<b class="tip"></b><a href="info_queryAllInfo">首页</a><b
						class="tip"></b><a href="#">修改密码</a>
				</div>
			</div>
		</div>
		<div class="row" style="height: 10px"></div>
	</div>
	<div id="dindex">
		<div id="dindex_2" class="tjdzj_detailed">
			<ul>
				<li></li>
				<li>
				<form name="pwd_change_form" action="user_updatePassWord"
							method="post" onsubmit="return checkForm();">
					<table>
						
						<tr>
							<th width="18%">当前用户名：</th>
							<th width="75%">${loginUser.proName}<input type="hidden" name="user.userId" value="${loginUser.userId}" /> 
								<input type="hidden" name="holdPwd" value="${loginUser.passWord}" />
							</th>
						</tr>
						<tr><th></th></tr>
						<tr><th></th></tr>
						<tr><th></th></tr>
						<tr>
							<th width="10%">请输入原密码 <font color="#ff0000">*</font></th>
							<th width="80%"><input type="password" name="oldPwd" class = "form-control"/></th>
						</tr>					
						<tr><th></th></tr>
						<tr><th></th></tr>
						<tr><th></th></tr>					
						<tr>
							<th width="10%">请输入新密码 <font color="#ff0000">*</font></th>
							<th width="80%"><input type="password" name="newPwd" class = "form-control"/></th>
						</tr>						
						<tr><th></th></tr>
						<tr><th></th></tr>
						<tr><th></th></tr>
						<tr>
							<th width="10%">请确认新密码 <font color="#ff0000">*</font></th>
							<th><input type="password" name="user.passWord" class = "form-control"/></th>
						</tr>
						<tr><th></th></tr>
						<tr><th></th></tr>
						<tr><th></th></tr>						
						<tr>	
							<c:if test="${loginUser.userCode eq '00000'}">
							<th colspan="2">
								<button type="submit" class="btn btn-primary" style="width: 100px;">确认</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type = "reset" class = "btn btn-default" style = "width:100px">重置</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type = "button" class = "btn btn-default" >重置所有用户密码</button>
							</th>	
							</c:if>	
							<c:if test="${loginUser.userCode ne '00000'}">
								<th width="10%"></th>
								<th>
									<button type="submit" class="btn btn-primary" style="width: 100px;">确认</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type = "reset" class = "btn btn-default" style = "width:100px">重置</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</th>
							</c:if>
						</tr>	
					</table>
					</form>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>