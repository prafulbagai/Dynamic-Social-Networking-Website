<%@ page import="java.sql.*" %>
        <%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        Connection con=null;
        Statement stmt10,stmt11=null;
        ResultSet rs10,rs11=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt10=con.createStatement();     
        stmt11=con.createStatement();     

        String to_id=(String)(session.getAttribute("loginName"));
        rs10=stmt10.executeQuery("SELECT * FROM friend_req_table WHERE `to`='"+to_id+"'");
        int flag=0;
        if(rs10!=null)
        {
            while(rs10.next())
            {
                        String eId=rs10.getString("from");
                        rs11=stmt11.executeQuery("SELECT * FROM login_table WHERE email_id='"+eId+"'");
                        if(rs11!=null)
                        {
                            while(rs11.next())
                            {
                                flag=1;
                                %>
                                <br><br>
                                <a href="unique_profile_page.jsp?search=<%=eId%>"><img src="photo_view.jsp?name=<%=eId%>" height="50" width="50"/></a>
                                <%   out.println(rs11.getString("first_name")+" "+rs11.getString("last_name"));
                                %>
                                <form name="form2" action="accept_friend.jsp?user=<%=eId%>&id=1" method="post">
                                    <input type="submit"  value="Confirm" onclick=accept_frnd();>
                                </form>
                                <form name="form2" action="accept_friend.jsp?user=<%=eId%>&id=2" method="post">
                                    <input type="submit" value="Ignore" >
                                </form>
            <hr>                    
                           <% }
                        }
            }
         }
            
            if(flag==0)
            {
                out.println("<center><br><br><b>No</b> Friend Request.</center>");
            }
            
            %>