<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top navibar-inner">
		<div class="container">
			<a class="navbar-brand" href="/SpringSecurity/welcome"><img
				src="/SpringSecurity/images/ut_logo_shield.png" alt="stack photo"
				class="img" style="width: 45px; height: 45px;"> </a> <a
				class="navbar-brand" style="padding-left: 0px;"
				href="/SpringSecurity/welcome"><img
				src="/SpringSecurity/images/ut_logo_text.png" alt="stack photo"
				class="img" style="width: 120px; height: 45px;"> </a>
			<header class="header-image"
				style="background: #003E7E; color: white">

				<h1
					style="text-align: left; font-family: Open Sans condensed sans-serif; font-weight: 600; font-size: 2.4em; text-transform: uppercase;">
					<span>MEDICINE ANESTHESIA TRACKING</span>
				</h1>

			</header>
			<ul class="nav navbar-nav">
				<li><a href="/SpringSecurity/welcome"
					style="color: white; background: #003E7E; padding-left: 0px; text-transform: uppercase; font-weight: 500; font-size: 1.2em;">Home</a></li>
				<li><a href="/SpringSecurity/contactpage"
					style="color: white; background: #003E7E; text-transform: uppercase; font-weight: 500; font-size: 1.2em;">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"
					style="color: white; text-transform: uppercase; font-weight: 500; font-size: 1.2em;">Evaluation
						Dropdown <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" style="background: #003E7E;">
						<li><a
							href="/SpringSecurity/residentsimulationevaluationform"
							style="color: white;">Evaluation submission & summary</a></li>
						<!-- <li><a href="/SpringSecurity/resultsofresidentevaluation"
								style="color: white;">Evaluation Results</a></li> -->
						<li><a href="/SpringSecurity/userform" style="color: white;">Users
								submission & summary</a></li>
						<!-- <li><a href="/SpringSecurity/updateprofile"
								style="color: white;">update profile</a></li> -->
						<!-- <li><a href="#" style="color: white;">One more separated
									link</a></li> -->
						<li><a
							href="/SpringSecurity/evaluationformnames"
							style="color: white;">Form Types</a></li>
					</ul></li>
			</ul>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown"
						style="color: white; background: #003E7E;"> <span
							class="glyphicon glyphicon-user"></span> <strong>${pageContext.request.userPrincipal.name}</strong>
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" style="background: #003E7E;">
							<li>
								<div class="navbar-login">
									<div class="row">
										<div class="col-lg-4">
											<p class="text-center">
												<span class="glyphicon glyphicon-user icon-size"></span>
											</p>
										</div>
										<div class="col-lg-8">
											<p class="text-left" style="color: white;">
												<strong>${pageContext.request.userPrincipal.name}</strong>
											</p>
											<p class="text-left small" style="color: white;">@rockets.utoledo.edu</p>
											<!-- <p>
												<a href="#/changepassword"
													class="btn btn-primary btn-block btn-sm"
													style="color: white;">Change Password</a>
											</p> -->
											<p>
												<a
													href="updateprofile?username=${pageContext.request.userPrincipal.name}"
													class="btn btn-primary btn-block btn-sm"
													style="color: white;">Update Profile</a>
											</p>
											<p>
												<a href="javascript:formSubmit()"
													class="btn btn-danger btn-block btn-sm"
													style="color: white;">Logout</a>
											</p>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
				</ul>
			</c:if>

		</div>
		<!--/.nav-collapse -->
	</nav>

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