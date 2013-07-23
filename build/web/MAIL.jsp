<%@page import="java.util.*;" %>

<html>
    <head>
                <script>
        function back()
        {
            document.msg.action="HomePage.jsp";
            document.msg.submit();
        }
        </script>

    </head>
    <body>
        
        <%
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        String email_id=(String)session.getAttribute("loginName");
        String receiver_id=request.getParameter("receiver_id");
        if(receiver_id==null)
        {
            receiver_id="";
        }
        %>
        <center><br><br><br>
            <table border="2" width="400" bgcolor="#eceff5">
                
                <form name="msg" id="msg" action="mail_sending.jsp" method="post">
                    <tr><td>From: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sender" id="sender" value="<%=email_id%>" style="color:grey;" disabled= "disabled"><br></td></tr>
                    <tr><td>Send to: &nbsp;<input type="text" name="receiver_id" id="receiver_id" value="<%=receiver_id%>"><br></td></tr>
                    <tr><td>Content: <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <textarea rows="5" cols="35" name="msg" id="msg"></textarea><br>
                    </td></tr>
                    <tr><td><p align="right"><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Home" onclick="back()"></p></td></tr>
                </form>    
            </table>
        </center>
        <script>
if(document.forms.msg.receiver_id.value=="")
{
    document.forms.msg.receiver_id.focus();
}

else
{
    document.forms.msg.msg.focus();
}

</script>

    </body>
</html>