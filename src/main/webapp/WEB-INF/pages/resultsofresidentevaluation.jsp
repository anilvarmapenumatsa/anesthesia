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
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="<c:url value="/resources/residentEvaluationForm.js" />"></script>

<script src="<c:url value="/resources/results.js" />"></script>

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
	<div class="container">
		<hr>
		<div class="row">
			<div class="panel panel-primary filterable">
				<div class="panel-heading">
					<h3 class="panel-title">Evaluation Results</h3>
					<div class="pull-right">
						<button class="btn btn-default btn-xs btn-filter">
							<span class="glyphicon glyphicon-filter"></span> Filter
						</button>
					</div>
				</div>
				<table class="table table-responsive table-hover">
					<thead>
						<tr class="filters">
							<!-- <th>&nbsp;</th> -->
							<th><input type="text" class="form-control"
								placeholder="Resident Name" disabled></th>
							<!-- <th><input type="text" class="form-control"
								placeholder="Date" disabled></th> -->
							<th><input type="text" class="form-control"
								placeholder="Rank" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Medical Knowledge" disabled></th>
							<!-- <th><input type="text" class="form-control"
								placeholder="Medical Knowledge Comments" disabled></th> -->
							<th><input type="text" class="form-control"
								placeholder="Technical Skills" disabled></th>
							<!-- <th><input type="text" class="form-control"
								placeholder="Technical Skills comments" disabled></th> -->
							<th><input type="text" class="form-control"
								placeholder="Team Work" disabled></th>
							<!-- <th><input type="text" class="form-control"
								placeholder="Team Work comments" disabled></th> -->
							<th><input type="text" class="form-control"
								placeholder="Leadership" disabled></th>
							<!-- <th><input type="text" class="form-control"
								placeholder="Leadership comments" disabled></th> -->
							<th><input type="text" class="form-control"
								placeholder="Professionalism" disabled></th>
							<!-- <th><input type="text" class="form-control"
								placeholder="Professionalism comments" disabled></th> -->
							<!-- <th><input type="text" class="form-control"
								placeholder="Additional Comments" disabled></th> -->
							<!-- <th><input type="text" class="form-control"
								placeholder="Goals" disabled></th> -->
							<th><input type="text" class="form-control"
								placeholder="Evaluator Name" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Date" disabled></th>
						</tr>
					</thead>
					<c:forEach var="evaluationrf" items="${listOfRe}">
						<tbody>
							<tr>
								<%-- <td>${evaluationrf.id}</td> --%>
								<td>${evaluationrf.residentName}</td>
								<%-- <td>${evaluationrf.residentDate}</td> --%>
								<td>${evaluationrf.residentRank}</td>
								<td>${evaluationrf.medicalKnowledge}</td>
								<!-- <td>${evaluationrf.mkComment}</td> -->
								<td>${evaluationrf.technicalSkills}</td>
								<!-- <td>${evaluationrf.tsComment}</td> -->
								<td>${evaluationrf.teamWork}</td>
								 <!--<td>${evaluationrf.twComment}</td> -->
								<td>${evaluationrf.leadership}</td>
								<!-- <td>${evaluationrf.lsComment}</td> -->
								<td>${evaluationrf.professionalism}</td>
								<!-- <td>${evaluationrf.pfComment}</td> -->
								<%-- <td>${evaluationrf.evaluationComment}</td> --%>
								<%-- <td>${evaluationrf.goalsComment}</td> --%>
								<td>${evaluationrf.evaluatorName}</td>
								<td>${evaluationrf.evaluatorDate}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>