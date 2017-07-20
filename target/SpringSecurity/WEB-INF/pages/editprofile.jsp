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

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-8 col-md-offset-2 column">
				<form:form action="updateprofile" method="post"
					modelAttribute="editprofile">
					<form:hidden path="id" />
					<form:hidden path="username" />
					<div class="form-group ">
						<label class="control-label " for="firstname""> First Name
						</label>
						<form:input class="form-control" id="firstname" name="firstname"
							type="text" path="firstname" />
					</div>
					<div class="form-group ">
						<label class="control-label " for="lastname"
							style="padding-top: 10px;"> Last Name </label>
						<form:input class="form-control" id="lastname" name="lastname"
							type="text" path="lastname" style="padding-top: 10px;" />
					</div>
					<div class="form-group ">
						<label class="control-label " for="emaild"
							style="padding-top: 10px;"> Email </label>
						<form:input class="form-control" id="emaild" name="emaild"
							type="text" path="emaild" style="padding-top: 10px;" />
					</div>
					<div class="form-group ">
						<label class="control-label " for="contactnumber"
							style="padding-top: 10px;"> Contact Number </label> <input
							class="form-control" id="contactnumber" name="contactnumber"
							type="text" style="padding-top: 10px;" />
					</div>
					<div class="form-group" id="div_sex">
						<label class="control-label " for="sex"> Sex </label> <label
							class="radio-inline"> <input name="sex" type="radio"
							value="Male" /> Male
						</label> <label class="radio-inline"> <input name="sex"
							type="radio" value="Female" /> Female
						</label>
					</div>
					<!-- <div class="form-group" id="div_designation">
								<label class="control-label col-sm-2" for="designation">
									Designation </label>
								<div class="col-sm-10">
									<label class="radio-inline"> <input name="designation"
										type="radio" value="Student" /> Student
									</label> <label class="radio-inline"> <input name="designation"
										type="radio" value="Lecturer" /> Lecturer
									</label>
								</div>
							</div> -->
					<div class="form-group ">
						<label class="control-label " for="address1"> Address1 </label>
						<form:input class="form-control" id="address1" name="address1"
							type="text" path="address1" />
					</div>
					<div class="form-group ">
						<label class="control-label " for="address2"> Address2 </label>
						<form:input class="form-control" id="address2" name="address2"
							type="text" path="address2" />
					</div>
					<div class="form-group ">
						<label class="control-label " for="address3"> Address3 </label>
						<form:input class="form-control" id="address3" name="address3"
							type="text" path="address3" />
					</div>
					<div class="form-group ">
						<label class="control-label " for="dateofjoin"> Date of
							join </label>
						<form:input class="form-control" id="dateofjoin" name="dateofjoin"
							placeholder="MM/DD/YYYY" type="text" path="dateofjoin" />
					</div>
					<div class="form-group">
						<div>
							<button class="btn btn-primary " name="submit" type="submit">
								Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>