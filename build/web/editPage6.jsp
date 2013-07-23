<%@ page import="java.sql.*;" %>
<html>
    <body>
        <%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        Connection con=null;
        Statement stmt2=null;
        String activities=request.getParameter("activities");
        String interests=request.getParameter("interests");
        String email_id=(String)session.getAttribute("loginName");        
        String user_id=(String)session.getAttribute("signup_mail");
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt2=con.createStatement();        
        stmt2.execute("UPDATE login_table SET activities='"+activities+"',interests='"+interests+"'WHERE email_id='"+user_id+"' OR email_id='"+email_id+"'");
        
        %>   
        <jsp:forward page="HomePage.jsp"/>
    </body>
</html>