<%@ page import="java.sql.*;" %>

<html>
    <head>
        <style type="text/css">
            b
            {
                    color:00008B;
            }
            
        </style>
        
        <script language="Javascript" type="text/javascript">
            
       function accept_frnd()
       {
            
            alert("New Friend has been added.");

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
        </script>
    </head>
    
    <body>
        
        <table style="width:1340px;" >
<tr>
    <td style="background-color:#3B5998; width:220px; height:30px; position:fixed; right:84%;">
        <%  
        if(session.getAttribute("Username")==null)
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
        <a href="#" onclick="games()" style="color:black;text-decoration:none;"><img src="images\game.jpg" width="20" height="20" />Games</a><br><br>
        <%rs=stmt.executeQuery("SELECT * FROM friends_table WHERE user_loggedin='"+user_id+"' ");
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
                            {%>
                <option name="<%rs.getString("friends");%>"><%out.println(rs7.getString("first_name")+" "+rs7.getString("last_name"));%></option>                    
                <%            }
                    }
            
            
                 }
            }    
            %>
        </select>
       
</td>

        <td style="background-color: white; width:800px; ">
        <div id="profile"> 
 
        <%
        java.util.Date dt= new java.util.Date();
        Connection con=null;
        Statement stmt1=null;
        Statement stmt2=null;
        ResultSet rs1=null;
        String sender_id=request.getParameter("sender");
        String receiver_id=request.getParameter("receiver_id");
        String msgContent=request.getParameter("msg");
        int flag=0;
        
        rs7=stmt7.executeQuery("SELECT * FROM login_table WHERE email_id='"+receiver_id+"'");
        if(rs7!=null)
        {
            while(rs7.next())
                if(rs7.getString("email_id").equals(receiver_id))
                {
                    flag=1;
                    break;
                }
                    
        }
        
        if(receiver_id=="" || msgContent=="" || flag==0)
        {     
            %>
            <jsp:forward page="MAIL.jsp"/>   
            <%
        }
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        String Fname=null;
        String Lname=null;
        stmt=con.createStatement();    
        stmt1=con.createStatement(); 
        stmt2=con.createStatement(); 
        String user=(String)session.getAttribute("loginName");
               
        stmt.execute("INSERT INTO msg_table (`Receiver`,`Sender`,`Content`,`Date`) VALUE('"+receiver_id+"','"+sender_id+"','"+msgContent+"','"+dt+"')");
        rs=stmt1.executeQuery("SELECT * FROM msg_table WHERE (Receiver='"+receiver_id+"' OR Receiver='"+sender_id+"') && (Sender='"+sender_id+"' OR Sender='"+receiver_id+"') ");
        out.println("<br><br><br>");
        if(rs!=null){
            
                while(rs.next())
                   {
                      String id=rs.getString("sender");
                      
                      if(!(log_in.equals(id)))
                      {    
                        
                      rs1=stmt2.executeQuery("SELECT * FROM login_table WHERE email_id='"+id+"' ");
                      
                      if(rs1!=null){
                        while(rs1.next())
                        {
                            Fname=rs1.getString("first_name");
                            Lname=rs1.getString("last_name");
                        }
                    }
                    
                    out.println("<a style=text-decoration:none; href=unique_profile_page.jsp?search="+id+" ><img src=photo_view.jsp?name="+id+" height=30 width=30><b style=color:00008B;> &nbsp;&nbsp;&nbsp;&nbsp;"+Fname+" "+Lname+" : </b></a>");
                    }
                    else
                    {
                          out.println("<a style=text-decoration:none; href=unique_profile_page.jsp?search="+id+" ><img src=photo_view.jsp?name="+id+" height=30 width=30><b style=color:00008B;> &nbsp;&nbsp;&nbsp;&nbsp;Me : </b></a>");
                    }
                    out.println(rs.getString("Content")+"<p style=font-size:80% >"+rs.getString("Date")+"</p>");
                    
                    }
            
                    }
               
                    %>
        <form name=msg action='mail_sending.jsp?receiver_id=<%=receiver_id%>&sender=<%=sender_id%>' method=post >
                    <textarea rows="2" cols="60" name="msg" id="msg"></textarea>
            
                    <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" value="Reply"></center>
        </form>
        <%
        }catch(Exception e){out.println("*******"+e);}
        %>    </div> 
    </td>

    <td style="background-color: white; width:320px;position:fixed;top:7%;">
        
            <hr>
        <b>Sponsored</b><hr><br>
        <b>HACK</b><br>
        <a href="http://www.hackthis.co.uk/forum/"><img src="images\hack.jpeg" height="50" width="150" /></a>
        <br>Learn Hacking Online!! Find different tutorials on SQL Injection, XSS attacks and various other tricks on hacking.
        <br><br><hr><br>
        <b>ZYNGA POKER</b><br>
        <a href="http://www.fulltiltpoker.com/"><img src="images\poker.jpg" height="50" width="150" /></a>
        <br>Play Poker Online!! Connecting the world through Games. Playing poker with friends is fun unlimited.
        <br><br><hr><br>
        <b>GODADDY.com</b><br>
        <a href="http://www.godaddy.com/"><img src="images\godaddy.jpeg" height="50" width="150" /></a>
        <br>Register & transfer domains for less. Reliable hosting. Easy-to-use site builders.
        <br><br><hr><br>
    </td>
</tr></table>

        <script>
if(document.forms.msg.msg.value=="")
{
    document.forms.msg.msg.focus();
}

</script>

        </body>
</html>
