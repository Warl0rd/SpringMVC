<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<spring:theme code='styleSheet'/>" type="text/css"/>
<title><spring:message code="label.admissionForm.title"/></title>
</head>
<body>
	<p>
		<a href="/SpringMVC/admissionForm.html?siteTheme=green">Green</a>|
		<a href="/SpringMVC/admissionForm.html?siteTheme=red">Red</a>
	</p>
	
	<a href="/SpringMVC/admissionForm.html?siteLanguage=ru">Russian</a>|
	<a href="/SpringMVC/admissionForm.html?siteLanguage=en">English</a>
	
	<h1><spring:message code="label.headerMessage"/></h1>
	
	<h3><spring:message code="label.admissionForm.h3"/></h3>
	
	<form:errors path="student.*"/>
	
	<form action="/SpringMVC/submitAdmissionForm.html" method="post">
		<table>
			<tr>
				<td><spring:message code="label.studentName"/>:</td>
				<td><input type="text" name="studentName"/></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentHobby"/>:</td>
				<td><input type="text" name="studentHobby"/></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentMobile"/>:</td>
				<td><input type="text" name="studentMobile"/></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentDOB"/>:</td>
				<td><input type="text" name="studentDOB"/></td>
			</tr>
			<tr>
				<td><spring:message code="label.studentSkills"/>:</td>
				<td>
					<select name="studentSkills" multiple>
						<option value="Java Core">Java Core</option>
						<option value="Spring Core">Spring Core</option>
						<option value="Spring MVC">Spring MVC</option>
					</select>
				</td>
			</tr>
		</table>
		
		<table>
			<tr>
				<td><spring:message code="label.studentAddress"/>:</td>
			</tr>
			<tr>
				<td><spring:message code="label.studentCountry"/>:<input type="text" name="studentAddress.country"/></td>
				<td><spring:message code="label.studentCity"/>:<input type="text" name="studentAddress.city"/></td>
				<td><spring:message code="label.studentStreet"/>:<input type="text" name="studentAddress.street"/></td>
				<td><spring:message code="label.studentPincode"/>:<input type="text" name="studentAddress.pincode"/></td>
			</tr>
			<tr>
				<spring:message code="label.submit.admissionForm" var="submitText"/>
				<td><input type="submit" value="${submitText}"/></td>
			</tr>
		</table>
	</form>
</body>
</html>