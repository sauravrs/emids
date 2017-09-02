<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">

$("form input[type=submit]").click(function() {
	   //console.log($(this).val());
	   if($(this).val()!=="Get Insurance Quote"){
	      $('form input[type=text]').each(function() {
	         $(this).removeAttr("required");
	      });
	      $('form input[type=radio]').each(function() {
		         $(this).removeAttr("required");
		      });
	      var value = $('#age').val()
	      var regex = new RegExp(/^\+?[0-9(),.-]+$/);
	      if(value.match(regex)) {return true;}
	      return false;
	   }
	   $("input[type=submit]", $(this).parents("form")).removeAttr("clicked");
	   $(this).attr("clicked", "true");
	   
	  
	});
	
$(document).ready(function () {
	  //called when key is pressed in textbox
	  $("#age").keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        //display error message
	        $("#errmsg").html("Digits Only").show().fadeOut("slow");
	               return false;
	    }
	   });
	});

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Get Instance Insurance Quote</h1>
<hr>
<form id="myform" action="${pageContext.request.contextPath}/InsuranceRequest" method="post">
    <p><b>Name:</b>        
    <input type="text" size="50" name="name" required  /></p>

    <p><b>Gender:</b>        
    <input type="radio" name="gender" value="M" required /> Male
    <input type="radio" name="gender" value="F" required/> Female</p>

    <p><b>Age:</b>    
    <input id="age" type="text" size="5" name="age" class="numbersOnly" required />&nbsp; years&nbsp;<span id="errmsg"></span></p>


    <p><b>Current Health:</b><br>
    <input type="checkbox" name="hypertension" />Hypertension<br>
    <input type="checkbox" name="bloodPressure" />Blood Pressure<br>
    <input type="checkbox" name="bloodSugar" />Blood Sugar<br>
    <input type="checkbox" name="overweight" />Overweight<br>
    </p>
    
    
    <p><b>Habits:</b><br>
    <input type="checkbox" name="smoking" />Smoking<br>
    <input type="checkbox" name="alcohol" />Alcohol<br>
    <input type="checkbox" name="exercise" />Daily Exercise<br>
    <input type="checkbox" name="drugs" />Drugs<br>
    </p>
<hr>
     <p align="center">
    <input type="submit"  name="submit" value="Get Insurance Quote" /></p>
</form>
</body>
</html>