<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>
<html>
    <body>
        <%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
//        String update_name= request.getParameter("modifyname1");
        Connection con=null;
        Statement stmt=null;
        String eName1=request.getParameter("name1");
        String eName2=request.getParameter("name2");
        String eemail1=request.getParameter("email1");
        String eemail2=request.getParameter("email2");
        String ppass=request.getParameter("password1");
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        stmt.execute("UPDATE login_table SET last_name='"+eName2+"', email_id='"+eemail1+"',email_id2='"+eemail2+"',pass='"+ppass+"'  WHERE first_name='big' ");
        %>  

    
    </body>
</html>
