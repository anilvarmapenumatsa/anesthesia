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
				<h2 class="ac-ln-title">Users</h2>
				<div class="ac-ln-menu">
					<div class="ac-ln-menu-tray">
						<ul class="ac-ln-menu-items">
							<li class="ac-ln-menu-item"><a
								href="/SpringSecurity/userform" class="ac-ln-menu-link">User
									Form</a></li>
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
		<div class="fw-body" style="padding-top: 25px;">
			<table id="example" class="display responsive nowrap" cellspacing="0"
				width="100%">
				<thead>
					<tr>
						<th>User name</th>
						<th>Password</th>
						<th>Enabled</th>
						<th>Action</th>
					</tr>
				</thead>
				<c:forEach var="userInfo" items="${listOfUserData}">
					<tbody>
						<tr>
							<td>${userInfo.username}</td>
							<td>${userInfo.password}</td>
							<td>${userInfo.enabled}</td>
							<td><a class="btn btn-info"
								href="deleteUserInfo?username=${userInfo.username}">Delete</a></td>
							<%-- <td><a href="#" class="btn btn-danger btn-xs"
								data-toggle="modal" data-target="#delete"><span
									class="glyphicon glyphicon-trash"></span></a>
								<div class="modal fade" id="delete" tabindex="-1" role="dialog"
									aria-labelledby="delete" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">UserName :
													${userInfo.username}</h4>
											</div>
											<div class="modal-body">
												<h3>Are you sure you want to delete this Record?</h3>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">
													<span class="glyphicon glyphicon-remove"></span>No
												</button>
												<a class="btn btn-info"
													href="deleteUserInfo?username=${userInfo.username}"><span
													class="glyphicon glyphicon-ok-sign"></span>Yes</a>
											</div>
										</div>
									</div>
								</div></td> --%>
						</tr>

					</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
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