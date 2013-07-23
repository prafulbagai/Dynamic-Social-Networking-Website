<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html><head>
    <script type="text/javascript">
        function Home()
        {
            document.form1.action="HomePage.jsp";
            document.form1.submit();
        }
        
    </script>
</head>

<%
    String saveFile="";
    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0))
    {
        DataInputStream in = new DataInputStream(request.getInputStream());
        int formDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        while(totalBytesRead < formDataLength)
        {
            byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
            totalBytesRead += byteRead;
        }
        String file = new String(dataBytes);
        saveFile = file.substring(file.indexOf("filename=\"") + 10);
        saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
        saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
        int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1,contentType.length());
        int pos;
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
        File ff = new File(saveFile);
        FileOutputStream fileOut = new FileOutputStream(ff);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();
%>
<br><table border="2"><tr><td><b>You have successfully upload the file:</b>

<% out.println(saveFile);%></td></tr>
<tr><td><form name="form1"><input style="align:center;" type="button" value="Home" onclick="Home();"></form></td></tr></table>
<%
        Connection connection = null;
        String connectionURL = "jdbc:mysql://localhost:3306/praful";
        ResultSet rs = null;
        PreparedStatement psmnt = null;
        FileInputStream fis;
        String name=(String)session.getAttribute("loginName");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(connectionURL, "root", "");
            File f = new File(saveFile);
            psmnt = connection.prepareStatement("insert into photo_table(image_type,image_name) values(?,'"+name+"')");
            fis = new FileInputStream(f);
            psmnt.setBinaryStream( 1, (InputStream)fis, (int)(f.length()));
            int s = psmnt.executeUpdate();

            if(s>0)
            {
                System.out.println("Uploaded successfully !");
                
            }
            else
            {
                System.out.println("Error!");
            }
        }
        catch(Exception e){e.printStackTrace();}
    }
%>

