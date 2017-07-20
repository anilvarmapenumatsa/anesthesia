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
<link href="<c:url value="/bootstrapcss/applenavbar.min.css" />"
	rel="stylesheet">


<link href="<c:url value="/resources/welcomepage.css" />"
	rel="stylesheet">
</head>
<body>
	<%@include file="header.jsp"%>

	<nav id="ac-localnav" class="container js no-touch css-sticky"
		lang="en-US" role="navigation">
		<div class="ac-ln-wrapper">
			<div class="ac-ln-background"></div>
			<div class="ac-ln-content">
				<h2 class="ac-ln-title">Users</h2>
				<div class="ac-ln-menu">
					<div class="ac-ln-menu-tray">
						<ul class="ac-ln-menu-items">
							<li class="ac-ln-menu-item"><span
								class="ac-ln-menu-link current" role="link" aria-disabled="true">User
									Form</span></li>
							<li class="ac-ln-menu-item"><a
								href="/SpringSecurity/resultsofuserdata" class="ac-ln-menu-link">Summary</a></li>
							<!-- <li class="ac-ln-menu-item"><a
								href="#/viewfullproductionsummary" class="ac-ln-menu-link">Reports</a>
							</li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>

	<div>

		<div class="container">
			<div class="row clearfix">
				<div class="col-md-6 col-md-offset-3 column">
					<form:form action="saveUser" method="post"
						modelAttribute="userInfo">
						<div class="form-group " style="padding-top: 25px;">
							<label class="control-label " for="username"> Name </label> <input
								class="form-control" id="username" name="username" type="text" />
						</div>
						<div class="form-group ">
							<label class="control-label " for="password"> Password </label> <input
								class="form-control" id="password" name="password" type="text" />
						</div>
						<div class="container">
						<div class="form-group" id="div_enabled">
							<label class="control-label " for="desigantion"> Designation </label>
							<div class="">
								<label class="radio-inline"> <input name="designation"
									type="radio" value="Student" /> Student
								</label> <label class="radio-inline"> <input name="designation"
									type="radio" value="Lecturer" /> Lecturer
								</label>
							</div>
						</div>
						<div class="form-group" id="div_enabled">
							<label class="control-label " for="enabled"> Enabled </label>
							<div class="">
								<label class="radio-inline"> <input name="enabled"
									type="radio" value="1" /> Yes
								</label> <label class="radio-inline"> <input name="enabled"
									type="radio" value="0" /> No
								</label>
							</div>
						</div>
						<div class="form-group" id="div_role">
							<label class="control-label " for="role"> Role </label>
							<div class=" ">
								<label class="checkbox-inline"> <input name="role"
									type="checkbox" value="ROLE_ADMIN" /> Admin
								</label> <label class="checkbox-inline"> <input name="role"
									type="checkbox" value="ROLE_USER" /> User
								</label>
							</div>
						</div>

						<div class="form-group">
							<div>
								<button class="btn btn-primary " name="submit" type="submit">
									Submit</button>
							</div>
						</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>

		<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>

	</div>
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