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

String sql = "insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

String name = request.getParameter("user_name");
String father = request.getParameter("father_name");
String ssc_ht=request.getParameter("ssc_ht");
String marks10=request.getParameter("marks10");
String inter_ht=request.getParameter("inter_ht");
String marks12=request.getParameter("marks12");
String eamcet_rank=request.getParameter("eamcet_rank");
String eamcet_ht=request.getParameter("eamcet_ht");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String caste=request.getParameter("caste");
String branch=request.getParameter("branch");
String category=request.getParameter("category");
String id="1";




if((!(name.equals(null) || name.equals("")) && !(father.equals(null) || father.equals(""))))
{
	try {
	    
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, father);
ps.setString(4,ssc_ht);
ps.setString(5,marks10);
ps.setString(6,inter_ht);
ps.setString(7,marks12);
ps.setString(8,eamcet_rank);
ps.setString(9,eamcet_ht);
ps.setString(10,address);
ps.setString(11,phone);
ps.setString(12,caste);
ps.setString(13,branch);
ps.setString(14,category);

ps.executeUpdate();
ps.close(); %>
<center><h3>Registered Successfully</h3></center>
<%
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
getServletContext().getRequestDispatcher("/welcome1.jsp").include(request, response);
}
%>
</body>
</html>