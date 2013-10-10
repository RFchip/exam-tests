<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
	
	 <!-- jQuery -->
        <spring:url value="resources/jquery-1.7.js" var="jquery_url" />     
        <script src="${jquery_url}" type="text/javascript"><jsp:text/></script>
             
        
        <script type="text/javascript" >
        $(document).ready(function() {
            $("#next").click(function ()
            {
               
                //$("#output").load("resources/test.html");
            	$("#output").load("index #question");
                    });
                });
        </script>        

</head>
<body>
  
<h2><spring:message code="label.title" /></h2>
           
<form action="" id=question>
<fieldset >
   <legend>  <b> ${questionsList1}</b> 
    </legend>  
   <c:forEach items="${questionsList1.getAnswers()}" var="answers">
   <p><input type="radio" name="answer" value="${answers.getId()}"> 
   ${answers}</p>
      </c:forEach>
      </fieldset>
</form>

</body>
</html>