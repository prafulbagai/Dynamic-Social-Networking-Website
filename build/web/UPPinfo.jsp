<%@ page import="java.sql.*;" %>
<html>
    <head>
        <script language="Javascript">
            function alertbox()
            {
                alert("Friend Request has been send." + "\n"+ "Please wait for the approval.");
                document.form1.action="edit_profile_page3.jsp";
                document.form1.submit();
            }
            
        </script>
        
        <style type="text/css">
           
            b
            {
                color:grey;
            }
            
        </style>
    </head>
    <body style="color:red;">
        
        <%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        Connection con=null;
        Statement stmt,stmt1=null;
        ResultSet rs,rs1=null;
        Class.forName("com.mysql.jdbc.Driver");
        String friend_name=(String)request.getParameter("f");
        String eId=request.getParameter("id");//email
        
        if(friend_name!=null)
        {
            out.println("<h3>"+friend_name+"</h3>");
        }     
            
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();   
        Statement stmt2,stmt3=null;
        stmt2=con.createStatement();   
        stmt3=con.createStatement();   
        ResultSet rs2,rs3=null;
        String sender_id=(String)session.getAttribute("loginName");
        String ignore=(String)session.getAttribute("ignored");
        session.setAttribute("anonymous_id",eId);
        session.setAttribute("frnd_id",eId);
        stmt1=con.createStatement();       
        String id=null;
        rs2=stmt2.executeQuery("SELECT * FROM login_table WHERE full_name='"+friend_name+"'");
        if(rs2!=null)
            while(rs2.next())
                {
                    id=rs2.getString("email_id");
                }
        rs1=stmt1.executeQuery("SELECT friends FROM friends_table WHERE user_loggedin='"+sender_id+"' ");
        int flag=0;
            if(rs1!=null)
            {
               while(rs1.next())
                   {
                           if((rs1.getString("friends").equals(eId)) || (rs1.getString("friends").equals(id)))
                          {
                              flag=1;
                              break;
                          }
                      rs3=stmt3.executeQuery("SELECT * FROM friend_req_table WHERE `from`='"+sender_id+"' ");
                      if(rs3!=null)
                      {
                          while(rs3.next())
                          {
                                                   
                           if((rs3.getString("to").equals(eId)) || (rs3.getString("to").equals(id)))
                         {
                            out.println("<p style=align:center;><input type=button value='Friend Request has been send.' "+" disabled></p>");
                            flag=1;
                            break ;
                          }
                           }
                       }
                      else
                          {
                          flag=0;
                          }
                      }   
                  }
            
       
                      
            String req=request.getParameter("req");
            if(flag==0 && req==null)
                             { 
                             
                             %>
                              <form name="form1" action ="unique_profile_page.jsp?search=<%=eId%>&req=1" method="post">
                              <input type="submit" value="Add as Friend" onclick="alertbox();">
                              </form>
                         <% } 
             
                        
        rs=stmt.executeQuery("SELECT * FROM login_table WHERE (full_name='"+friend_name+"') OR (email_id='"+eId+"')");
        
        if(rs!=null)
            {   
                while(rs.next())
                    {
                        out.println("<br><b style=color:black;>BASIC INFORMATION</b><hr>");
                        out.println("<b>About me</b>: "+rs.getString("about_me")+"<br>");
                        out.println("<b>Sex</b>: "+rs.getString("sex")+"<br>");
                        out.println("<b>Languages Known</b>: "+rs.getString("language")+"<br>");
                        out.println("<b>Interested in</b>: "+rs.getString("interested_in")+"<br>");
                        out.println("<hr><b style=color:black;>CONTACT INFORMATION</b> <hr>");
                        out.println("<b>Address</b>: "+rs.getString("address")+"<br>");
                        out.println("<b>Neighbourhood</b>: "+rs.getString("neighbourhood")+"<br>");
                        out.println("<b>Current City</b>: "+rs.getString("city")+"<br>");
                        out.println("<b>Zip</b>: "+rs.getString("zip")+"<br>");
                        out.println("<b>Email Id</b>: "+rs.getString("email_id")+"<br>");
                        out.println("<hr><b style=color:black;>EDUCATION AND WORK</b> <hr>");
                        out.println("<b>Employer:</b>: "+rs.getString("employer")+"<br>");
                        out.println("<b>College</b>: "+rs.getString("college")+"<br>");
                        out.println("<b>High School</b>: "+rs.getString("school")+"<br>");
                        out.println("<hr><b style=color:black;>PHILOSOPHY</b> <hr>");
                        out.println("<b>Religion</b>: "+rs.getString("religion")+"<br>");
                        out.println("<b>Political Views</b>: "+rs.getString("political")+"<br>");
                        out.println("<b>People who Inspire you</b>: "+rs.getString("inspiration")+"<br>");
                        out.println("<b>Favorite Quotations</b>: "+rs.getString("quotation")+"<br>");
                        out.println("<hr><b style=color:black;>ARTS AND ENTERTAINMENT</b> <hr>");
                        out.println("<b>Music</b>: "+rs.getString("music")+"<br>");
                        out.println("<b>Books</b>: "+rs.getString("books")+"<br>");
                        out.println("<b>Movies</b>: "+rs.getString("movies")+"<br>");
                        out.println("<b>Television</b>: "+rs.getString("tv")+"<br>");
                        out.println("<b>Games</b>: "+rs.getString("games")+"<br>");
                        out.println("<hr><b style=color:black;>SPORTS</b> <hr>");
                        out.println("<b>Sports You Play</b>: "+rs.getString("sports")+"<br>");
                        out.println("<b>Favourite Teams</b>: "+rs.getString("fav_team")+"<br>");
                        out.println("<b>Favourite Athletes</b>: "+rs.getString("fav_athletes")+"<br>");
                        out.println("<hr><b style=color:black;>ACTIVITIES AND INTERESTS</b> <hr>");
                        out.println("<b>Activities</b>: "+rs.getString("activities")+"<br>");
                        out.println("<b>Interests</b>: "+rs.getString("interests")+"<br><br><hr>");
                    }
            }
            
   %>
       
    </body>
    
</html>
