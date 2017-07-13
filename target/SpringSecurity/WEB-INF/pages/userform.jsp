<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
	<div>
		<form:form action="saveUser" method="post" modelAttribute="userInfo">
			<div class="col-md-6 col-sm-6 col-xs-12">

				<form:hidden path="id" />

				<div class="form-group ">
					<label class="control-label "> username </label>
					<form:input path="username" />
				</div>

				<div class="form-group ">
					<label class="control-label "> password </label>
					<form:input path="password" />
				</div>


				<div class="form-group ">
					<label class="control-label "> enabled </label>
					<form:input path="enabled" class="form-control"
						id="enabled" name="enabled" type="text" />
				</div>
				
				<div class="form-group ">
					<label class="control-label "> role </label>
					<form:select path="role" class="select form-control"
						id="role" name="role">
						<option value="ROLE_ADMIN">ROLE_ADMIN</option>
						<option value="ROLE_USER">ROLE_USER</option>
					</form:select>
				</div>

				<input class="btn btn-info" type="submit" value="Submit">

			</div>
		</form:form>
	</div>
</body>
</html>