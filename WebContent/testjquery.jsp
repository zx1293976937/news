<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jQuery/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#testbutton").click(function() {
			/* window.alert($("#test").val()); */
			$("#test").html("hello");
		});
	});
</script>
</head>
<body>
	<div id="test" class="test" value="hello"></div>
	<form>
		<input type=button value="提交" id="testbutton" />
	</form>

</body>
</html>