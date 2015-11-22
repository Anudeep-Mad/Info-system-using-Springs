<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/student_database";
String user = "root";
String dbpsw = "swapni321";

String sql = "select * from login_details";

String name = request.getParameter("name");
String password = request.getParameter("password");


if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);

rs = ps.executeQuery();
while(rs.next())
{ 
userdbName = rs.getString("name");
userdbPsw = rs.getString("password");

if(name.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName); 
response.sendRedirect("/StudentManagement/details"); 
} 
else
	{
	//out.println("Error in Login Details...Please Relogin");
	response.sendRedirect("/StudentManagement/signin");
	}
rs.close();
ps.close(); 
}
}

catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/home1.jsp").include(request, response);
}
%>
</body>
</html>