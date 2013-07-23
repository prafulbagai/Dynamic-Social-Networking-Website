<html>
    <head>
        <script>
        function back()
        {
            document.form1.action="HomePage.jsp";
            document.form1.submit();
        }
        </script>
    </head>
    
    <body>
        <%
        
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        
        %>
        <form enctype="multipart/form-data" name="form1"action="upload_photo.jsp" method="post">
            <br><br><br>
            <center><table border="2" bgcolor="#eceff5">
                <tr><center><td colspan="2"><p align="center"><b>UPLOAD THE FILE</b><center></td></tr>
                <tr><td><b>Choose the file To Upload:</b></td>
                <td><input type="file" name="file"></td></tr>
                <tr><td colspan="2"><p align="right">
                <input type="submit" value="Upload" >&nbsp;&nbsp;&nbsp; <input type="button" value="Back" onclick="back()"></p>   </td></tr>
                <table>
            </center> 
         </form>
    </body>
</html>