<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in</title>
</head>
<body bgcolor="lightgreen">
<center><h2 style="color:green">SIGN IN</h2></center>
<form method="post" action="/StudentManagement/validate">

<center>
<p>User Name  <input type="text" name="name"></p>
<p>Password      <input type="password" name="password"></p>
<p><a href="/StudentManagement/forgotpwd">Forgot Password?</a></p>
<p><input type="submit" value="Login"></p>
</center>

</form>

</body>
</html>