<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Congratulations!</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
	<h3>Congratulations! The Engineering college has processed your Application form successfully</h3>
	
	<h2>Details submitted by you::</h2>
	
	<table>
		<tr>
			<td>Student's Name:</td>
			<td>${student.studentName}</td>
		</tr>
		<tr>
			<td>Student's Hobby:</td>
			<td>${student.studentHobby}</td>
		</tr>
		<tr>
			<td>Student's Mobile:</td>
			<td>${student.studentMobile}</td>
		</tr>
		<tr>
			<td>Student's DOB:</td>
			<td>${student.studentDOB}</td>
		</tr>
		<tr>
			<td>Student's Skills:</td>
			<td>${student.studentSkills}</td>
		</tr>
		<tr>
			<td>Student Address:</td>
			<td>
				country: ${student.studentAddress.country}
				city: ${student.studentAddress.city}
				street: ${student.studentAddress.street}
				pincode: ${student.studentAddress.pincode}
			</td>
		</tr>
	</table>
</body>
</html>