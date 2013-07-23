<%@ page import="java.sql.*;" %>
<%@ page import="java.awt.*;" %>

<html>
<head>

<body style="color:black">

<table width="1350" border="0">
<tr>
<td style="background-color:#3b5998; width:900px; height:5px">
<a href="firstPage.jsp" style="color:white;font-size:55px; font-style:verdana; text-decoration:none;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;facebook</b></a></td>

<td style="background-color:#3B5998; width:440px;height:5px;">
<form id="login" action="loginPost_page.jsp" method="post">
<p><font color="white" size="2"><br>
    &nbsp;Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Password <br><input type="text" name="loginMail" >
<input type="password" name="loginPass" >
<input type="submit" value ="Log In"><br>

<input type="checkbox"> Keep me logged in &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Forgot your password?</p> 

           <% 
               
               String error=(String)request.getAttribute("error");
               if(error!=null)
               {
               out.println(error);
               }
            %>
</td>	
</tr></form>

<tr  valign="top">
    <td style="background-color: #F5FAFF;" width="400">
        <h2 style="color:#0e1f5b"><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Facebook helps you connect and share with <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the people in your life.</h2>
  
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images\foto.jpg" height ="200" width="500" /></td>

 
<td style="background-color: #F5FAFF;" width="600" height="450">
<br><br><h3 style="color:#0e1f5b"> Sign Up</h3>It's free and always will be.<hr>

<form id="signup"  method="post" action="post_Page.jsp">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:&nbsp;<input type="text" name="name1"><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name:&nbsp;<input type="text" name="name2" ><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Email:&nbsp;<input type="text" name="email1"><br>
&nbsp;Re-enter Email:&nbsp;<input type="text" name="email2"><br>
New Password:&nbsp;<input type="password" name="pass" ><br>
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
if(document.forms.login.loginMail.value=="")
{
    document.forms.login.loginMail.focus();
}
</script>
</body>
    </html>