<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title><spring:message code="label.title" /></title>


</head>
<body>
	<form action="" id=question>
		<fieldset>
			<legend>
				<b> ${q1}</b>
			</legend>
			<c:forEach items="${q1.getAnswers()}" var="answers">
				<p>
					<input type="radio" name="answer" value="${answers.getId()}">
					${answers}
				</p>
			</c:forEach>
			<c:if test="${!empty result}">
				<p>
					<b>${result}</b>
				</p>
			</c:if>
		</fieldset>
	</form>
</body>
</html>