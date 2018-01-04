<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.failed {
color: red;
}
</style>
</head>
<body>
<h2>Welcome </h2>
<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<!-- Check for login Error -->
		<c:if test="${param.logout != null}">
			<i class="failed">Sorry Invalid Credentials !! Try login again</i>
		</c:if>
		<input type="submit" value="Logout"/>
		
</form:form>

</body>
</html>