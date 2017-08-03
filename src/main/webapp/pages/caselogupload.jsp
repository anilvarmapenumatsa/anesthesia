<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="<c:url value="/resources/residentEvaluationForm.js" />"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

<link href="<c:url value="/bootstrapcss/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/bootstrap-theme.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/applenavbar.min.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
<link href="<c:url value="/resources/welcomepage.css" />"
	rel="stylesheet">
</head>
<body>
	<%@include file="header.jsp"%>

<form method="POST" action="processExcel" enctype="multipart/form-data" modelAttribute="caseLogFile">
<input type="hidden" name="${_csrf.parameterName}"
                value="${_csrf.token}" />
    <input type="file" name="file" /><br/><br/>
    <input type="submit" value="Submit" />
</form>

</body>
</html>