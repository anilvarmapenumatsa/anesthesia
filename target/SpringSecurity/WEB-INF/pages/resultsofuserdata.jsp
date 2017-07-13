<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Employee List</h1>
		
		<table border="1">

			<th>Name</th>
			<th>Email</th>
			<th>Address</th>

			<c:forEach var="userInfo" items="${listOfUserData}">
				<tr>

					<td>${userInfo.username}</td>
					<td>${userInfo.password}</td>
					<td>${userInfo.enabled}</td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>