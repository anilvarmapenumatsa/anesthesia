<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div align="center">
		<h1>List</h1>
		
		<table border="1">

			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Telephone</th>

			<c:forEach var="evaluationrf" items="${listOfRe}">
				<tr>

					<td>${evaluationrf.residentName}</td>
					<td>${evaluationrf.residentDate}</td>
					<td>${evaluationrf.medicalKnowledge}</td>
					<td>${evaluationrf.mkComment}</td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>