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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>
<script src="<c:url value="/bootstrapjs/jquery-1.11.3.min.js" />"></script>
<script src="<c:url value="/bootstrapjs/jquery.dataTables.min.js" />"></script>

<link href="<c:url value="/bootstrapcss/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/bootstrap-theme.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/applenavbar.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/jquery.dataTables.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/bootstrapcss/responsive.dataTables.min.css" />"
	rel="stylesheet">

<script
	src="<c:url value="/bootstrapjs/dataTables.responsive.min.js" />"></script>

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
				<h2 class="ac-ln-title">Evaluation</h2>
				<div class="ac-ln-menu">
					<div class="ac-ln-menu-tray">
						<ul class="ac-ln-menu-items">
							<li class="ac-ln-menu-item"><a
								href="/SpringSecurity/residentsimulationevaluationform"
								class="ac-ln-menu-link">Evaluation Form</a></li>
							<li class="ac-ln-menu-item"><span
								class="ac-ln-menu-link current" role="link" aria-disabled="true">Summary</span></li>

							<!-- <li class="ac-ln-menu-item"><a
								href="#/viewfullproductionsummary" class="ac-ln-menu-link">Reports</a>
							</li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>


	<div class="container">
		<!-- <div class="col-sm-12">
	<div class="col-sm-2"> -->
		<div class="fw-body" style="padding-top: 25px;">
			<table id="example" class="display responsive nowrap" cellspacing="0"
				width="100%">
				<thead>
					<tr>
						<th>Resident Name</th>
						<th>Form type</th>
						<th>Rank</th>
						<th>Medical Knowledge</th>
						<th>Technical Skills</th>
						<th>Team Work</th>
						<th>Leadership</th>
						<th>Professionalism</th>
						<th>Evaluator Name</th>
						<th>Date</th>
						<th>Medical Knowledge Comments</th>
						<th>Technical Skills Comments</th>
						<th>Team Work Comments</th>
						<th>Leadership Comments</th>
						<th>Professionalism Comments</th>
						<th>Additional Comments</th>
						<th>Goals</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="evaluationrf" items="${listOfRe}">
						<tr>
							<td>${evaluationrf.residentName}</td>
							<td>${evaluationrf.residentDate}</td>
							<td>${evaluationrf.residentRank}</td>
							<td>${evaluationrf.medicalKnowledge}</td>
							<td>${evaluationrf.technicalSkills}</td>
							<td>${evaluationrf.teamWork}</td>
							<td>${evaluationrf.leadership}</td>
							<td>${evaluationrf.professionalism}</td>
							<td>${evaluationrf.evaluatorName}</td>
							<td>${evaluationrf.evaluatorDate}</td>
							<td>${evaluationrf.mkComment}</td>
							<td>${evaluationrf.tsComment}</td>
							<td>${evaluationrf.twComment}</td>
							<td>${evaluationrf.lsComment}</td>
							<td>${evaluationrf.pfComment}</td>
							<td>${evaluationrf.evaluationComment}</td>
							<td>${evaluationrf.goalsComment}</td>
							<td><a class="btn btn-info"
								href="deleteEvaluationInformation?id=${evaluationrf.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- </div>
</div> -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>


	<sec:authorize access="hasRole('ROLE_ADMIN')">
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