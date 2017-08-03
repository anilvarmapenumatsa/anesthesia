<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>

<link href="<c:url value="/bootstrapcss/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/bootstrapcss/bootstrap-theme.css" />"
	rel="stylesheet">

<link href="<c:url value="/resources/welcomepage.css" />"
	rel="stylesheet">
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
					<img src="<c:url value="/images/vdevabhaktuni.jpg"/>"
						alt="stack photo" class="img" />
				</div>
				<div class="col-md-8 col-xs-12 col-sm-6 col-lg-8">
					<div class="container" style="border-bottom: 1px solid black">
						<h2>Vijay Devabhaktuni, Ph.D., P.Eng.</h2>
					</div>
					<hr>
					<ul class="container details">
						<li><p>
								<span class="glyphicon glyphicon-earphone one"
									style="width: 50px;"></span>(419) 530-8172
							</p></li>
						<li><p>
								<span class="glyphicon glyphicon-envelope one"
									style="width: 50px;"></span>Vijay.Devabhaktuni@utoledo.edu
							</p></li>
						<li><p>
								<span class="glyphicon glyphicon-map-marker one"
									style="width: 50px;"></span>University of Toledo
							</p></li>
						<li><p>
								<span class="glyphicon glyphicon-new-window one"
									style="width: 50px;"></span><a
									href="https://www.eng.utoledo.edu/eecs/faculty_web/~vdevabhaktuni/">Profile </a></p>
					</ul>
				</div>
			</div>
		</div>
	</div>

	</body>
</html>