function changeLabelText(id, text, val) {
	/*console.log("inside change label ");*/
	$(id).text(text);
	/*console.log("nextform val intended to be chnaged"+$(id).text(text));*/
	$('#nextForm').val(val);
	/*console.log("next val final value : :"+$('#nextForm').val(val));*/
}

function moveSelectedTrends() {
	var trends = document.getElementById('trends'), trend, i;

	for (i = 0; i < trends.length; i++) {
		trend = trends[i];
		if (trend.selected) {
			alert(trend.value);
		}
	}
}


function validateDate(stDate, endDate, msg) {
	var dt = stDate.value;
	var dt2 = endDate.value;

	var splitDt = dt.split('/');
	var splitDt2 = dt2.split('/');
	var DtDate = parseInt(splitDt[0]);
	var DtMo = parseInt(splitDt[1]);
	var DtYr = parseInt(splitDt[2]);
	var Dt2Date = parseInt(splitDt2[0]);
	var Dt2Mo = parseInt(splitDt2[1]);
	var Dt2Yr = parseInt(splitDt2[2]);
	if (DtYr < Dt2Yr) {
		return true;
	}
	if (Dt2Yr == DtYr && DtMo < Dt2Mo) {
		return true;
	}
	if (Dt2Yr == DtYr && Dt2Mo == DtMo && DtDate < Dt2Date) {
		return true;
	}
	alert(msg);
	endDate.focus();
	return false;
}


function projectForm() {
	
	/*console.log("inside project form");*/
	  var frm= $("#trxForm");
	  var url = $("#reqURL").val();
	  /*console.log("url"+url);*/
	  
	   if(validateForm(frm)){
		   $.ajax({
				type : "POST",
				url : url,
				data : frm.serialize(),
				success : function(response){
				/*console.log("resonse"+response);*/
				 $("#trxForm").hide();
				 $("#otpForm").show();
				  var json = $.parseJSON(response);
				 console.log("response.emailId"+response.emailId+" json.mobileNo"+json.mobileNo);
				 
				 var response_email = response.substr(1, response.indexOf(',')-1); 
				 var response_mobileNo = response.substr(response.indexOf(',')+1, response.indexOf(']')-1); 
				 /*console.log("email "+response_email+" mobile"+response_mobileNo);*/
				 $("#emailIdToCheck").val(json.emailId);
				 $("#mobileNoVeri").val(json.mobileNo);	
					
				}
		   });
		  
		   
		/*$(frm).submit();*/
	   }
	

	
}

function resendOtp(){
	 var url = $("#resendUrl").val();
	 console.log("resendOtp js function called");
	 $.ajax({
			type : "POST",
			url : url,
			success : function(data){
				$("#resendOtpConfirmation").show();
			}
	 });
	
	
}

function emailVerifiCodeForm(){
	/*console.log("emailVerifiCodeForm");*/
	  var frm= $("#otpForm");
	   if(validateForm(frm)){
		  console.log("inside email verification");
		$(frm).submit();
	   }
	
}

function setCookie(c_name, value, exdays) {
	var exdate = new Date();
	var c_value;
	if (exdays != null)
		exdate.setDate(exdate.getDate() + exdays);

	c_value = escape(value)
			+ ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());

	document.cookie = c_name + "=" + c_value + "; path=/";
	console.log("setting value"+value);
}
function getCookie(c_name) {
	var c_value = document.cookie;
	var c_start = c_value.indexOf(" " + c_name + "=");
	if (c_start == -1) {
		c_start = c_value.indexOf(c_name + "=");
	}
	if (c_start == -1) {
		c_value = null;
	} else {
		c_start = c_value.indexOf("=", c_start) + 1;
		var c_end = c_value.indexOf(";", c_start);
		if (c_end == -1) {
			c_end = c_value.length;
		}
		c_value = unescape(c_value.substring(c_start, c_end));
	}
	console.log("ret c_value"+c_value);
	return c_value;
}

function nextProjectDetailsForm() {

   var frm= $("#trxForm");
   var promoterName = $("#promoterName").val();
   var emailId =  $("#emailId").val();
   var addressLine1 = $("#addressLine1").val();;
   var addressLine2 = $("#addressLine2").val();;
   var invSate = $("#invSate").val();;
   var district = $("#District-invSate").val();;
   var pincode = $("#pinCode").val();;
   
   if(validateForm(frm)){
	 console.log("inside validate about to set cookies");
	 setCookie("promotername",promoterName, null);
	 setCookie("emailid",emailId, null);
	 setCookie("addressLine1",addressLine1, null);
	 setCookie("addressLine2",addressLine2, null);
	 setCookie("state",invSate, null);
	 setCookie("district",district, null);
	 setCookie("pincode",pincode, null);
	 
	 $(frm).submit();
	
   }

}

function saveOrUpdateCompanyPromoter() {

	   var frm= $("#trxForm");
	   if(validateForm(frm)){

		$(frm).submit();
	   }

}

function editSaveOrUpdateCompanyPromoter() {
	
	   var frm= $("#trxForm");
	   if(validateForm(frm)){

		$(frm).submit();
	   }
}


function nextProjectPaymentForm() {
	   var frm= $("#trxForm");
	   if(validateForm(frm)){

		$(frm).submit();
	   }
}

function saveOrUpdatePayment() {
	   var frm= $("#trxForm");
	   if(validateForm(frm)){

		$(frm).submit();
	   }}

function saveOrUpdateProjectDetailsForm() {
	   var frm= $("#trxForm");
	   /*console.log(frm);*/
	   if(validateForm(frm)){  
		$(frm).submit();
	   }
}


function saveOrUpdateProjectDetailsForm() {
	/*console.log("inside saveOrUpdateProjectDetailsForm2");*/
	   var frm= $("#trxForm");
	   
	   /*console.log(frm);*/
	   if(validateForm(frm)){
		   /*console.log("inside saveOrUpdateProjectDetailsForm form validate2");*/
		$(frm).submit();
	   }
}





function getAgentDetails() {

	var agentRegNo = $('#agentRegNo').val();
	alert(agentRegNo);
	if(agentRegNo.trim()==''){
		alert('Enter the agent registration');
		return false;
	}
	
	$.ajax({
		type : "GET",
		url : "getAgentDetailforProjectReg",
		data : "agentRegNo=" + agentRegNo,
		success : function(response) {
			alert('call---'+response+"ID--"+Obj.name);
			
		},

		error : function(e) {
        
		}

	});

}

function pervForm(url) {

	$(document).on("click", function(e) {
		// e.preventDefault();
		$('#trxForm').attr('action', url).submit();
	});

}




function checkOldPassword(){
	var currentPass=  $('#password').val();
	var oldPassword=  $('#oldPassword').val();
	
	 
	
	var newpassword=$('#newpassword').val();
	var conFirmPassword=$('#conFirmPassword').val();
	
	if(oldPassword.trim()==''){
		alert("Please enter your oldPassword");
		$('#oldPassword').focus();
	    return false;
	}
 
	if(oldPassword.trim()!=currentPass){
		alert("Please enter your valid old Password");
		$('#oldPassword').focus();
		return false;
	}
 
	if(newpassword.trim()==''){
		alert("Please enter your new  Password");
		$('#newpassword').focus();
		return false;
	}
	
	if(conFirmPassword.trim()==''){
		alert("Please enter your new  confirm password");
		$('#conFirmPassword').focus();
		return false;
	}
	if(newpassword!=conFirmPassword){
		alert("Entered password does not match");
		return false;
		
	}
	$('#changePass').submit();
	
	
 
}
