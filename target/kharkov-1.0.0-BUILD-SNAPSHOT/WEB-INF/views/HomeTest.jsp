<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- jQuery -->
<spring:url value="resources/jquery-1.7.js" var="jquery_url" />


<script src="${jquery_url}" type="text/javascript">
	
</script>
<script type="text/javascript" src="resources/jquery.timers.js"></script>

<style type="text/css">
#timer_field {
	font-size: 1.4em;
	font-weight: bold;
	color: #0F0;
	padding: 0 150px;
}
</style>


<title><spring:message code="label.title" /></title>


<script type="text/javascript">

	
	$(document).ready(function() {
		

		/********The quantity of questions for user********/
		var qq = 5;
		/**************index of question from Random result set from DB***********/
		var qId = 1;
		/*****status without answer, is equals WRONG answer id!!!!******/
		var status_wa = 1; /*****status without answer, is equals WRONG answer id!!!!******/
		/**************Array of id user answers***************/
		var uA = new Array(5);
		
	
		var flag= 0;
		
		
		$.timeOut = function (){
			var make = function(){
			$("#timer_field").everyTime(1000, 'timer2', function(i) {
				$(this).text(i);
				flag++;
				if(flag==30){
										
					if (qId < (qq + 1)) {
						uA[qId - 1] = status_wa;
					}
					if (qId < qq) {
						
						$("#output").load("next/" + qId + " #question", 
							$.timeOut());
						flag =0;
	 					
						}
						
					qId++;
					
						if (qId > qq) {

							$("#output").load("nextResult", {
								'uA' : uA
							});
							document.getElementById("next").disabled = true;
							document.getElementById("start").disabled = false;
							qId = 1;
												}
				}
			}, 30);
			};
			return this.each(make);
		
	};
			
		document.getElementById("next").disabled = true;
		$("#start").click(function() {
			
			document.getElementById("start").disabled = true;
			document.getElementById("next").disabled = false;
		
			$("#output").load("index #question");
		
		});



		$("#next").click(function()

		{
			$("#timer_field").stopTime('timer2');
			
			flag= 0;
	
			var status = $('input[name=answer]:checked').val();
			var radio = $(':radio').is(':checked');

			if (radio) {
	
				if (qId < (qq + 1)) {
					uA[qId - 1] = status;
				}
				if (qId < qq) {
	
					$("#output").load("next/" + qId + " #question",
							$.timeOut());
					flag =0;		
									
				}
				qId++;

				if (qId > qq) {

					
					$("#output").load("nextResult", {
						'uA' : uA
					});
					
					document.getElementById("next").disabled = true;
					document.getElementById("start").disabled = false;
					qId = 1;
					
				}

			}

			if (!radio)
				alert('Please check answers!');

		});

			$("#start").click(
				$.timeOut()
				
			);
	});
</script>

</head>
<body>
	<p>Hello Test!</p>
	<h2>
		<spring:message code="label.title" />
		<span id="timer_field">0</span>
	</h2>
	<form action="" method="GET" name="home">
		<div id=output></div>
		<input type="button" value="Start" id="start" /> <input type="button"
			value="next" id="next" />
	</form>

</body>
</html>