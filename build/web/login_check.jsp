    <jsp:useBean class="myBean.userDetail" id="uDetail" scope="request"/>
<jsp:useBean class="myBean.login_detail" id="LDetail" scope="request"/>

<html>
<head>

<body style="color:black">

<table width="1350" border="0">
<tr>
<td style="background-color:#3b5998; width:900px; height:5px">
<a href="firstPage.jsp" style="color:white;font-size:55px; font-style:verdana;text-decoration:none;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;facebook</b></a></td>

<td style="background-color:#3B5998; width:440px;height:5px;">
<form id="login_check" action="loginPost_page.jsp" method="post">
<p><font color="white" size="2"> &nbsp;Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Password <br><input type="text" name="loginMail" value="<%=LDetail.getLoginMail()%>">
<input type="password" name="loginPass" value="<%=LDetail.getLoginPass()%>">
<input type="submit" value ="Log In"><br>
<input type="checkbox"> Keep me logged in &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Forgot your password?</p><%=LDetail.getErrors("loginMail")%> </td>	
</tr></form>


<tr  valign="top">
    <td style="background-color: #F5FAFF;" width="400">
<h2 style="color:#0e1f5b"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Facebook helps you connect and share with <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the people in your life.</h2>
  
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images\foto.jpg" height ="200" width="500" /></td> 
        
<td style="background-color: #F5FAFF;" width="600" height="450">
<br><br><h3> Sign Up</h3>It's free and always will be.<hr>
<form id="signup"  method="post" action="post_Page.jsp">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:&nbsp;<input type="text" name="name1"  value="<%=uDetail.getName1()%>"> <b style="color:red; font-size:70%"><%=uDetail.getErrors("name1")%></b><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name:&nbsp;<input type="text" name="name2"  value="<%=uDetail.getName2()%>"><br><b style="color:red; font-size:70%"><%=uDetail.getErrors("name2")%></b><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Email:&nbsp;<input type="text" name="email1" value="<%=uDetail.getEmail1()%>"><b style="color:red; font-size:70%"> <%=uDetail.getErrors("email1")%></b><br>
        &nbsp;Re-enter Email:&nbsp;<input type="text" name="email2" value="<%=uDetail.getEmail2()%>" ><b style="color:red; font-size:70%"><%=uDetail.getErrors("email2")%></b><br>
        New Password:&nbsp;<input type="password" name="pass" value="<%=uDetail.getPass()%>"><b style="color:red; font-size:70%"><%=uDetail.getErrors("pass")%></b><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I am:&nbsp;<select name="sex">
		   <option value="sex">Select Sex:</option> 
           <option value="Female">Female</option>
           <option value="Male">Male</option></select>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Birthday:&nbsp; <select name="month">
  			    <option value="month">Month:</option> 
				<option value="01">Jan</option>	
				<option value="02">Feb</option></select>

		<select name="date">
	    <option value="day">Day:</option> 
		<option value="01">1</option>	
		<option value="02">2</option></select>

		<select name="year">
		<option value="year">Year:</option>
		<option value="1991">1991</option>
		<option value="1992">1992</option></select>
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Why do I need to provide my birthday?
<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value = "Sign Up"><hr>
</form>
Create a Page for a celebrity, band or business.
</td></tr>

<tr>
<td colspan="2" style="background-color:white;" width= "1000">
English(US) &nbsp;&nbsp;&nbsp;Español&nbsp;&nbsp;&nbsp;Português (Brasil)&nbsp;&nbsp;&nbsp;Français (France) »
<hr>
</tr>

<tr>
<td colspan="2" style="background-color:white;" width= "1000">
Facebook © 2011 · English(US)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Mobile · Find Friends · Advertising · Create a Page · Developers · Careers · Privacy · Terms · Help
</tr>
</table>
<script>
if(document.forms.login.email_login.value=="")
{
    document.forms.login.email_login.focus();
}
</script>
</body>
</html>