<%@ page import="java.sql.*;" %>
<%@ page import="java.util.*;" %>
<%@ page import="java.text.*;" %>

<html>
    <head>
        
        <style type="text/css">
            b
            {
                    color:00008B;
            }
            
            a
            {
                text-decoration:none;
                color:00008B;
            }
            
        </style>
          <script language="Javascript">
              
       function accept_frnd()
       {
            
            alert("New Friend has been added.");

       }
       
       function post()
	{
         var str=document.getElementById('st').value;
         var str1=document.getElementById('search').value;
         var xmlhttp=null;
            try
		  {
                     // Firefox, Opera 8.0+, Safari
                     xmlhttp=new XMLHttpRequest();
		  }
		catch (e)
		  {
                     // Internet Explorer
		  try
		    {
                          xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		    }
		  catch (e)
		    {
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		  }
	
         if (xmlhttp==null)
	 {
            alert ("Your browser does not support AJAX!");
            return;
	 } 
         
         xmlhttp.onreadystatechange=function()
         {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("status").innerHTML=xmlhttp.responseText;
            }
        }
        
        
        xmlhttp.open("GET","post.jsp?status="+str+"&user_id="+str1,true);
        xmlhttp.send();
        

        }
        
            
        function search()
	{
         var str=document.getElementById('SearchFriends').value;
         
         var xmlhttp=null;
            try
		  {
                     // Firefox, Opera 8.0+, Safari
                     xmlhttp=new XMLHttpRequest();
		  }
		catch (e)
		  {
                     // Internet Explorer
		  try
		    {
                          xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		    }
		  catch (e)
		    {
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		  }
	
         if (xmlhttp==null)
	 {
            alert ("Your browser does not support AJAX!");
            return;
	 } 
         
         xmlhttp.onreadystatechange=function()
         {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("profile").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","friends_search.jsp?s="+str,true);
        xmlhttp.send();

        }

    function request()
	{
                  
         var xmlhttp=null;
            try
		  {
                     // Firefox, Opera 8.0+, Safari
                     xmlhttp=new XMLHttpRequest();
		  }
		catch (e)
		  {
                     // Internet Explorer
		  try
		    {
                          xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		    }
		  catch (e)
		    {
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		  }
	
         if (xmlhttp==null)
	 {
            alert ("Your browser does not support AJAX!");
            return;
	 } 
         
         xmlhttp.onreadystatechange=function()
         {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("profile").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","friend_req.jsp",true);
        xmlhttp.send();

        }

        function notification()
        
	{
        
         var xmlhttp=null;
            try
		  {
                     // Firefox, Opera 8.0+, Safari
                     xmlhttp=new XMLHttpRequest();
		  }
		catch (e)
		  {
                     // Internet Explorer
		  try   
		    {
                          xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		    }
		  catch (e)
		    {
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		  }
	
         if (xmlhttp==null)
	 {
            alert ("Your browser does not support AJAX!");
            return;
	 } 
         
         xmlhttp.onreadystatechange=function()
         {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("profile").innerHTML=xmlhttp.responseText;
            }
        }
        
        xmlhttp.open("GET","notifications.jsp",true);
        xmlhttp.send();

        }              
         
        function alertbox()
            {
                alert("Friend Request has been send." + "\n"+ "Please wait for the approval.");
            }
            
                
        function comment(id)
	{
        
            var str=document.getElementById(id).value;
      
            var xmlhttp=null;
            try
		  {
                     // Firefox, Opera 8.0+, Safari
                     xmlhttp=new XMLHttpRequest();
		  }
		catch (e)
		  {
                     // Internet Explorer
		  try
		    {
                          xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		    }
		  catch (e)
		    {
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		  }
	
         if (xmlhttp==null)
	 {
            alert ("Your browser does not support AJAX!");
            return;
	 } 
         
         xmlhttp.onreadystatechange=function()
         {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("comments").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","commentajax.jsp?c="+str+"&id="+id,true);
        xmlhttp.send();

        }

        
        function info(str)
	{
        
         var xmlhttp=null;
            try
		  {
                     // Firefox, Opera 8.0+, Safari
                     xmlhttp=new XMLHttpRequest();
		  }
		catch (e)
		  {
                     // Internet Explorer
		  try   
		    {
                          xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		    }
		  catch (e)
		    {
                          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		  }
	
         if (xmlhttp==null)
	 {
            alert ("Your browser does not support AJAX!");
            return;
	 } 
         
         xmlhttp.onreadystatechange=function()
         {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("info").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","UPPinfo.jsp?id="+str,true);
        xmlhttp.send();

        }
        </script>

    </head>
    
    <body style="color:black">
<table style="width:1340px;" >
<tr>
<td style="background-color:#3B5998; width:220px; height:30px; position:fixed; right:84%;">
  <%  if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        Connection con5=null;
        Class.forName("com.mysql.jdbc.Driver");
        con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        
        Statement stmt15=null;
        stmt15=con5.createStatement();    
        ResultSet rs15=null;
        String log_in=(String)session.getAttribute("loginName");
rs15=stmt15.executeQuery("SELECT * FROM friend_req_table WHERE `to`='"+log_in+"'" );
int count=0;
if(rs15!=null)
{
    while(rs15.next())
    {
        count++;
    }
}

out.println("<font color=white>&nbsp;<a href=HomePage.jsp><img src='images/logo.jpeg' height=30 width=80 /></a>");
if(count>0)
{
    out.println("<a href=# onclick=request()><img src='images/friend1.jpg' height=30 width=20 /></a>");    
}
else
{
    out.println("<a href=# onclick=request()><img src='images/friend.jpg' height=30 width=20 /></a>");    
}

out.println(" &nbsp;<a href=MAIL.jsp><img src='images/message.jpg' height=30 width=20 /></a>");
out.println(" &nbsp;<a href=# onclick=notification()><img src='images/notification.jpg' height=30 width=20 /></a></td>");


%>


<td style="background-color:#3B5998; width:800px;height:30px; position:fixed; right:25%;">
    
        <center><input type="text" id="SearchFriends" value="Search friends" onfocus="if(this.value=='Search friends') this.value='';" onblur="if(this.value=='') this.value='Search friends';" > 
                <input type="button" value="Search" onclick="search();"></center>
   
</td>	

    <td style="background-color:#3B5998; width:340px;height:30px;position:fixed; right:0%;">
        <center><b>
            <a href="HomePage.jsp" style="color:white;text-decoration:none;"> Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="unique_profile_page.jsp?search=<%=log_in%>" style="color:white;text-decoration:none;"> Profile</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp" style="color:white;text-decoration:none;">Logout</a></b></center></td>
</tr>

<tr  valign="top">
    <td style="background-color: white; width:220px; position:fixed; top:7%;">
        
                                
        <%
        
        Connection con=null;
        Statement stmt,stmt1,stmt2,stmt3,stmt4,stmt5,stmt6,stmt7,stmt8=null;
        ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs7,rs8=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        String eId=request.getParameter("search");
        out.println("<input type=hidden  value="+eId+" id=search>");
        %>
        
        <br><br>
        <a href="enlarge_photo.jsp?name=<%=eId%>"><img src="photo_view.jsp?name=<%=eId%>" height="175" width="175"><br></a>
        <%
        stmt=con.createStatement();  
        stmt1=con.createStatement();  
        stmt2=con.createStatement();   
        stmt3=con.createStatement();   
        stmt8=con.createStatement();   
        stmt4=con.createStatement();   
        stmt5=con.createStatement();   
        stmt6=con.createStatement();   
        stmt7=con.createStatement();   
        String friends=null;
        out.println("<br><a style=color:black;text-decoration:none; href=unique_profile_page.jsp?search="+eId+" ><img src=images/wall.jpg width=20 height=20 />Wall</a><br><a style=color:black;text-decoration:none; href=# name="+eId+" onclick=info(this.name);><img src=images/info.jpg width=20 height=20 />Info</a>");
        rs=stmt.executeQuery("SELECT * FROM friends_table WHERE user_loggedin='"+eId+"' ");
        out.println("<p style=color:grey;font-size:85%;><br><img src=images/friends.jpg width=20 height=20 />FRIENDS</p>");
            
        if(rs!=null)
            {
            while(rs.next())
            {   
                friends=rs.getString("friends");
                rs1=stmt1.executeQuery("SELECT * FROM login_table WHERE email_id='"+friends+"'");
                if(rs1!=null)
                    {
                        while(rs1.next())
                            {
                                if(friends.equals(log_in)|| friends.equals(eId))
                                {}
                                else
                                out.println("<a style=color:#00008B;text-decoration:none; href=unique_profile_page.jsp?search="+friends+"><img src=photo_view.jsp?name="+friends+" height=35 width=35>&nbsp;&nbsp;&nbsp;"+rs1.getString("first_name")+" "+rs1.getString("last_name")+"</a><br><br>  ");
                            }
                    }
            
            
                 }
            }    
            %>
        </select>
</td>
    
        <td style="background-color: white; width:800px; ">
            <div id="profile">
        <%
        String req=request.getParameter("req"); 
        rs5=stmt5.executeQuery("SELECT * FROM login_table WHERE email_id='"+eId+"'");
         if(rs5!=null)
         {
            while(rs5.next())
            {
                out.println("<br><h2>"+rs5.getString("first_name")+" "+rs5.getString("last_name"));
                if(req!=null)
            {
                  out.println("<input type=button value='Friend Request has been send.'"+" disabled>");
                  String sender_id=(String)session.getAttribute("loginName");
                  stmt6.execute("INSERT INTO friend_req_table (`from`,`to`) VALUES('"+sender_id+"','"+eId+"')");
            }
                out.println("</h2><hr>");
            }
         }
         
         %>            
        
         <div id="info"> 
            <form>
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Share : <b style=color:00008B>Post</b><br>
                <center>
                    <textarea rows="2" cols="60" id="st" ></textarea>
                <input type="button" value="Share" onclick="post()" ><br><br><hr></center>
            <div id="status"></div></form>
        <% 
             
        
        String friends_id=null;
        String fname=null;
        String lname=null;
        String st=null;
        String lastname=null;
        String firstname=null;
        
        rs2=stmt2.executeQuery("SELECT * FROM login_table WHERE email_id='"+eId+"'");
        if(rs2!=null)
        {
            while(rs2.next()) 
            {
                fname=rs2.getString("first_name");
                lname=rs2.getString("last_name");
                               
                rs3=stmt3.executeQuery("SELECT * FROM status_table WHERE (user_id='"+eId+"') OR (user_id='"+eId+"' AND post_from IS NOT NULL) ORDER BY Date DESC ");
                
                if(rs3!=null)
                {
                    while(rs3.next())
                    {   
                        st=rs3.getString("status");
                        String id=rs3.getString("id");
                        if(rs3.getString("post_from") ==null || rs3.getString("user_id  ").equals(session.getAttribute("Username")))
                            {
                                out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+eId+" > "+fname+" "+lname+"</b></a><br>");
                            }
                        else 
                            {
                                String email=rs3.getString("post_from");
                                rs8=stmt8.executeQuery("SELECT * FROM login_table WHERE email_id='"+email+"'");
        if(rs8!=null)
        {
            while(rs8.next())
            {
                firstname=rs8.getString("first_name");
                lastname=rs8.getString("last_name");
            }
        }
                                
                                out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+email+" > "+firstname+" "+lastname+"</a> &raquo;<a href=unique_profile_page.jsp?search="+eId+" >  "+fname+" "+lname+"</b></a><br>");
                            }
                  
                        %>
                        <a href="unique_profile_page.jsp?search=<%=eId%>"><img src="photo_view.jsp?name=<%=eId%>" height=50 width=50/></a>
                        <%
                           
                        out.println(""+rs3.getString("status")+"<br>");
                        out.println("<b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comments</b><br>");
                        out.println("<table width=500 bgcolor=#eceff5 >");
                               
                        rs4=stmt4.executeQuery("SELECT * FROM status_table WHERE user_id IS NULL AND id='"+id+"' AND comment IS NOT NULL");
                        if(rs4!=null)
                        {
                            while(rs4.next())
                            {
                                if(rs4.getString("comment")==null)
                                out.println("");    
                                else
                                {
                                    String from=rs4.getString("comment_from");
                                    rs7=stmt7.executeQuery("SELECT * FROM login_table WHERE email_id='"+from+"'");
                                    if(rs7!=null)
                                    {
                                        while(rs7.next())
                                        {
                                            out.println("<tr><td style=width:500px;>");
                                            fname=rs7.getString("first_name");
                                            lname=rs7.getString("last_name");
                                            out.println("<b style='color:#00008B;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+fname+" "+lname+"</b><br>");
                                            out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                            out.println("<a href=unique_profile_page.jsp?search="+from+"><img src=photo_view.jsp?name="+from+" height=35 width=35/></a>");
                                        }
                                    }
                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs4.getString("comment")+"<br><br>");
                                    out.println("<hr width=400></td></tr>");
                                    
                                    
                                 }
                            }
                        }
                               out.println("</table>");        out.println("<div id=comments></div>");               %>
            
                                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <textarea rows="1" cols="25" id="<%=id%>"></textarea>
                                                <input type="button" value="Post" id="<%=id%>" onclick="comment(this.id);"><br><br><hr> 
                                                             
                        <%
                        
                    }
                    
                    break;
                 }
              }
           }
                        %>     
      </div> 
    </td>
    <td style="background-color: white; width:320px;position:fixed;top:7%;">
           
   
            <hr>
        
        <b>Sponsored</b><hr><br>
        <b>HACK</b><br>
        <a href="http://www.hackthis.co.uk/forum/"><img src="images\hack.jpeg" height="50" width="150" /></a>
        <br>Learn Hacking Online!! Find different <br>tutorials on SQL Injection, XSS attacks<br> and various other tricks on hacking.
        <br><br><hr><br>
        <b>ZYNGA POKER</b><br>
        <a href="http://www.fulltiltpoker.com/"><img src="images\poker.jpg" height="50" width="150" /></a>
        <br>Play Poker Online!! Connecting the world <br> through Games. Playing poker with friends <br>is fun unlimited.
        <br><br><hr><br>
        <b>GODADDY.com</b><br>
        <a href="http://www.godaddy.com/"><img src="images\godaddy.jpeg" height="50" width="150" /></a>
        <br>Register & transfer domains for less.<br> Reliable hosting. Easy-to-use site builders.
        <br><br><hr><br>
    </td>
</tr>

</table>
</body>
</html>
