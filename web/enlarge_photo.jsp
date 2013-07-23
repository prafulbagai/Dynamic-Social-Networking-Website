<%@page import="java.sql.*,java.io.*"%>

<%
try{
        InputStream sImage;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        Statement stmt=con.createStatement();
        String name=request.getParameter("name");
        ResultSet rs=stmt.executeQuery("SELECT image_type FROM photo_table WHERE image_name='"+name+"'");
        if(rs.last()) 
        {
            byte[] bytearray = new byte[1048576];
            int size=0;
            sImage = rs.getBinaryStream(1);
            response.reset();
            response.setContentType("image/jpeg");
            while((size=sImage.read(bytearray))!= -1 )
            {
                response.getOutputStream().write(bytearray,0,size);
            }
        }
        con.close();
    }     
catch(Exception ex){
out.println("error :"+ex);
}
%>