<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<form:form action="/login" modelAttribute="userMaster" method="post">


		<!--News Ticker-->
		<div class="container mar_top_20">
			<div class="col-md-6 col-md-offset-3">
				<!--main container start here-->
				<div class="Main_containner">

					<!--Inner wrapper stsrt here-->
					<div class="inner_wrapper">
						<h1>
							Agent/Promoter <span>Login</span>
						</h1>
						<div class="drop_shadow"></div>




						<div class="form-group  has-feedback ">
							<label for="inputEmail3" class="col-sm-3 control-label">Registration
								No.</label>
							<div class="col-sm-9">
								<span class="glyphicon glyphicon-user form-control-feedback"></span>
								<form:input path="registrationId"  type="text" class="form-control" name="registrationId"
									id="loginId" placeholder="Please Enter Your Registration No"></form:input>

							</div>
						</div>
						<div class="form-group has-feedback">
							<label for="inputPassword3" class="col-sm-3 control-label">Password
							</label>
							<div class="col-sm-9">
								<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								<form:input path="password" type="password" class="form-control" name="password"
									id="password" placeholder="Please Enter Your Password"></form:input>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
							
								<input name="btn1" class="btn-style" value="Login" type="submit" />&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="forgetPasswordBForm">Forgot your password?</a>
							</div>
						</div>

						<br> <br>



						<div class="clearfix"></div>
						<!--search list main end here-->
					</div>

				</div>


				<!--inner container end here-->
			</div>


		</div>

	</form:form>
	<!-- container end here-->
</body>
</html>