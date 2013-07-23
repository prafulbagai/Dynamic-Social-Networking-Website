<%@ page import="java.sql.*;" %>
<html>
    <body>

        
        <%
        java.util.Date dt= new java.util.Date();
        Connection con=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        Statement stmt1=null;
        Statement stmt9,stmt,stmt7,stmt2=null;
        stmt7=con.createStatement(); 
        stmt9=con.createStatement(); 
        ResultSet rs9,rs,rs1,rs7=null;
        String sender_id=(String)session.getAttribute("loginName");
        String log_in=(String)session.getAttribute("loginName");
        String name=request.getParameter("receiver_id");
        String receiver_id=request.getParameter("receiver_id");
        if(name!=null)
        {
        
        rs9=stmt9.executeQuery("SELECT * FROM login_table WHERE full_name='"+name+"'");
        if(rs9!=null)
        {
            while(rs9.next())
            {
                receiver_id=rs9.getString("email_id");
            }
        }
        }
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
        
        if(receiver_id=="" || msgContent=="" || flag==0 )
        {     
        out.println("Chat History not found.");
        }
        
        try{
        
        String Fname=null;
        String Lname=null;
        stmt=con.createStatement();    
        stmt1=con.createStatement(); 
        stmt2=con.createStatement(); 
        
        String user=(String)session.getAttribute("loginName");
        
        rs=stmt1.executeQuery("SELECT * FROM msg_table WHERE (Receiver='"+receiver_id+"' OR Receiver='"+log_in+"') && (Sender='"+log_in+"' OR Sender='"+receiver_id+"') ");
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
        
        %>
        
        <script>
            if(document.forms.msg.msg.value=="")
{
    document.forms.msg.msg.focus();
}

        </script>
</body></html>