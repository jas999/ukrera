<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE tiles-definitions PUBLIC "-//Apache Software Foundation//DTD Tiles Configuration 2.1//EN" "http://tiles.apache.org/dtds/tiles-config_2_1.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="images/Seal_of_Uttarakhand.ico"
	type="image/x-icon">
<title></title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.ticker.js"></script>
<script src="js/site.js"></script>
<script src="js/common.js"></script>
<script src="js/commdropdown.js"></script>

<script src="js/validation.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.min.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<script>
	
</script>
</head>

<body>
	<header id="header"> <%@ taglib
		uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="container-fluid">
		<!--Top Bar-->
		<div class="row">
			<div class="col-md-12 colsm-12 col-xs-12">


				<div class="top-s pull-right">


					<ul class="font-zoom">
						<li class="suare-icons a-plus icon-plus clsButton "
							id="btnFontIncrease"><a href="#"><span
								class="accebilility_icon">A+</span> </a></li>
						<li class="round-icons a-normal icon-normal clsButton "
							id="bntFontNormal"><a href="#"><span
								class="accebilility_icon">A&nbsp;</span> </a></li>
						<li class="round-icons a-minus icon-minus clsButton "
							id="bntFontDecrease"><a href="#"><span
								class="accebilility_icon">A- </span> </a></li>
						<li class="acceblity"><a href="#"><span
								class="accebilility_icon disabbil">A </span> </a></li>
					</ul>
				</div>




			</div>
		</div>
		<!--Logo Header-->
		<div class="row">
			<div class="top-logo">
				<a href='/home'>

					<div class="col-md-6 col-sm-6 col-xs-6">

						<div class="logo-sec">&nbsp;</div>
					</div>
				</a>
				<!-- <div class="col-md-6 col-sm-6 col-xs-6 ut_name">
				
				
					</div> -->
				<div class="clearfix"></div>
			</div>
		</div>
		<!--Nav-->

	</div>










	</header>




	=
	<!--News Ticker-->
	<div class=" container-fluid">
		<div class="row">
			<table align="center" border="1" style="font-size: 12px">
				<tr>
					<th>Complaint ID</th>
					<th>Complaint Name</th>
					<th>Contact Number</th>
					<th></th>
				</tr>

				<c:forEach items="${complaintList}" var="list">
					<tr>
						<td>${list.id}</td>
						<td>${list.name}</td>
						<td>${list.contactNo}</td>
						<td><a target="_blank" href="/viewcomplaint?id=${list.id}">view</a></td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
	<!--Advance Search Bar-->
	<div class="container">
		<div class="row">



			<div class="col-md-12 col-sm-12 col-xs-12">


				<div class="clearfix"></div>



			</div>
		</div>
	</div>








</body>
</html>