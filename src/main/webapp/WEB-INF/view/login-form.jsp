<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<style>
.failed {
	color: red;
}
</style>
</head>
<body>
	<h2>Custom Login Form</h2>
	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		method="POST">
		<!-- Check for login Error -->
		<c:if test="${param.error != null}">
			<i class="failed">Sorry Invalid Credentials !! Try login again</i>
		</c:if>

		<p>
			User name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>
		<p>
			<input type="submit" value="login">
		</p>
	</form:form>
</body>
</html>