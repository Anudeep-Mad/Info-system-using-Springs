<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
</head>
<body>
<p>Welcome, <%=session.getAttribute("name")%></p>
<p><a href="StudentManagement/attendance">Attendance Detail</a>
<p><a href="StudentManagement/marks">Semester Marks</a>
<p><a href="StudentManagement/schedule">Todays Schedule</a>
<p><a href="StudentManagement/material">Class material</a>

</body>
</html>