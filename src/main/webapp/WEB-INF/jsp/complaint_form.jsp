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
<script>
	function choosepaymentmethod(slct) {
		var val = $(slct).val();
		if (val == 'Payment Gateway') {
			$(".optionfld2").each(function() {
				$(this).hide();
			});
			document.paymenttrxForm1.action = 'redirectpaymentgateway';
		} else {
			$(".optionfld2").each(function() {
				$(this).show();
			});
			document.paymenttrxForm1.action = 'saveComplaint';
		}
	}

	function hideShow() {

		var interimOrderRequired1 = $(
				"input[name='interimOrderRequired']:checked").val()

		if (interimOrderRequired1 == "YES") {

			$('#interimOrderPrayed').show();
		}
		if (interimOrderRequired1 == "NO") {
			$('#interimOrderPrayed').hide();
		}
	}

	$('.input-images').imageUploader();
</script>

</head>

<body>

	<form:form action="saveComplaint" method="post"
		cssClass="form-horizontal" id="complaint"
		modelAttribute="complaintModel" name="paymenttrxForm11"
		enctype="multipart/form-data">

		<!--Banner-->


		<div class="breadcrumb">Home / Real Estate Complaint
			Registration</div>


		<!--News Ticker-->
		<div class="container">

			<!--main container start here-->
			<div class="Main_containner comp">

				<!--Inner wrapper stsrt here-->
				<div class="inner_wrapper">



					<h1>Complaint Registration Form</h1>
					<div class="border">
						<div class="orange"></div>
						<div class="black"></div>
					</div>




					<div class="inner_wrapper">
						<h1>
							Particulars of the <span>Complainant</span>
						</h1>
						<div class="drop_shadow"></div>
						<div class="clearfix"></div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Name :<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="name" cssClass="form-control input-sm"
									rel="txtTooltip" title="Only Alphabets are allowed"
									data-toggle="tooltip" data-placement="bottom" />
							</div>

							<label for="inputEmail3" class="col-sm-2 control-label">Contact
								Number <sup></sup>
							</label>
							<div class="col-sm-3">

								<form:input path="contactNo" cssClass="form-control input-sm"
									maxlength="12" rel="txtTooltip"
									title="Only Digits are allowed." data-toggle="tooltip"
									data-placement="bottom" />
							</div>



						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Email ID<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="email" cssClass="form-control input-sm"
									maxlength="50" rel="txtTooltip"
									title="Only 10 digits of mobile number is allowed."
									data-toggle="tooltip" data-placement="bottom" />
							</div>




							<label for="inputEmail3" class="col-sm-2 control-label">Fax
								<sup>*</sup>
							</label>
							<div class="col-sm-3">
								<form:input path="fax" cssClass="form-control input-sm"
									rel="txtTooltip"
									title="Only valid emailId is allowed.e.g:abc@xyz.com"
									data-toggle="tooltip" data-placement="bottom" />
							</div>



						</div>



						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Address Line 1<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="address1" cssClass="form-control input-sm"
									rel="txtTooltip"
									title="Only 10 digits of mobile number is allowed."
									data-toggle="tooltip" data-placement="bottom" />
							</div>




							<label for="inputEmail3" class="col-sm-2 control-label">Address
								Line 2 <sup>*</sup>
							</label>
							<div class="col-sm-3">
								<form:input path="address2" cssClass="form-control input-sm"
									rel="txtTooltip"
									title="Only valid emailId is allowed.e.g:abc@xyz.com"
									data-toggle="tooltip" data-placement="bottom" />
							</div>



						</div>



						<!-- <div class="form-group">
									<label class="col-sm-3 control-label">Signature:
											</label>
										<div class="col-sm-3">
											<input type="file" id="attachSignature" name="attachSignature" rel="txtTooltip" class="form-control"
											 title="Only image or pdf file is allowed. file size upto 1 MB" 
					     data-toggle="tooltip" data-placement="bottom" />
										</div> -->



					</div>

					<%--

						<div class="inner_wrapper">
							<h2>Official/Residential Address</h2>
							<br>




							<div class="form-group">



								<label for="inputEmail3" class="col-sm-3 control-label">Address
									line 1<sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="applicateResAddressLine1"
										cssClass="form-control input-sm" maxlength="50" />


								</div>
								<label for="inputEmail3" class="col-sm-2 control-label">Address
									line 2<sup>*</sup>
								</label>
								<div class="col-sm-3">
									<form:input path="applicateResAddressLine2"
										cssClass="form-control input-sm" maxlength="50" />

								</div>


							</div>


							<div class="form-group">



								<label for="inputEmail3" class="col-sm-3 control-label">State<sup>*</sup></label>
								<div class="col-sm-3">


									<select name="applicantSateId" id="applicantSate"
										onchange="reloadChildDropdown(this)"
										class="form-control dynaselectfld">
										<option value='0'>--Select--</option>
										<c:forEach items="${stateUtList}" var="st">
											<option value='${st.stateUtId }'>${st.stateUtName }</option>
										</c:forEach>
									</select>



								</div>


								<label for="inputEmail3" class="col-sm-2 control-label">District<sup>*</sup></label>
								<div class="col-sm-3">
									<select class="form-control dynaselectfld"
										name="applicantDistrictId" id="District-applicantSate">
										<option value="0">--Select--</option>

									</select>

								</div>




							</div>






							<div class="form-group">

								<label for="inputEmail3" class="col-sm-3 control-label">Pin
									Code<sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="applicateResPinCode"
										cssClass="form-control input-sm" maxlength="6" rel="txtTooltip" title="Only 6 digits of pin number is allowed." data-toggle="tooltip" data-placement="bottom"/>


								</div>


							</div>


						</div>




						<div class="inner_wrapper">

							<div class="form-group">
								<div class="col-md-12">
									<h2>
										Address for Service of All Notices <span>Same as above</span>
										<input id="applicantCapyAdd" onclick="copyAppResAdd()"
											class="test" type="checkbox" />
									</h2>
								</div>




							</div>


							<div class="form-group">



								<label for="inputEmail3" class="col-sm-3 control-label">Address
									line 1<sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="applicateResSameAsAddressLine1"
										cssClass="form-control input-sm " />


								</div>
								<label for="inputEmail3" class="col-sm-2 control-label">Address
									line 2<sup>*</sup>
								</label>
								<div class="col-sm-3">
									<form:input path="applicateResSameAsAddressLine2"
										cssClass="form-control input-sm" />

								</div>


							</div>


							<div class="form-group">



								<label for="inputEmail3" class="col-sm-3 control-label">State<sup>*</sup></label>
								<div class="col-sm-3">


									<select name="applicantResSameAsSateId" id="resSameAsSate"
										onchange="reloadChildDropdown(this)"
										class="form-control dynaselectfld">
										<option value='0'>--Select--</option>
										<c:forEach items="${stateUtList}" var="st">
											<option value='${st.stateUtId }'>${st.stateUtName }</option>
										</c:forEach>
									</select>



								</div>


								<label for="inputEmail3" class="col-sm-2 control-label">District<sup>*</sup></label>
								<div class="col-sm-3">
									<select class="form-control dynaselectfld"
										name="resSameAsDistrictId" id="District-resSameAsSate">
										<option value="0">--Select--</option>

									</select>

								</div>




							</div>






							<div class="form-group">

								<label for="inputEmail3" class="col-sm-3 control-label">Pin
									code<sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="applicateResSameAsPinCode"
										cssClass="form-control input-sm" maxlength="6" rel="txtTooltip" title="Only 6 digits of pin number is allowed." data-toggle="tooltip" data-placement="bottom"/>


								</div>


							</div>



						</div>



						<div class="inner_wrapper">

							<h1>
								Details of the <span>Respondent</span>
							</h1>
							<div class="drop_shadow"></div>
							<div class="clearfix"></div>


							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">
									Name of Respondent <sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="respondentName"
										cssClass="form-control input-sm" />

								</div>

								<label for="inputEmail3" class="col-sm-2 control-label">Telephone
									Number <sup></sup>
								</label>
								<div class="col-sm-3">

									<form:input path="respondentPhoneNo"
										cssClass="form-control input-sm" maxlength="12" rel="txtTooltip" title="Only 6-10 digits of landline number is allowed." data-toggle="tooltip" data-placement="bottom"/>

								</div>



							</div>


							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">
									Mobile Number<sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="respondentMobileNo"
										cssClass="form-control input-sm" maxlength="10" rel="txtTooltip" title="Only 10 digits of mobile number is allowed." data-toggle="tooltip" data-placement="bottom"/>

								</div>


								<label for="inputEmail3" class="col-sm-2 control-label">
									Email Address<sup>*</sup>
								</label>
								<div class="col-sm-3">

									<form:input path="respondentEmailId"
										cssClass="form-control input-sm" maxlength="50" rel="txtTooltip" title="Only valid emailId is allowed.e.g:abc@xyz.com" data-toggle="tooltip" data-placement="bottom" />

								</div>




							</div>

							<div class="inner_wrapper">
								<h2>Official/Residential Address</h2>
								<br>




								<div class="form-group">



									<label for="inputEmail3" class="col-sm-3 control-label">Address
										line 1<sup>*</sup>
									</label>
									<div class="col-sm-3">

										<form:input path="respondentResAddressLine1"
											cssClass="form-control input-sm" />

									</div>
									<label for="inputEmail3" class="col-sm-2 control-label">Address
										line 2<sup>*</sup>
									</label>
									<div class="col-sm-3">
										<form:input path="respondentResAddressLine2"
											cssClass="form-control input-sm" />

									</div>


								</div>


								<div class="form-group">



									<label for="inputEmail3" class="col-sm-3 control-label">State<sup>*</sup></label>
									<div class="col-sm-3">


										<select name="respondentSateId" id="respondentSate"
											onchange="reloadChildDropdown(this)"
											class="form-control dynaselectfld">
											<option value='0'>--Select--</option>
											<c:forEach items="${stateUtList}" var="st">
												<option value='${st.stateUtId }'>${st.stateUtName }
												</option>
											</c:forEach>
										</select>



									</div>


									<label for="inputEmail3" class="col-sm-2 control-label">District<sup>*</sup></label>
									<div class="col-sm-3">
										<select class="form-control dynaselectfld"
											name="respondentDistrictId" id="District-respondentSate">
											<option value="0">--Select--</option>

										</select>

									</div>




								</div>






								<div class="form-group">

									<label for="inputEmail3" class="col-sm-3 control-label">Pin
										Code<sup>*</sup>
									</label>
									<div class="col-sm-3">

										<form:input path="respondentResPinCode"
											cssClass="form-control input-sm" maxlength="6" rel="txtTooltip" title="Only 6 digits of pin number is allowed." data-toggle="tooltip" data-placement="bottom"/>

									</div>


								</div>

							</div>




							<div class="inner_wrapper">

								<div class="form-group">
									<div class="col-md-12">
										<h2>
											Address for Service of All Notices <span>Same as above </span> <input
												type="checkbox" id="respondentCheckAddr"
												onclick="copyResponResAdd()" />
										</h2>
									</div>




								</div>





									<div class="form-group">



										<label for="inputEmail3" class="col-sm-3 control-label">Address
											line 1<sup>*</sup>
										</label>
										<div class="col-sm-3">

											<form:input path="respondentResSameAsAddressLine1"
												cssClass="form-control input-sm" />

										</div>
										<label for="inputEmail3" class="col-sm-2 control-label">Address
											line 2<sup>*</sup>
										</label>
										<div class="col-sm-3">
											<form:input path="respondentResSameAsAddressLine2"
												cssClass="form-control input-sm" />

										</div>


									</div>


									<div class="form-group">



										<label for="inputEmail3" class="col-sm-3 control-label">State<sup>*</sup></label>
										<div class="col-sm-3">


											<select name="respondentSameAsSateId"
												id="respondentSameAsSate"
												onchange="reloadChildDropdown(this)"
												class="form-control dynaselectfld">
												<option value='0'>--Select--</option>
												<c:forEach items="${stateUtList}" var="st">
													<option value='${st.stateUtId }'>${st.stateUtName }
													</option>
												</c:forEach>
											</select>



										</div>


										<label for="inputEmail3" class="col-sm-2 control-label">District<sup>*</sup></label>
										<div class="col-sm-3">
											<select class="form-control dynaselectfld"
												name="respondentSameAsdistrict"
												id="District-respondentSameAsSate">
												<option value="0">--Select--</option>

											</select>

										</div>




									</div>






									<div class="form-group">

										<label for="inputEmail3" class="col-sm-3 control-label">Pin
											Code<sup>*</sup>
										</label>
										<div class="col-sm-3">

											<form:input path="respondentResSameAsPinCode"
												cssClass="form-control input-sm" maxlength="6" rel="txtTooltip" title="Only 6 digits of pin number is allowed." data-toggle="tooltip" data-placement="bottom"/>

										</div>


									</div>





							</div>
--%>


					<div class="inner_wrapper">

						<h1>
							Details of the <span>Complaint</span>
						</h1>
						<div class="drop_shadow"></div>
						<div class="clearfix"></div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Subject of Complaint<sup>*</sup>
							</label>
							<div class="col-sm-6">

								<form:input path="subjectOfComplaint"
									cssClass="form-control input-sm" maxlength="200" />

							</div>




						</div>


						<div class="form-group">

							<label for="inputEmail3" class="col-sm-3 control-label">Details
								of Complaint<sup>*</sup>
							</label>
							<div class="col-sm-6">
								<form:textarea path="detailsOfComplaint" rows="3"
									cssClass="form-control input-sm"></form:textarea>
							</div>

						</div>

						<div class="form-group">


							<label for="inputEmail3" class="col-sm-3 control-label">Relief
								Sought from RERA<sup>*</sup>
							</label>
							<div class="col-sm-6">
								<form:textarea path="reliefSoughtFromRera" rows="3"
									cssClass="form-control input-sm"></form:textarea>
							</div>





						</div>


						<div class="form-group">


							<label for="inputEmail3" class="col-sm-3 control-label">Interim
								Order Required<sup>*</sup>
							</label>
							<div class="col-sm-2">
								<div class="radio ">
									<label> <input type="radio" name="interimOrderRequired"
										id="optionsRadios1" value="YES" id="INTRIM_ORDER_YES"
										onclick="hideShow()"> Yes
									</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label> <input
										type="radio" name="interimOrderRequired" id="INTRIM_ORDER_NO"
										value="NO" onclick="hideShow()"> No
									</label>

								</div>
							</div>



							<div class="col-sm-4 hideshow" id="itr">

								<%-- <form:input path="interimOrderPrayed"
											cssClass="form-control input-sm" /> --%>
							</div>


						</div>




					</div>









					<div class="inner_wrapper">

						<h1>
							Details of the <span>Respondent</span>
						</h1>
						<div class="drop_shadow"></div>
						<div class="clearfix"></div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Name of Respondent <sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="respondentName"
									cssClass="form-control input-sm" />

							</div>

							<label for="inputEmail3" class="col-sm-2 control-label">Contact
								Number <sup></sup>
							</label>
							<div class="col-sm-3">

								<form:input path="respondentContact"
									cssClass="form-control input-sm" maxlength="10"
									rel="txtTooltip"
									title="Only 6-10 digits of landline number is allowed."
									data-toggle="tooltip" data-placement="bottom" />

							</div>



						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Fax<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="respondentFax"
									cssClass="form-control input-sm" maxlength="10"
									rel="txtTooltip"
									title="Only 10 digits of mobile number is allowed."
									data-toggle="tooltip" data-placement="bottom" />

							</div>


							<label for="inputEmail3" class="col-sm-2 control-label">
								Email Address<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="respondentEmail"
									cssClass="form-control input-sm" maxlength="50"
									rel="txtTooltip"
									title="Only valid emailId is allowed.e.g:abc@xyz.com"
									data-toggle="tooltip" data-placement="bottom" />

							</div>




						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Address 1<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="respondentAddress1"
									cssClass="form-control input-sm" maxlength="500"
									rel="txtTooltip"
									title="Only 10 digits of mobile number is allowed."
									data-toggle="tooltip" data-placement="bottom" />

							</div>


							<label for="inputEmail3" class="col-sm-2 control-label">
								Address 2<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<form:input path="respondentAddress2"
									cssClass="form-control input-sm" maxlength="500"
									rel="txtTooltip"
									title="Only valid emailId is allowed.e.g:abc@xyz.com"
									data-toggle="tooltip" data-placement="bottom" />

							</div>

						</div>
						<!-- PUT HERE -->
					</div>



					<!--inner container end here-->

					<div class="inner_wrapper">



						<h1>
							Payment<span></span>
						</h1>
						<div class="drop_shadow"></div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Payment Mode<sup>*</sup>
							</label>
							<div class="col-sm-3">



								<select name="paymentmode" id='paymentmode'
									onchange="choosepaymentmethod(this)" class="form-control">
									<option value="0">--Select--</option>
									<option value="Demand Draft">Demand Draft</option>
									<option value="Banker's Cheque">Banker's Cheque</option>
									<option value="Payment Gateway">Payment Gateway</option>

								</select>



							</div>

							<label for="inputEmail3"
								class="col-sm-2 control-label optionfld2"> Bank Name<sup>*</sup>
							</label>
							<div class="col-sm-3 optionfld2">



								<select name="bankName" class="form-control">
									<option value='0'>--Select--</option>
									<c:forEach items="${bankList}" var="obj">
										<option value='${obj.bankId}'>${obj.bankName}</option>
									</c:forEach>
								</select>


							</div>

						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-3 control-label">
								Amount (INR)<sup>*</sup>
							</label>
							<div class="col-sm-3">

								<input class="form-control input-sm" type="text"
									name="feesAmount" readonly="readonly" value="1000" />

							</div>

							<label for="inputEmail3"
								class="col-sm-2 control-label optionfld2"> Branch<sup>*</sup>
							</label>
							<div class="col-sm-3 optionfld2">
								<input name="bankbranch" class="form-control input-sm "
									maxlength="50"></input>
							</div>
						</div>
						<br>
					</div>
					<div class="inner_wrapper">
						<h1>
							Supporting<span>Documents</span>
						</h1>
						<div class="drop_shadow"></div>
						<div id='pre_project-dv' class='addmoredv'>
							<div class="drop_shadow">
								<span onclick="deloptdv(this);" style='float: right;'>DELETE</span>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">Caption: </label>
								<div class="col-sm-3">
									<input type="text" id="captions" name="captions"
										class="form-control" />
								</div>
								<label class="col-sm-2 control-label">Attachment: </label>
								<div class="col-sm-3">
									<input type="file" id="supportDoc" name="supportDoc"
										rel="txtTooltip" class="form-control"
										title="Only image or pdf file is allowed. file size upto 1 MB"
										data-toggle="tooltip" data-placement="bottom" />
								</div>



							</div>




							<!-- 

							<div class="container1">
								<p style='color: red;'>Click on the Add Skill Button to add
									a new element.</p>
								<div class='element' id='div_1'>
									<label class="col-sm-3 control-label">Caption: </label>
									<input type='text' id='txt_1'>&nbsp;<span
										class='add'>Add Skill</span>&nbsp;
								</div>
							</div>
 -->

						</div>
					</div>



					<div class="inner_wrapper">
						<h1>
							Uploaded<span>Documents List</span>
						</h1>
						<div class="drop_shadow"></div>
						<div id='pre_project-dv' class='addmoredv'>

							<div class="form-group">
								<label class="col-sm-3 control-label"> </label>

								<div class="col-sm-3">
									<c:if test="${not empty complaintDocumentList}">
										<th>Complaint Document</th>
										<table border="1">

											<tr>
												<td>S.No</td>
												<td>Document Name</td>
												<td>File Name</td>
												<td></td>
											</tr>
											<c:forEach items="${complaintDocumentList}" var="doc"
												varStatus="theCount">
												<tr>
													<td>${theCount.count}</td>
													<td>${doc.documentName}</td>
													<td>${doc.fileName}</td>
													<td><a href="complaint/download?id=${doc.id}">Download</a>
													</td>
												</tr>
											</c:forEach>
										</table>
									</c:if>


								</div>
								<label class="col-sm-2 control-label"> </label>
								<div class="col-sm-3"></div>



							</div>






						</div>
					</div>

					<c:if test="${showAssignment != 'false'}">
						<div class="inner_wrapper">

							<h1>
								<span>Assignment</span>
							</h1>
							<div class="drop_shadow"></div>






							<form:select path="assignedToRole" 
								class="form-control dynaselectfld" name="assignedToRole"
								id="assignToRole">
								<form:option value="1">--SELECT--</form:option>
								<form:option value="1">--OPERATOR--</form:option>
								<form:option value="2">--SCRUNITY DEPARTMENT--</form:option>
								<form:option value="3">--CHAIRMAN / HIGHER AUTHORITY--</form:option>

							</form:select>




						</div>

					</c:if>

					<div class="inner_wrapper">

						<h1>
							<span>Declarations</span>
						</h1>
						<div class="drop_shadow"></div>



						<ul>

							<li><input type="checkbox" name="declaration1"
								id='declaration1' value="Y">&nbsp;&nbsp; I, complainant,
								here by declare that the subject matter of the above claim falls
								within the Jurisdiction of the Authority</li>
							<li><input type="checkbox" name="declaration2"
								id='declaration2' value="Y">&nbsp;&nbsp;I, complainant,
								here by declare that the matter regarding which the complaint
								has been made is not pending before any Court of Law or any
								other Authority or any other Tribunal(s)</li>
							<li><input type="checkbox" name="declaration3"
								id='declaration3' value="Y">&nbsp;&nbsp;I verify that
								the contents of the above sections are true to my personal
								knowledge and belief and I have not suppressed any material
								fact(s)</li>
						</ul>
					</div>





					<div class="button-wrapper">
						<input name="btn1" class="btn-style" value="Submit" type="submit">

					</div>




					<!-- container end here-->

				</div>
				<form:input path="id" readonly="readonly"
					cssClass="form-control input-sm" maxlength="50"
					data-toggle="tooltip" data-placement="bottom" />
	</form:form>




</body>




</html>