<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CBIT</title>
<center> 
<h1>CBIT Student Application Form</h1>
</center>
</head>
<body bgcolor="lightgreen">
<center>
<form action="/StudentManagement/studentformonsubmit" method="post">
First name:<br><br>
<input type="text" name="user_name">
<br><br>


Father's Name:<br><br>
<input type="text" name="father_name">
<br><br>


SSC HALLTICKET NUMBER:<br><br>
<input type="text" name="ssc_ht">
<br><br>


CBSE/SSC Marks/CGPA:<br><br>
<input type="text" name="marks10">
<br><br>


INTER HALLTICKET NUMBER:<br><br>
<input type="text" name="inter_ht">
<br><br>

INTER MARKS:<br><br>
<input type="text" name="marks12">
<br><br>




EAMCET RANK:<br><br>
<input type="text" name="eamcet_rank">
<br><br>



EAMCET HALLTICKET NUMBER:<br><br>
<input type="text" name="eamcet_ht">

<br><br>

ADDRESS:<br><br>
<input type="text" name="address">

<br><br>


Mobile Number:<br><br>
<input type="text" name="phone">

<br><br>
CASTE:
<select name="caste">
  <option value="oc">OC</option>
  <option value="back">BC</option>
  <option value="st">ST</option>
  <option value="sc">SC</option>
</select>

<br><br>
BRANCH:
<select name="branch">
  <option value="IT">IT</option>
  <option value="CSE">CSE</option>
  <option value="ECE">ECE</option>
  <option value="MEC">MEC</option>
</select>
<br><br>
CATEGORY

<select name="category">
  <option value="A">A-category</option>
  <option value="B">B-category</option>
  <option value="mang">Management</option>
  
</select>

<br><br>

<input type="reset" name="reset">
<input type="submit" name="submit">
<a href="/StudentManagement/signin">click</a>here for sign in
    </form>
    </center>
</body>
</html>