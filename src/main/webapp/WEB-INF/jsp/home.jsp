<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE tiles-definitions PUBLIC "-//Apache Software Foundation//DTD Tiles Configuration 2.1//EN" "http://tiles.apache.org/dtds/tiles-config_2_1.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon"
	href="images/Seal_of_Uttarakhand.ico"
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
	<header id="header"> 
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="container-fluid">
		<!--Top Bar-->
		<div class="row">
			<div class="col-md-12 colsm-12 col-xs-12">


				<div class="top-s pull-right">
					<%--  <ul class="social_icon">
			    <li ><a href="#"><img src="<%=request.getContextPath() %>images/call-icon.jpg" width="23" height="22" /></a></li> 
		        <li><a href="#"><img src="<%=request.getContextPath() %>images/head-phone-icon.jpg" width="23" height="22" /></a></li> 
		        <li><a href="#"><img src="<%=request.getContextPath() %>images/face-book.jpg" width="22" height="22" alt="facebook" /></a></li> 
		        <li><a href="#"><img src="<%=request.getContextPath() %>images/linkedin.jpg" width="23" height="22" alt="Linkedin" /></a></li> 
		        <li><a href="#"><img src="<%=request.getContextPath() %>images/twitter-icon.jpg" alt="twitter" width="22" height="22" /></a></li> 
          </ul> --%>

					<%-- <ul class="lang">
				<li><a href="#"><img src="<%=request.getContextPath() %>images/hindi-icon.jpg" width="22" height="22" /></a></li> 
        	</ul> --%>

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
		<div class="row">
			<nav class="navbar navbar-default navbar-static-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">



						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">About Us <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/aboutUs">What
										is RERA? </a></li>
								<li><a href="#">Organizational Structure </a></li>
								<li><a
									href="/functionsAndServicesPage">Functions
										And Services </a></li>
								<li><a href="/contactUsPage">Contact
										Us </a></li>
								<li><a
									href="/bankDetailsPage">Bank
										Details </a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Acts & Rules <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="staticpage/Real_Estate_Act.pdf"
									target="_blank">Real Estate Act, 2016</a></li>
								<li><a
									href="<%=request.getContextPath() %>staticpage/General_Rules_2016.pdf"
									target="_blank">General RERA Rules </a></li>
								<li><a
									href="<%=request.getContextPath() %>staticpage/Agreement_for_Sale_2016.pdf"
									target="_blank">Agreement Of Sale </a></li>


							</ul></li>

						<li><a
							href="staticpage/FAQ.pdf"
							target="_blank">FAQ</a></li>

						<li><a href="#contact">Order/Notice</a></li>


						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> Registered <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="/viewRegisteredAgents">List
										Of Agents </a></li>
								<li><a
									href="/viewRegisteredProjects">List
										Of Projects </a></li>
								<li><a
									href="staticpage/Agents.pdf">Agents
								</a></li>
								<li><a
									href="staticpage/Projects.pdf">Projects
								</a></li>

							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> Defaulters <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="/viewDefaulterAgents">List
										Of Agents </a></li>
								<li><a
									href="/viewDefaulterProjects">List
										Of Projects </a></li>


							</ul></li>

						<li class="dropdown"><a href="#" style="border-right: 0px;"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">My Profile <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="/agent/dashboard">Basic
										Detail </a></li>
								<li><a
									href="/agent/agentDocumentPage">Uploaded
										Documents</a></li>
								<li><a
									href="/agent/paymentDetailsPage">Payment
										Details</a></li>
								<li><a
									href="/agent/projectListPage">Project
										List</a></li>
								<li><a
									href="/agent/openRenewalForm">Registration
										Renewal </a></li>
								<li><a
									href="<%=request.getContextPath() %>/agentCert?AID=${agent.agentRegistrationID}"
									target="_blank">View Certificate</a></li>
								<li><a
									href="/agent/changePasswordForm">Change
										Password</a></li>


							</ul></li>

						<li><a href="/logout">Logout</a></li>

						


						<li class="dropdown"><a href="#" style="border-right: 0px;"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">My Profile <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="/project/dashboard">Promoter
										Details </a></li>
								<li><a
									href="/project/projectDocumentsPage">Project
										Documents</a></li>
								<li><a
									href="/project/projectPhotosPage">Project
										Photos</a></li>

								<li><a
									href="/project/projectDetailsPage">Project
										Details </a></li>
								<li><a
									href="/project/paymentDetailsPage">Payment
										Details </a></li>

								<li><a
									href="/project/developmentDetailsPage">Development
										Details</a></li>
								<li><a
									href="/project/projectVendors">Associated
										Vendors Details</a></li>
								<li><a
									href="/project/openRegistrationExtForm">Extend
										Project Registration</a></li>
								<li><a target="_blank"
									href="#">View
										Certificate</a></li>
								<li><a
									href="/project/changePasswordForm">Change
										Password</a></li>


							</ul></li>
						<li><a href="/logout">Logout</a></li>

						


						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Login <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="/loginPage">Login
										as Authority</a></li>
								<li><a href="/loginPage">Login
										as Agent/Promoter</a></li>

							</ul></li>




						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Login <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="/authorityLoginPage">Login
										as Authority</a></li>
								<li><a href="/loginPage">Login
										as Agent/Promoter</a></li>

							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Help <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="staticpage/AgentHelp.pdf">Agent</a></li>
								<li><a
									href="staticpage/ProjectHelp.pdf">Project</a></li>

							</ul></li>
					

					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			</nav>
		</div>
	</div>










	</header>

	<section id="sidemenu"> <tiles:insertAttribute name="menu" />
	</section>

	<section id="site-content"> <!--Banner--> 

	<div class="container-fluid">
		<div class="row">
			<img src="images/banner.jpg" class="img-responsive" />
		</div>

	</div>
	<!--News Ticker-->
	<div class=" container-fluid">
		<div class="row">
			<div class="news_tricker">
				<div class="col-md-2 col-sm-2 col-xs-12 no-padding">
					<div class="news_cover">
						<h2>WHAT'S NEW</h2>
					</div>
				</div>
				<div class="col-md-10 col-sm-10 col-xs-12">

					<div class="content">


						<ul id="js-news" class="js-hidden">


							<li class="news-item">A notification has been issued by
								MoHUPA on 20th April 2017 notifying on 32 sections of Real
								Estate Act, 2016 & they will come into force from 1st May.</li>

							<li class="news-item">Technology SubMission under PMAY has
								been incorporated to implement new construction technologies &
								techniques.</li>

							<li class="news-item">Real Estate Act, 2016 aims to infuse
								accountability & transparency in the real estate sector.</li>

							<li class="news-item">More than 28,000 beneficiaries have
								availed the benefits of CLSS under PMAY.</li>

							<li class="news-item">Regional consultation with eastern and
								norther eastern states on implementation of real estate
								(Regulation & Development) Act, 2016 was held on 27th March,
								2017 in Guwahati.</li>

							<li class="news-item">Round table discussion with
								stakeholders on Real Estate Sector on 23rd March, 2017, New
								Delhi.</li>
							<li class="news-item">Meeting with States/ UTs on the
								implementation of Real Estate (Regulation & Development) Act
								2016 was held on 17th January, 2017.</li>
							<li class="news-item">Rera help desk number : +91 8859901717
							</li>


						</ul>




					</div>



				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--Advance Search Bar-->
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="advanced-seach">
					<div
						class="flipkart-navbar-search smallsearch col-sm-12 col-xs-12 dropdown">
						<div class="row">
							<div class="col-md-10 col-sm-12">
								<form action='search' method='post' name='searchForm'
									onsubmit="if(this.searchTxt=='') return false;">
									<div class="input-group">
										<input type="hidden" name="startFrom" value="0" /> <input
											id="password" type="text" class="form-control"
											name="searchTxt"
											placeholder="Search project name, Builder or Agent">
										<span class="input-group-addon">
											<button class="flipkart-navbar-button btn simp-search">Search
											</button>
										</span>
									</div>
								</form>
							</div>
							<div class="col-md-2 col-sm-12">
								<button type="button"
									class="flipkart-navbar-button btn simp-search"
									data-toggle="modal" data-target="#searchPopup">Advanced
									Search</button>
							</div>
						</div>
						<!-- <form action='advanceSearch' method='post' name='advSearch'">
	<div class="input-group">
							<input type="hidden" name="startFrom" value="0" />
							<input type="radio" name="searchType" value="PROJECT" checked>Project</input>
							<input type="radio" name="searchType" value="AGENT">Agent</input>
								<input id="adSearch" type="text" class="form-control"
									name="advSearch"
									placeholder="Search"> <span
									class="input-group-addon"> onclick="getSearchDetails()
									<button class="flipkart-navbar-button btn simp-search">Advanced Search
									</button>	
							<div class = AdvSearchFields></div>					
								
							
							</div>
</form> -->

						<!-- <input id="adSearch" type="text" class="form-control"
									name="advSearch"
									placeholder="Search"> <span
									class="input-group-addon"> 
									<button class="flipkart-navbar-button btn simp-search" onclick="getSearchDetails()">Advanced Search
									</button>	</span> -->
						<!-- Modal -->
						<div id="searchPopup" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Advance Search</h4>
									</div>
									<div class="modal-body">
										<div class="searchRadioBtn">
											<label><input type="radio" name="searchType"
												value="PROJECT" onclick="getSearchDetails()"><span>Project</span></input></label>
											<label><input type="radio" name="searchType"
												value="AGENT" onclick="getSearchDetails()"><span>Agent</span></input></label>
										</div>
										<div class=AdvSearchFields></div>
									</div>
									<!--  <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									      </div> -->
								</div>

							</div>
						</div>



					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="clearfix"></div>



	</div>
	</div>
	</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ch-person">
					<a href="initProjectRegistration">
						<div class="col-md-6 col-sm-12 col-xs-4 no-padding img-sec">
							<img src="_images/pic1.jpg" width="151" height="243"
								class="img-responsive" />
						</div>
						<div class="col-md-6 col-sm-12 col-xs-8 no-padding info-sec">
							<h4>
								PROJECT <br> REGISTRATION
							</h4>

							<p></p>
							<a>Promoters/Developers<br> may click here to<br>

								register their project
							</a>
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ch-person">
					<a href="initAgentRegistration">
						<div class="col-md-6 col-sm-12 col-xs-4 no-padding img-sec">
							<img src="_images/pic2.jpg" width="151" height="243"
								class="img-responsive" />
						</div>
						<div class="col-md-6 col-sm-12 col-xs-8 no-padding info-sec">
							<h4 class="text-success">
								AGENT<br> REGISTRATION
							</h4>

							<a>Agents<br> may click here to<br> register for
								project
							</a>
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="ch-person">
					<a href="complaintform">
						<div
							class="col-md-6 col-sm-12 col-xs-4 no-padding img-sec img-sec">
							<img src="_images/pic3.jpg" width="151" height="243"
								class="img-responsive" />
						</div>
						<div class="col-md-6 col-sm-12 col-xs-8 no-padding info-sec">
							<h4 class="text-primary">
								COMPLAINT<br> REGISTRATION
							</h4>

							<a>Users<br> may click here to <br> register their
								complaints
							</a>

						</div>
						<div class="clearfix"></div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<script>
		function getSearchDetails() {

			/* 	alert("yes");
			 alert($('input:radio[name=searchType]:checked').val()); */
			var searchType = $('input:radio[name=searchType]:checked').val();
			/* 	var sid=$(spn).attr('id');
			 var agentRegNo=$('#fldno'+sid).val();
			 */
			var content = "<form action='advanceSearchDetails' method='post' name='advSearchForm'><input type ='hidden' name ='advSearchType' value ='"+searchType+"'>";
			var box = "";
			var name = "";
			var boxClass = "";
			$
					.ajax({
						type : "GET",
						url : "getAdvanceSearchFields?searchType=" + searchType,
						/* data : "agentRegNo=" + agentRegNo+"&SID="+sid, */
						success : function(response) {
							console.log("response", response);
							var res = JSON.parse(response);
							$
									.each(
											res,
											function(index, value) {
												console.log(index + " "
														+ value.tableColumnName
														+ " " + value.dataType);
												name = value.tableColumnName;
												name = name.replace(/ /g, "_");
												console.log("NAME", name);
												if (value.dataType == "Integer") {
													box += '<select id="boxDropdown" name = "boxValue"><option value="g">></option><option value="l"><</option><option value="eq">=</option></select>';
													boxClass = "boxVal";
												}
												content += "<div class='formCntrl'><h5>"
														+ value.fieldName
														+ "</h5>"
														+ box
														+ "<input type='text' name = '" +name+ "' class='form-control "+boxClass+"' placeholder='Enter Value'></div>";

												box = "";
												boxClass = "";

											});
							content += "<input type='hidden' name='startFrom' value='0' />";
							content += "<button class='flipkart-navbar-button btn simp-search'>GO</button></form>";

							console.log("CheckC", content);
							$('div.AdvSearchFields').html(content);
						},

						error : function(e) {
							alert('Error: ' + e);
						}

					});

		}
	</script>

	<style>
.advanceSearchContainer .searchRadioBtn input[type="radio"] {
	margin-right: 10px;
	margin-top: 0px;
	vertical-align: middle;
}

.advanceSearchContainer .searchRadioBtn span {
	margin-right: 30px;
	vertical-align: middle;
}

.AdvSearchFields {
	margin-top: 20px;
}

.AdvSearchFields .formCntrl {
	margin-bottom: 15px;
}

.AdvSearchFields .formCntrl h5 {
	display: inline-block;
	width: 200px;
}

.AdvSearchFields .formCntrl .form-control {
	display: inline-block;
	width: 61%;
}

.AdvSearchFields .formCntrl .form-control.boxVal {
	width: 45%;
}

.AdvSearchFields .formCntrl select {
	height: 34px;
	width: 70px;
	margin-right: 20px;
}

#searchPopup .modal-header .modal-title {
	font-size: 18px !important;
	display: inline-block;
	margin-top: 0px;
	margin-bottom: 0px;
}

#searchPopup .modal-dialog {
	width: 600px;
}

.simp-search:focus {
	color: #fff;
}
</style>




	</section>



	<footer id="bfooter"> <tiles:insertAttribute name="bfooter" />
	</footer>
</body>
</html>