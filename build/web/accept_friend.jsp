<%@ page import="java.sql.*;" %>
<%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        try{
        Connection con=null;
        Statement stmt=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();    
        String receiver_id=(String)session.getAttribute("loginName");
        String sender_id=request.getParameter("user");
        String id=request.getParameter("id");
        String accept="1";
        String ignore="2";
        if(id.equals(accept))
        {
            
            stmt.execute("INSERT INTO friends_table (`user_loggedin`,`friends`) VALUE('"+sender_id+"','"+receiver_id+"') ");
            stmt.execute("INSERT INTO friends_table (`user_loggedin`,`friends`) VALUE('"+receiver_id+"','"+sender_id+"') ");
            stmt.execute("DELETE FROM friend_req_table WHERE `from`='"+sender_id+"' AND `to`='"+receiver_id+"'");
            %>
            <script language="Javascript">
                
            alert("New Friend has been added.");
                
            </script>    
    
            <%
        }
        
        if(id.equals(ignore))
        {
            stmt.execute("DELETE FROM friend_req_table WHERE `from`='"+sender_id+"' AND `to`='"+receiver_id+"'");
        }
        
         }
           catch(Exception e){out.println("***********"+e);}
          %>
          <jsp:forward page="HomePage.jsp"/>   