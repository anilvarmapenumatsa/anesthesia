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
				<h2 class="ac-ln-title">Evaluation</h2>
				<div class="ac-ln-menu">
					<div class="ac-ln-menu-tray">
						<ul class="ac-ln-menu-items">
							<li class="ac-ln-menu-item"><span
								class="ac-ln-menu-link current" role="link" aria-disabled="true">Evaluation
									Form</span></li>
							<li class="ac-ln-menu-item"><a
								href="/SpringSecurity/resultsofresidentevaluation"
								class="ac-ln-menu-link">Summary</a></li>
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
		<div class="row">
			<section>
				<div class="wizard">
					<div class="wizard-inner">
						<div class="connecting-line"></div>
						<ul class="nav nav-tabs" role="tablist" style="padding-top: 25px;">

							<li role="presentation" class="active"><a href="#step1"
								data-toggle="tab" aria-controls="step1" role="tab"
								title="Resident Information"> <span class="round-tab">
										<i class="glyphicon glyphicon-folder-open"></i>
								</span>
							</a></li>

							<li role="presentation" class="disabled"><a href="#complete"
								data-toggle="tab" aria-controls="complete" role="tab"
								title="Complete"> <span class="round-tab"> <i
										class="glyphicon glyphicon-ok"></i>
								</span>
							</a></li>

						</ul>
					</div>

					<form:form action="saveresidentsimulationevaluationform"
						method="post" modelAttribute="evaluationrf">
						<div class="tab-content">
							<div class="tab-pane active" role="tabpanel" id="step1">
								<form:hidden path="id" />
								<h3>Resident Information</h3>
								<p>
									<br />
								</p>
								<div class="bootstrap-iso">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="form-group ">
													<label class="control-label "> Name </label>
													<form:input path="residentName" class="form-control"
														id="residentName" name="residentName" type="text" />
												</div>
												<div class="form-group ">
													<label class="control-label "> Date </label>
													<div class="input-group">
														<div class="input-group-addon">
															<i class="fa fa-calendar"> </i>
														</div>
														<form:input path="residentDate" class="form-control"
															id="residentDate" name="residentDate"
															placeholder="MM/DD/YYYY" type="text" />
													</div>
												</div>
												<div class="form-group ">
													<label class="control-label "> Rank </label>
													<form:select path="residentRank"
														class="select form-control" id="residentRank"
														name="residentRank">
														<option selected>Open this rank menu</option>
														<option value="PGY-1">PGY-1</option>
														<option value="CA-1">CA-1</option>
														<option value="CA-2">CA-2</option>
														<option value="CA-3">CA-3</option>
													</form:select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br />
								<%-- <div class="form-group ">
									<label class="control-label " style="padding-right: 10px;">
										Medical Knowledge </label>
									<form:radiobuttons class="form-check-input" items="${grademk}"
										path="medicalKnowledge"></form:radiobuttons>
									<form:radiobutton path="medicalKnowledge" value="Poor"
										label="Poor" class="form-check-input"/>
									<form:radiobutton path="medicalKnowledge" value="F"
										label="Female" class="form-check-input"/>
								</div> --%>
								<div class="form-group" id="div_medicalKnowledge">
									<label class="control-label col-sm-2 requiredField"
										for="medicalKnowledge"> Medical Knowledge <span
										class="asteriskField"> * </span>
									</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input
											name="medicalKnowledge" type="radio" value="Poor" /> Poor
										</label> <label class="radio-inline"> <input
											name="medicalKnowledge" type="radio" value="Fair" /> Fair
										</label> <label class="radio-inline"> <input
											name="medicalKnowledge" type="radio" value="Satisfactory" />
											Satisfactory
										</label> <label class="radio-inline"> <input
											name="medicalKnowledge" type="radio" value="Good" /> Good
										</label> <label class="radio-inline"> <input
											name="medicalKnowledge" type="radio" value="Excellent" />
											Excellent
										</label>
									</div>
								</div>
								<div class="form-group ">
									<form:textarea class="form-control" cols="20" id="mkComment"
										path="mkComment" name="mkComment" rows="2"
										placeholder="comments (Optional)"></form:textarea>
								</div>
								<%-- <div class="form-group ">
									<label class="control-label "> Technical Skills </label>
									<form:radiobuttons items="${gradets}" path="technicalSkills"></form:radiobuttons>
								</div> --%>
								<div class="form-group" id="div_technicalSkills">
									<label class="control-label col-sm-2 requiredField"
										for="technicalSkills"> Technical Skills <span
										class="asteriskField"> * </span>
									</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input
											name="technicalSkills" type="radio" value="Poor" /> Poor
										</label> <label class="radio-inline"> <input
											name="technicalSkills" type="radio" value="Fair" /> Fair
										</label> <label class="radio-inline"> <input
											name="technicalSkills" type="radio" value="Satisfactory" />
											Satisfactory
										</label> <label class="radio-inline"> <input
											name="technicalSkills" type="radio" value="Good" /> Good
										</label> <label class="radio-inline"> <input
											name="technicalSkills" type="radio" value="Excellent" />
											Excellent
										</label>
									</div>
								</div>
								<div class="form-group ">
									<form:textarea class="form-control" cols="20" id="tsComment"
										path="tsComment" name="tsComment" rows="2"
										placeholder="comments"></form:textarea>
								</div>
								<%-- <div class="form-group ">
									<label class="control-label "> Team Work </label>
									<form:radiobuttons items="${gradetw}" path="teamWork"></form:radiobuttons>
								</div> --%>
								<div class="form-group" id="div_teamWork">
									<label class="control-label col-sm-2 requiredField"
										for="teamWork"> Team Work <span class="asteriskField">
											* </span>
									</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input name="teamWork"
											type="radio" value="Poor" /> Poor
										</label> <label class="radio-inline"> <input name="teamWork"
											type="radio" value="Fair" /> Fair
										</label> <label class="radio-inline"> <input name="teamWork"
											type="radio" value="Satisfactory" /> Satisfactory
										</label> <label class="radio-inline"> <input name="teamWork"
											type="radio" value="Good" /> Good
										</label> <label class="radio-inline"> <input name="teamWork"
											type="radio" value="Excellent" /> Excellent
										</label>
									</div>
								</div>
								<div class="form-group ">
									<form:textarea class="form-control" cols="20" id="twComment"
										path="twComment" name="twComment" rows="2"
										placeholder="comments"></form:textarea>
								</div>
								<%-- <div class="form-group ">
									<label class="control-label "> Leadership </label>
									<form:radiobuttons items="${gradels}" path="leadership"></form:radiobuttons>
								</div> --%>
								<div class="form-group" id="div_leadership">
									<label class="control-label col-sm-2 requiredField"
										for="leadership"> Leadership <span
										class="asteriskField"> * </span>
									</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input name="leadership"
											type="radio" value="Poor" /> Poor
										</label> <label class="radio-inline"> <input name="leadership"
											type="radio" value="Fair" /> Fair
										</label> <label class="radio-inline"> <input name="leadership"
											type="radio" value="Satisfactory" /> Satisfactory
										</label> <label class="radio-inline"> <input name="leadership"
											type="radio" value="Good" /> Good
										</label> <label class="radio-inline"> <input name="leadership"
											type="radio" value="Excellent" /> Excellent
										</label>
									</div>
								</div>
								<div class="form-group ">
									<form:textarea class="form-control" cols="20" id="lsComment"
										path="lsComment" name="lsComment" rows="2"
										placeholder="comments"></form:textarea>
								</div>
								<%-- <div class="form-group ">
									<label class="control-label "> Professionalism </label>
									<form:radiobuttons items="${gradepf}" path="professionalism"></form:radiobuttons>
								</div> --%>
								<div class="form-group" id="div_professionalism">
									<label class="control-label col-sm-2 requiredField"
										for="professionalism"> Professionalism <span
										class="asteriskField"> * </span>
									</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input
											name="professionalism" type="radio" value="Poor" /> Poor
										</label> <label class="radio-inline"> <input
											name="professionalism" type="radio" value="Fair" /> Fair
										</label> <label class="radio-inline"> <input
											name="professionalism" type="radio" value="Satisfactory" />
											Satisfactory
										</label> <label class="radio-inline"> <input
											name="professionalism" type="radio" value="Good" /> Good
										</label> <label class="radio-inline"> <input
											name="professionalism" type="radio" value="Excellent" />
											Excellent
										</label>
									</div>
								</div>
								<div class="form-group ">
									<form:textarea class="form-control" cols="20" id="pfComment"
										path="pfComment" name="pfComment" rows="2"
										placeholder="comments"></form:textarea>
								</div>
								<br />
								<div class="form-group ">
									<label class="control-label "> Additional Comments </label>
									<form:textarea class="form-control" cols="20"
										id="evaluationComment" path="evaluationComment"
										name="evaluationComment" rows="5" placeholder="comments"></form:textarea>
								</div>
								<div class="form-group ">
									<label class="control-label "> Goals </label>
									<form:textarea class="form-control" cols="20" id="goalsComment"
										path="goalsComment" name="goalsComment" rows="5"
										placeholder="comments"></form:textarea>
								</div>
								<br />
								<div class="bootstrap-iso">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-6 col-sm-6 col-xs-12">
												<div class="form-group ">
													<label class="control-label "> Evaluator Name </label>
													<form:input path="evaluatorName" class="form-control"
														id="evaluatorName" name="evaluatorName" type="text" />
												</div>
												<div class="form-group ">
													<label class="control-label " for="date"> Date </label>
													<div class="input-group">
														<div class="input-group-addon">
															<i class="fa fa-calendar"> </i>
														</div>
														<form:input path="evaluatorDate" class="form-control"
															id="evaluatorDate" name="evaluatorDate"
															placeholder="MM/DD/YYYY" type="text" />

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<ul class="list-inline pull-right">
									<li><button type="button"
											class="btn btn-primary btn-info-full next-step">Save
											and continue</button></li>
								</ul>
							</div>
							<div class="tab-pane" role="tabpanel" id="complete">
								<h3>Complete</h3>
								<p>You have successfully completed, please submit.</p>
								<input class="btn btn-info" type="submit" value="Submit">
							</div>
							<div class="clearfix"></div>
						</div>
					</form:form>
				</div>
			</section>
		</div>
	</div>
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