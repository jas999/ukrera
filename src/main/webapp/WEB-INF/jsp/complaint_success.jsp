<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>


<link rel="shortcut icon" href="images/Seal_of_Uttarakhand.ico"
	type="image/x-icon">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src='js/script.js' type='text/javascript'></script>
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
<script src="complaintjs/complaint.js"></script>


</head>

<body>

	
		<!--Banner-->


		<div class="breadcrumb">Complaint Successfully Registered</div>


		
		

				<!--Inner wrapper stsrt here-->
				<div class="inner_wrapper">



					<h1>Complaint Registration Successfull</h1>
					<div class="border">
						<div class="orange"></div>
						<div class="black"></div>
					</div>




					

					<div class="inner_wrapper">

						<h1>
							<span>Your Complaint has been registered with us. 
							You complaint registration Number is  :  <c:out value="${registrationNumber}"></c:out> </span>
						</h1>
						



						
					</div>





					



					<!-- container end here-->

				</div>
			



</body>




</html>