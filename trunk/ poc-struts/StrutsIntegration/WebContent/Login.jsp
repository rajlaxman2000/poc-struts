<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Login Application</title>
</head>

<body>
<h2>Login Application</h2>
<s:actionerror />
<s:form action="login.action" method="post">
	<s:textfield name="username" key="userName" size="20" />
	<s:password name="password" key="password" size="20" />
	<s:submit method="execute" key="login" align="center" value="Login"/></s:form>
</body>
</html>
