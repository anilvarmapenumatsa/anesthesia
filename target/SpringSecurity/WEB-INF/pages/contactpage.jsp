<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script src="<c:url value="/bootstrapjs/jquery-3.2.1.js" />"></script>
<script src="<c:url value="/bootstrapjs/bootstrap.js" />"></script>

<link href="<c:url value="/bootstrapcss/bootstrap.css" />" rel="stylesheet">
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
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
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
											<p class="text-left small">@gmail.com</p>
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
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	   <div class="container">    
                <div class="jumbotron">
                  <div class="row">
                      <div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
                          <img src="https://www.svgimages.com/svg-image/s5/man-passportsize-silhouette-icon-256x256.png" alt="stack photo" class="img">
                      </div>
                      <div class="col-md-8 col-xs-12 col-sm-6 col-lg-8">
                          <div class="container" style="border-bottom:1px solid black">
                            <h2>Vijay Devabhaktuni, Ph.D., P.Eng.</h2>
                          </div>
                            <hr>
                          <ul class="container details">
                            <li><p><span class="glyphicon glyphicon-earphone one" style="width:50px;"></span>(419) 530-8172</p></li>
                            <li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span>Vijay.Devabhaktuni@utoledo.edu</p></li>
                            <li><p><span class="glyphicon glyphicon-map-marker one" style="width:50px;"></span>University of Toledo</p></li>
                            <li><p><span class="glyphicon glyphicon-new-window one" style="width:50px;"></span><a href="https://www.eng.utoledo.edu/eecs/faculty_web/~vdevabhaktuni/">Profile</p></a>
                          </ul>
                      </div>
                      </div>
                  </div>
                </div>
                
                
</body>
</html>