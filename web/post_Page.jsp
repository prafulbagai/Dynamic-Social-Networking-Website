<jsp:useBean class="myBean.userDetail" id="uDetail" scope="request">
    <jsp:setProperty name="uDetail" property="*"/>
</jsp:useBean>
<%@ page import="java.sql.*;" %>
<%  

if(!(uDetail.validate()))
    {
    
    %>
   
<jsp:forward page="login_check.jsp"/>   
   
   <% }
    else
        {

        Connection con=null;
        Statement stmt=null;
        Statement stmt3=null;
        Statement stmt2=null;
        String eName1=request.getParameter("name1");
        String eName2=request.getParameter("name2");
        String eemail1=request.getParameter("email1");
        session.setAttribute("signup_mail",eemail1);
        session.setAttribute("Username",eemail1);
        session.setAttribute("loginName",eemail1);
        String eemail2=request.getParameter("email2");
        String ppass=request.getParameter("pass");
        String mmonth=request.getParameter("month");
        String ddate=request.getParameter("date");
        String yyear=request.getParameter("year");
        String dob=null;
        if(mmonth==null || ddate==null || yyear ==null)
            {
            dob="0000-00-00";
            }
        else
            {
            dob= yyear + "-"+ mmonth + "-"+ ddate;
            }
            
        String ssex=request.getParameter("sex");
        String full_name=eName1+" "+eName2;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        stmt2=con.createStatement();        
        stmt3=con.createStatement();        
        stmt.execute("INSERT INTO login_table (`first_name`,`last_name`,`full_name`,`email_id`,`email_id2`,`pass`,`dob`,`sex`) VALUE('"+eName1+"','"+eName2+"','"+full_name+"','"+eemail1+"','"+eemail2+"','"+ppass+"','"+dob+"','"+ssex+"')");
        stmt2.execute("INSERT INTO notifications (`user_id`,`permanent`) VALUES('"+eemail1+"','0')");
        stmt3.execute("INSERT INTO friends_table(`user_loggedin`,`friends`)VALUES('"+eemail1+"','"+eemail1+"')");
%>

        %>
        
     <jsp:forward page="edit_profile_page1.jsp"/>   
        
        <%
        }
%>