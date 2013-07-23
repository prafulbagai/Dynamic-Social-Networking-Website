<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <body>
              <form id="modify_user" action="updation.jsp" method="post">

<%      String modifyname1 =request.getParameter("first_name");
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        String query1="SELECT * FROM login_table WHERE first_name='"+modifyname1+"'";
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        rs=stmt.executeQuery(query1);
        if(rs!=null)
            {
             while(rs.next())
            {       %>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:&nbsp;<input type="text" name="name1" value="<%= rs.getString("first_name")  %>"> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name:&nbsp;<input type="text" name="name2" value="<%= rs.getString("last_name")  %>"><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Email:&nbsp;<input type="text" name="email1" value="<%= rs.getString("email_id")  %>"><br>
&nbsp;Re-enter Email:&nbsp;<input type="text" name="email2" value="<%= rs.getString("email_id2")  %>"><br>
New Password:&nbsp;<input type="password" name="password1">
<input type="submit" value="submit"><%
            }
            }
            
        
       %>
       
       
</form>

       
        </body>
</html>
