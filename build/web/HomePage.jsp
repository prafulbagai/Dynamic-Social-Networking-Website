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
        
        
        <script language="Javascript" type="text/javascript">
            
       function accept_frnd()
       {
            
            alert("New Friend has been added.");

       }
       
       function editprofile()
       {
            document.form1.action="edit_profile_page1.jsp";
            document.form1.submit();
       }
       
       function status()
	{
         var str=document.getElementById('st').value;
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
        xmlhttp.open("GET","status.jsp?status="+str,true);
        xmlhttp.send();

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
        
        function chat(str)
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
        xmlhttp.open("GET","chat.jsp?receiver_id="+str,true);
        xmlhttp.send();

        }
        
   function search()
	{
        
         var str=document.getElementById('Search').value;
        
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
        
        function games()
        
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
        
        xmlhttp.open("GET","games.jsp",true);
        xmlhttp.send();

        }
    </script>
    </head>
<body style="color:black ;">
<table style="width:1340px;" >
<tr>
<td style="background-color:#3B5998; width:220px; height:30px; position:fixed; right:84%;">
  <%  
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); 
            }
        
        Connection con5=null;
        Class.forName("com.mysql.jdbc.Driver");
        con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        
        Statement stmt15,stmt25,stmt35,stmt45=null;
        stmt15=con5.createStatement();    
        stmt25=con5.createStatement();    
        stmt35=con5.createStatement();    
        stmt45=con5.createStatement();    
        ResultSet rs15,rs25,rs35,rs45=null;
        String log_in=(String)session.getAttribute("loginName");
rs15=stmt15.executeQuery("SELECT * FROM friend_req_table WHERE `to`='"+log_in+"'" );
int count=0,iid=0;
if(rs15!=null)
{
    while(rs15.next())
    {
        count++;
    }
}
int temp=0,perman=0;
rs25=stmt25.executeQuery("SELECT * FROM status_table WHERE user_id='"+log_in+"' OR comment_from='"+log_in+"'");
    if(rs25!=null)
    {
        while(rs25.next())
        {
            iid=rs25.getInt("id");
            rs35=stmt35.executeQuery("SELECT * FROM status_table WHERE id='"+iid+"'");
            if(rs35!=null)
            {
                while(rs35.next())
                {
                    temp++;
                }
            }
        }
    }    
    
    
    rs45=stmt45.executeQuery("SELECT * FROM notifications WHERE user_id='"+log_in+"'");
    if(rs45!=null)
    {
        while(rs45.next())
        {
            perman=rs45.getInt("permanent");
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

/*if(temp>perman)
{
    out.println(" &nbsp;<a href=# onclick=notification()><img src='images/notification1.jpg' height=30 width=20 /></a></td>");
}
else
{*/
out.println(" &nbsp;<a href=# onclick=notification()><img src='images/notification.jpg' height=30 width=20 /></a></td>");
//}

%>


<td style="background-color:#3B5998; width:800px;height:30px; position:fixed; right:25%;">
    
        <center><input type="text" id="Search" value="Search friends" onfocus="if(this.value=='Search friends') this.value='';" onblur="if(this.value=='') this.value='Search friends';" > 
        
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
        Connection con2=null;
        Statement stmt,stmt6,stmt7,stmt10,stmt11,stmt12=null;
        ResultSet rs,rs6,rs7,rs10,rs11,rs12=null;
        Class.forName("com.mysql.jdbc.Driver");
        con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con2.createStatement();     
        stmt6=con2.createStatement();     
        stmt7=con2.createStatement();    
        stmt10=con2.createStatement();    
        stmt11=con2.createStatement();    
        stmt12=con2.createStatement();    
        String user_id=(String)session.getAttribute("loginName");
        String frndreq_send_id=(String)session.getAttribute("anonymous_id");
        rs6=stmt6.executeQuery("SELECT * FROM login_table WHERE email_id='"+user_id+"'");
        String friends=null;
        out.println("<h4 style=color:#00008B> WELCOME<br>");%>
        <a href="enlarge_photo.jsp?name=<%=user_id%>"><img src="photo_view.jsp?name=<%=user_id%>" height="175" width="175"/><br></a>
        <%
        if (rs6!=null)
            {
                while(rs6.next())
                    {
                        out.println(rs6.getString("first_name")+" "+ rs6.getString("last_name")+"</h4>");
                    }
            }%><br>
           <p style="color:grey;font-size:85%; ">FAVOURITES</p>
           <a href="HomePage.jsp" style="color:black;text-decoration:none;"><img src="images\newsfeed.jpg" width="20" height="20" />News Feed</a><br>
           <a href="MAIL.jsp" style="color:black;text-decoration:none;"><img src="images\messageicon.jpg" width="20" height="20" />Messages</a><br>
           <a href="photos.jsp" style="color:black;text-decoration:none;"><img src="images\photos.jpg" width="20" height="20" />Photos</a><br></b><br>
          <p style="color:grey;font-size:85%; ">APPS</p>
        <a href="#" onclick="games()" style="color:black;text-decoration:none;"><img src="images\game.jpg" width="20" height="20" />Games</a><br><br> <%
        rs=stmt.executeQuery("SELECT * FROM friends_table WHERE user_loggedin='"+user_id+"' ");
        out.println("<p style='color:grey; font-size:85%;' >CHAT</p>");%>
        <select name="friends" onchange="chat(this.value);">
            <option name="Select Friends" >Select Friends</option>
            
            <%   if(rs!=null)
            {
            while(rs.next())
            {   
                friends=rs.getString("friends");
                rs7=stmt7.executeQuery("SELECT * FROM login_table WHERE email_id='"+friends+"'");
                if(rs7!=null)
                    {
                        while(rs7.next())
                            { if(rs.getString("friends").equals(user_id))
                                  {}
                                  else{
                            %>
                           
                <option name="<%rs.getString("friends");%>"><%out.println(rs7.getString("first_name")+" "+rs7.getString("last_name"));%></option>                    
                <%            }}
                    }
            
            
                 }
            }    
            %>
        </select>
</td>

        <td style="background-color: white; width:800px; ">
        <div id="profile"> 
            <form name="form1"><br><center><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="Edit Profile" onclick="editprofile();"></center></form><hr>
                               
            <form>
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Share : <b style=color:00008B>Status</b><br>
                <center><textarea rows="2" cols="60" id="st" onfocus="if(this.value=='What's on your mind?') this.value='';" onblur="if(this.value=='') this.value='What's on your mind?';" ></textarea>
                <input type="button" value="Share" onclick="status();" ><br><br><hr></center>
                
            <div id="status"></div></form>
            
        <% 
        Connection con=null;
        Statement stmt3,stmt4,stmt5,stmt8,stmt9,stmt16=null;
        ResultSet rs3,rs4,rs5,rs8,rs9,rs16=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt3=con.createStatement();   
        stmt16=con.createStatement();   
        stmt4=con.createStatement();   
        stmt5=con.createStatement();   
        stmt8=con.createStatement();   
        rs4=stmt4.executeQuery("SELECT * FROM friends_table WHERE user_loggedin='"+user_id+"'");
        String friends_id=null;
        String fname=null;
        String lname=null;
        String lastname=null;
        String firstname=null;        
        String st=null;
        String from=null;
        
        if(rs4!=null)
            {
                while(rs4.next())
                    {
                        friends_id=rs4.getString("friends");
                        rs5=stmt5.executeQuery("SELECT * FROM login_table WHERE email_id='"+friends_id+"'");
                        if(rs5!=null)
                            {
                                while(rs5.next())
                                    {
                                        fname=rs5.getString("first_name");
                                        lname=rs5.getString("last_name");
                                        rs3=stmt3.executeQuery("SELECT * FROM status_table  WHERE user_id='"+friends_id+"' ORDER BY RAND() LIMIT 10");
                                        if(rs3!=null)
                                        {
                                            while(rs3.next())
                                            {   
                                                    
                                                    st=rs3.getString("status");
                                                    String id=rs3.getString("id");
                                                    if(rs3.getString("post_from")==null || rs3.getString("user_id").equals(session.getAttribute("Username")))
                                                    {
                                                        out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+friends_id+" > "+fname+" "+lname+"</b></a><br>");
                                                    }
                                                                            else 
                            {
                                                       
                                String email=rs3.getString("post_from");
                                rs16=stmt16.executeQuery("SELECT * FROM login_table WHERE email_id='"+email+"'");
        if(rs16!=null)
        {
            while(rs16.next())
            {
                firstname=rs16.getString("first_name");
                lastname=rs16.getString("last_name");
            }
        }
                                
                                out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+email+" > "+firstname+" "+lastname+"</a> &raquo;<a href=unique_profile_page.jsp?search="+friends_id+" >  "+fname+" "+lname+"</b></a><br>");
                            }

                                                    %>
                                                    <a href="unique_profile_page.jsp?search=<%=friends_id%>"><img src="photo_view.jsp?name=<%=friends_id%>"height=50 width=50/></a>
                                                    <%
                                                    
                                                    out.println(""+rs3.getString("status")+"<br>");
                                                    out.println("<b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comments</b><br>");
                                                    out.println("<table width=500 bgcolor=#eceff5 >");
                                                    rs8=stmt8.executeQuery("SELECT * FROM status_table WHERE user_id IS NULL AND id='"+id+"' AND comment IS NOT NULL");
                                                    if(rs8!=null)
                                                    {
                                                        while(rs8.next())
                                                            {
                                                                if(rs8.getString("comment")==null)
                                                                    out.println("");    
                                                                else
                                                                {
                                                                    from=rs8.getString("comment_from");
                                                                    rs=stmt.executeQuery("SELECT * FROM login_table WHERE email_id='"+from+"'");
                                                                    if(rs!=null)
                                                                    {
                                                                        while(rs.next())
                                                                        {
                                                                            out.println("<tr><td style=width:500px;>");
                                                                            fname=rs.getString("first_name");
                                                                            lname=rs.getString("last_name");
                                                                            out.println("<b style='color:#00008B;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+fname+" "+lname+"</b><br>");
                                                                            out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                                            out.println("<a href=unique_profile_page.jsp?search="+from+"><img src=photo_view.jsp?name="+from+" height=35 width=35/></a>");
                                                                        }
                                                                    }
                                                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs8.getString("comment")+"<br><br>");
                                                                    out.println("<hr width=400></td></tr>");
                                                                    
                                                                }    
                                                                
                                                            }
                                                      }
                                               out.println("</table>"); out.println("<div id='comments'></div>");
                                              %>
                                                
                                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <textarea rows="1" cols="25" id="<%=id%>"></textarea>
                                                <input type="button" value="Post" id="<%=id%>" onclick="comment(this.id);"><br><br><hr> 
                                                <%
                                                
                                               }
                                        break;  }
                                     }
                          }
                     }
             }
       %>     
      </div> 
    </td>
    <td style="background-color: white; width:320px;position:fixed;top:7%;">
                
   <%     
        Connection con1=null;
        java.util.Date dt1= new java.util.Date();
        String DATE_FORMAT = "yyyy-MM-dd";
        SimpleDateFormat sdf=new SimpleDateFormat(DATE_FORMAT);
        String dt=sdf.format(dt1);
                
        Statement stmt1,stmt14=null;
        ResultSet rs1,rs14=null;
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt1=con1.createStatement();      
        stmt14=con1.createStatement();      
        int flag=0;
        String email_id=null;
        rs14=stmt14.executeQuery("SELECT friends FROM friends_table WHERE user_loggedin='"+user_id+"'");
        out.println("<b><br>Birthdays</b><br>");
        if(rs14!=null)
        {
            while(rs14.next())
        {
            email_id=rs14.getString("friends");
        rs1=stmt1.executeQuery("SELECT * FROM login_table WHERE email_id='"+email_id+"' AND dob='"+dt+"' ");
        if (rs1!=null){  
            
            while(rs1.next())
                {
                   
                   out.println("<br> <a href=unique_profile_page.jsp?search="+rs1.getString("email_id")+">"+"<img src=photo_view.jsp?name="+rs1.getString("email_id")+" height=50 width=50>"+rs1.getString("first_name")+" "+rs1.getString("last_name")+"</a>"); 
                   flag=1;
                }
                }
                }
                }
        if(flag==0)        
                out.println("No Birthday's Today.");
                }
                
           catch(Exception e){out.println("***********"+e);}
           
        %>  
        <br><br><hr>
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
        <br>Register & transfer domains for less. Reliable hosting. Easy-to-use site builders.
        <br><br><hr><br>
    </td>
</tr>

</table>
</body>
</html>