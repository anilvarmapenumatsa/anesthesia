<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>

<link href="<c:url value="/bootstrapcss/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/bootstrap-theme.css" />"
	rel="stylesheet">


<link href="<c:url value="/resources/welcomepage.css" />"
	rel="stylesheet">
</head>
<body>
	<%@include file="header.jsp"%>

	<!--Slides-->
	<div class="carousel-inner" role="listbox">

		<!-- First slide -->
		<div class="carousel-item active view hm-black-light"
			style="background-image: url('http://mdbootstrap.com/img/Photos/Horizontal/Nature/full%20page/img%20(1).jpg'); background-repeat: no-repeat; background-size: cover;">


		</div>
		<!-- /.First slide -->

		<!-- Second slide -->
		<div class="carousel-item view hm-black-light"
			style="background-image: url('http://mdbootstrap.com/img/Photos/Horizontal/Nature/full%20page/img%20(22).jpg'); background-repeat: no-repeat; background-size: cover;">


		</div>
		<!-- /.Second slide -->

		<!-- Third slide -->
		<div class="carousel-item view hm-black-light"
			style="background-image: url('http://mdbootstrap.com/img/Photos/Horizontal/Nature/full%20page/img%20(24).jpg'); background-repeat: no-repeat; background-size: cover;">


		</div>
		<!-- /.Third slide -->

	</div>
	<!--/.Slides-->

	<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

	</sec:authorize>
</body>
</html>