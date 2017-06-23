<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>
<head>
<link href="<c:url value="/resources/loginform.css" />" rel="stylesheet">
</head>
<body onload='document.loginForm.username.focus();'>
  <div class="login-page">
   <div class="form">
   <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
    <form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>
    <h1>UTMC</h1> 
    <h1><spring:message code="label.anesthesiaresidency"/></h1>
    <h2><spring:message code="label.achievementtracking"/></h2>
    <h3><spring:message code="label.signin"/></h3>
      <input type="text" name='username'/>
      <input type="password" name="password"/>
      <button type="submit"><spring:message code="label.login"/></button>
	  <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
    </form>
    </div>
</div>
</body>
</html>
