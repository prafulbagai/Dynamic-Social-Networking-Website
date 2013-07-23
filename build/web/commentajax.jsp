<%@ page import="java.sql.*;" %>
<%@ page import="java.util.*;" %>
<%@ page import="java.text.*;" %>
<html>
    <body>
        
        <%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        java.util.Date dt1= new java.util.Date();
        String DATE_FORMAT = "yyyy-MM-dd-H-m-s";
        SimpleDateFormat sdf=new SimpleDateFormat(DATE_FORMAT);
        String dt=sdf.format(dt1);

        Connection con=null;
        Statement stmt,stmt1,stmt2=null;
        ResultSet rs,rs2=null;
        String comment=request.getParameter("c");
        String id=request.getParameter("id");
        String login_id=(String)session.getAttribute("loginName");
        String status=(String)session.getAttribute("status");
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        stmt1=con.createStatement(); 
        stmt2=con.createStatement(); 
        String fname=null;
        String lname=null;
             
        stmt.execute("INSERT INTO status_table (`comment`,`comment_date`,`comment_from`,`id`) VALUES('"+comment+"','"+dt+"','"+login_id+"','"+id+"')");
        rs=stmt1.executeQuery("SELECT * FROM status_table WHERE id='"+id+"' AND comment='"+comment+"'");
        rs2=stmt2.executeQuery("SELECT * FROM login_table WHERE email_id='"+login_id+"'");
            if (rs2!=null)
                { 
                    while(rs2.next())
                        {  
                            fname=rs2.getString("first_name");
                            lname=rs2.getString("last_name");
                            if(rs!=null)
                            {
                                while(rs.next())
                                {
                                    out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+login_id+" > "+fname+" "+lname+"<br><img src=photo_view.jsp?name="+login_id+" height=50 width=50/></a></b>");
                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs.getString("comment")+"<br>");
                                }
                            }            
                        }
                    }
        %>
    </body>
</html>