<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>
<script src="<c:url value="/resources/residentEvaluationForm.js" />"></script>

<link href="<c:url value="/bootstrapcss/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/bootstrap-theme.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/welcomepage.css" />"
	rel="stylesheet">
</head>
<body>
	<%@include file="header.jsp"%>
	<h1>HTTP Status 403 - Access is denied</h1>

	<c:choose>
		<c:when test="${empty username}">
			<h2>You do not have permission to access this page!</h2>
		</c:when>
		<c:otherwise>
			<h2>
				Username : ${username} <br />You do not have permission to access
				this page!
			</h2>
		</c:otherwise>
	</c:choose>

</body>
</html>