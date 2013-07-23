package myBean;
import java.sql.*;
import java.io.*;
import java.util.*;

public class image
{
  /*-------------------------
   *   Get the Blob image
   *------------------------*/
  public static byte[] getPhoto (Connection conn, String NumPhoto)
       throws Exception, SQLException
  {
    String req = "" ;
    Blob img ;
    byte[] imgData = null ;
    Statement stmt = conn.createStatement ();
    ResultSet rs  = stmt.executeQuery ( "Select image_type From photo_table Where image_name = '"+NumPhoto+"'"); 
    
    while (rs.next ())
    {    
      img = rs.getBlob(1);
      imgData = img.getBytes(1,(int)img.length());
    }    
    
    return imgData ;
  }
  
} 
