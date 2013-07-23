<jsp:useBean class="myBean.login_detail" id="LDetail" scope="request"/>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*;" %>

<html>
    <body>

<%        
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        String eMail1=LDetail.getLoginMail();
        String pass1=LDetail.getLoginPass();
        session.setAttribute("loginName",eMail1);
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        int flag=0;
        rs = stmt.executeQuery("SELECT * FROM login_table WHERE email_id='"+eMail1+"' ") ;
        
                        
            if(rs!=null)
            {
            while(rs.next())
            {
            if((rs.getString("pass").equals(pass1))) 
            {
                response.sendRedirect("HomePage.jsp");
                flag=1;
                session.setAttribute("Username",eMail1);
                break;
            }
            else
                {
             request.setAttribute("error","Incorrect EmailId and Password.");
                RequestDispatcher rd=request.getRequestDispatcher("firstPage.jsp");
                rd.forward(request,response);
                
                }
            }
            }
            if(flag==0)
            {
                request.setAttribute("error","Incorrect EmailId and Password.");
                RequestDispatcher rd=request.getRequestDispatcher("firstPage.jsp");
                rd.forward(request,response);
            }
               
            
            
%>
    </body>
</html>
