<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="label.admissionSuccess.title"/></title>
</head>
<body>
	<h1><spring:message code="label.headerMessage"/></h1>
	
	<h3><spring:message code="label.admissionSuccess.h3"/></h3>
	
	<h2><spring:message code="label.admissionSuccess.details"/>::</h2>
	
	<table>
		<tr>
			<td><spring:message code="label.studentName"/>:</td>
			<td>${student.studentName}</td>
		</tr>
		<tr>
			<td><spring:message code="label.studentHobby"/>:</td>
			<td>${student.studentHobby}</td>
		</tr>
		<tr>
			<td><spring:message code="label.studentMobile"/>:</td>
			<td>${student.studentMobile}</td>
		</tr>
		<tr>
			<td><spring:message code="label.studentDOB"/>:</td>
			<td>${student.studentDOB}</td>
		</tr>
		<tr>
			<td><spring:message code="label.studentSkills"/>:</td>
			<td>${student.studentSkills}</td>
		</tr>
		<tr>
			<td><spring:message code="label.studentAddress"/>:</td>
			<td>
				<spring:message code="label.studentCountry"/>: ${student.studentAddress.country}
				<spring:message code="label.studentCity"/>: ${student.studentAddress.city}
				<spring:message code="label.studentStreet"/>: ${student.studentAddress.street}
				<spring:message code="label.studentPincode"/>: ${student.studentAddress.pincode}
			</td>
		</tr>
	</table>
</body>
</html>