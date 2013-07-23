<%@ page import="java.sql.*;" %>

<html>
    <body>
        <%

        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        String search=request.getParameter("s");
        out.println("<h3>"+search+"</h3>");
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        rs=stmt.executeQuery("SELECT * FROM login_table WHERE last_name LIKE '"+search+"%' OR first_name LIKE '"+search+"%'");
        int flag=0;
        
        if(rs!=null)
            {
               while(rs.next())
                   {
                      flag=1;
                      out.println("<br> <a style='color:#00008B;text-decoration:none;' href=unique_profile_page.jsp?search="+rs.getString("email_id")+"><img src=photo_view.jsp?name="+rs.getString("email_id")+" height=35 width=35>&nbsp;&nbsp;&nbsp;&nbsp;<b>"+rs.getString("first_name")+" "+rs.getString("last_name")+"</b><br>"+rs.getString("email_id")+"</a>"+"<br><br><hr>"); 
                   }
            }
            
         if(flag==0)
             {
                out.println("No Result Found with <b>"+search+"</b>");
             }
              %>
    </body>
   
</html>