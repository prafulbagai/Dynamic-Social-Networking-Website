<html>
    <body>
        <%if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }%>
        <center>
            <br><br><br><br><br><br><br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="farmville.jsp" style="color:black;text-decoration:none"><img src="images\farmville.jpg" height="30" width="30" />&nbsp;&nbsp;&nbsp;&nbsp;Zynga Farmville</a><br><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="football.jsp" style="color:black;text-decoration:none"><img src="images\football.jpg" height="30" width="30" />&nbsp;&nbsp;&nbsp;&nbsp;Football Tennis</a><br><br>
                <a href="golf.jsp" style="color:black;text-decoration:none"><img src="images\golf.jpg" height="30" width="30" />&nbsp;&nbsp;&nbsp;&nbsp;Golf </a>
        </center>
    </body>
</html>