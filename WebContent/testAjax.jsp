<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="jQuery/jquery-1.10.2.js"></script>
<script src="jQuery/jquery.form.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn1").click(function(){

			$.ajax({
	        	dataType:"json",
	        	url: "user_test",
	        	/* data: { txtName: strTxtName, txtPass: strTxtPass }, */
				data:{userName:$("#userName").val(),passWord:$("#passWord").val()},
	        	success:function(strValue){
	        		//window.alert(strValue);
	        		/* $("myDiv").html(strValue); */
	        		$("#myDiv").html(strValue);
	        	}
	        	/* complete:function(XMLHttpRequest,textStatus){},
	        	error:function(){} */
	    	});
			/* $("#myDiv").html(htmlobj.responseText); */
		});
	});
</script>

</head>
<body>

	<h2>AJAX</h2>
	<s:form>
		<div>
                    名称：<s:textfield id="userName" name="userName" type="text" class="txt"></s:textfield>
                <div>
                    密码：<s:textfield id="passWord" name="passWord" type="password" class="txt"></s:textfield>
	
	<button id="btn1" type="button">请求数据</button>
	<div id="myDiv"></div>
	</s:form>

</body>
</html>
