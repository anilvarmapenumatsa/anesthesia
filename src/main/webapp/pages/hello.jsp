<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>
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
	<!-- <div class = "fill">
	<a href="/SpringSecurity/welcome"><img
				src="/SpringSecurity/images/UTMCfront.JPG"> </a>
				</div> -->
	<div class="fill"
		style="background-image: url('/SpringSecurity/images/UTMCfront.JPG');"></div>
	<div class="container">

		<p>The Department of Anesthesiology at the University of Toledo
			College of Medicine and Life Sciences strives to improve health in
			the communities and region we serve. We do this by educating
			excellent clinicians and scientists, by providing patient centered
			and high-quality care and by producing nationally recognized research
			in focused area. We are dedicated to providing the best possible
			experiences for our students, residents, and patients, as well as
			mentoring for faculty development.</p>

		<h3>
			<strong><span style="font-size: large;">Education</span></strong>
		</h3>


		<p>The University of Toledo Department of Anesthesiology has a
			fully accredited residency training program. Our program is approved
			for 6 positions each training year. The residents will gain
			significant experience in regional anesthesia (especially peripheral
			nerve blockade) and kidney transplantation. Because of the number of
			medical students on the anesthesiology clerkship and
			anesthesiology/pain medicine selective of the surgery clerkship,
			anesthesiology residents will have many opportunities to develop
			their teaching skills as they help guide the development of these
			students. Other teaching opportunities include interacting with
		    "off-service" residents, paramedic students, and respiratory
			therapist students who rotate through our department.</p>

		<h3>
			<strong><span style="font-size: large;">Research</span></strong>
		</h3>

		<p>Several of the faculty members have significant research
			experience in clinical and basic science research. Residents and
			students have the opportunity to participate in these projects.
			Collaborative projects with other Health Science and Main Campus
			departments are emphasized.</p>

		<h3>
			<strong><span style="font-size: large;">Faculty</span></strong>
		</h3>

		<p>The Department has faculty from diverse backgrounds, giving our
			learners a broad perspective. Subspecialty training in Cardiac,
			Neuro, Pain, Critical Care, and Management provide unique
			perspectives that enhance the educational and collaboration
			opportunities for the Department. Faculty development is enhanced
			through educational programs of the University as well as mentoring
			by senior members of the faculty.</p>

		<h3>
			<strong><span style="font-size: large;">Clinical Care</span></strong>
		</h3>

		<p>
			<strong>Surgical Anesthesia</strong>- The Department of
			Anesthesiology prides itself on delivering excellent clinical care
			and service for our colleagues. With 12 rooms in the main operating
			room suite and 4 more in the George Isaac Minimally Invasive Surgery
			Center, there is an active clinical service. Additionally, the
			Department serves offsite locations such as in an intra-operative
			radiation therapy suite, cath lab, CT and MRI suites, and endoscopy.
		</p>

		<p>
			<strong>Critical Care</strong>- The Department is a major participant
			in the Surgical ICU, which is staffed by our residents along with
			faculty from the departments of surgery and anesthesiology.
		</p>

		<p>
			<strong>Pain Medicine</strong>- The Pain Medicine Center is a busy,
			growing service. Staffed by board-certified specialists in Pain
			Medicine, it provides a wide range of services in chronic pain
			ranging from consultations to injections/blocks to implanted pumps
			and stimulators to treatment for acute pain (Acute Pain Service).
		</p>

		<p>
			<strong>Preoperative Evaluation Center</strong>- Staffed by highly
			trained nurses and directed by the Department of Anesthesiology, the
			PEC provides a place for comprehensive pre-anesthetic assessment of
			patients.It is also provides invaluable experience in
			peri-operative medicine for our residents.
		</p>

	</div>

</body>
</html>