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
<nav class="navbar navbar-default navbar-fixed-top navibar-inner">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">UT Anesthesia Tracking</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse"
				aria-expanded="false" style="height: 1px;">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/SpringSecurity/welcome">Home</a></li>
					<li><a href="/SpringSecurity/contactpage">Contact</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Evaluation Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="/SpringSecurity/residentsimulationevaluationform">Evaluation</a></li>
							<li><a href="/SpringSecurity/resultsofresidentevaluation">Evaluation
									Results</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="javascript:void(0);"
							class="dropdown-toggle" data-toggle="dropdown"> <span
								class="glyphicon glyphicon-user"></span> <strong>${pageContext.request.userPrincipal.name}</strong>
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li>
									<div class="navbar-login">
										<div class="row">
											<div class="col-lg-4">
												<p class="text-center">
													<span class="glyphicon glyphicon-user icon-size"></span>
												</p>
											</div>
											<div class="col-lg-8">
												<p class="text-left">
													<strong>${pageContext.request.userPrincipal.name}</strong>
												</p>
												<p class="text-left small">@rockets.utoledo.edu</p>
												<p>
													<a href="#/changepassword"
														class="btn btn-primary btn-block btn-sm">Change
														Password</a>
												</p>
												<p>
													<a href="javascript:formSubmit()"
														class="btn btn-danger btn-block btn-sm">Logout</a>
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
	<h1>HTTP Status 403 - Access is denied</h1>

	<c:choose>
		<c:when test="${empty username}">
			<h2>You do not have permission to access this page!</h2>
		</c:when>
		<c:otherwise>
			<h2>Username : ${username} <br/>You do not have permission to access this page!</h2>
		</c:otherwise>
	</c:choose>
	
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

</body>
</html>