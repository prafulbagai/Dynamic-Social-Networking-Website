<jsp:useBean class="myBean.image" id="photo" scope="request">
    <jsp:setProperty name="photo" property="*"/>
</jsp:useBean>

<%@ page import="java.sql.*,java.io.*;" %>
<%
if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
  Connection con = null;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
  Statement stmt=null;
  stmt=con.createStatement();
  ResultSet rs=null;
  //String name=(String)session.getAttribute("loginName");
  String name=request.getParameter("name");
  String anonymous="anonymous";
  rs=stmt.executeQuery("SELECT image_type FROM photo_table WHERE image_name='"+name+"'");
  int flag=0;
  if(rs!=null)  
       {
            while(rs.next())
            {
                flag=1;
                byte[] imgData = photo.getPhoto( con, name  ) ;   
                // display the image
                response.setContentType("image/jpg");
                OutputStream o = response.getOutputStream();
                o.write(imgData);
                o.flush(); 
                o.close();
                
            }
       }  
    if(flag==0)
        {
                
                byte[] imgData = photo.getPhoto( con, anonymous  ) ;   
                // display the image
                response.setContentType("image/jpg");
                OutputStream o = response.getOutputStream();
                o.write(imgData);
                o.flush(); 
                o.close();

        }

%>