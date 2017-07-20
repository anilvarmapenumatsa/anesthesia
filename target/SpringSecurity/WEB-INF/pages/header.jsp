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
		<header class="header-image" style="background: #003E7E; color: white">
			<div class="container">
				<h2 style="text-align: left;">
					<span>UTMC Medicine Anesthesia Tracking</span>
				</h2>
			</div>
		</header>
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="http://www.utoledo.edu/med/depts/anesthesiology/residency/edu.html"><img
					src="/SpringSecurity/images/ut_logo_shield.png" alt="stack photo"
					class="img" style="width: 30px; height: 30px;"> </a>
			</div>
			<div id="navbar" class="navbar-collapse collapse"
				aria-expanded="false" style="height: 1px;">
				<ul class="nav navbar-nav">
					<li><a href="/SpringSecurity/welcome"
						style="color: white; background: #003E7E;">Home</a></li>
					<li><a href="/SpringSecurity/contactpage"
						style="color: white; background: #003E7E;">Contact</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false" style="color: white;">Evaluation
							Dropdown <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" style="background: #003E7E;">
							<li><a
								href="/SpringSecurity/residentsimulationevaluationform"
								style="color: white;">Evaluation submission & summary</a></li>
							<!-- <li><a href="/SpringSecurity/resultsofresidentevaluation"
								style="color: white;">Evaluation Results</a></li> -->
							<li><a href="/SpringSecurity/userform" style="color: white;">Users submission & summary</a></li>
							<!-- <li><a href="/SpringSecurity/updateprofile"
								style="color: white;">update profile</a></li> -->
							<!-- <li><a href="#" style="color: white;">One more separated
									link</a></li> -->
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
												<p>
													<a href="#/changepassword"
														class="btn btn-primary btn-block btn-sm"
														style="color: white;">Change Password</a>
												</p>
												<p>
													<a href="updateprofile?username=${pageContext.request.userPrincipal.name}"
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
		</div>
	</nav>

	<!-- <header class="header-image" style="background: #003E7E; color: white">
		<div class="headline">
			<div class="container">
				<h3 style="text-align: left;">
					<span>UT Engineering-Medicine Anesthesia Tracking</span>
				</h3>
				<br>
			</div>
		</div>
	</header>  -->

</body>
</html>