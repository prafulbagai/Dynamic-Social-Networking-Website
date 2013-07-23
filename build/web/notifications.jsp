<%@ page import="java.sql.*;"%>

<%

    int count=0,temp=0,i=1,perman=0;
    int id=0;
    Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");    
    ResultSet rs,rs1,rs2,rs4,rs5,rs6,rs7,rs8,rs9=null;
    Statement stmt,stmt1,stmt2,stmt3,stmt4,stmt5,stmt6,stmt7,stmt8,stmt9=null;
    stmt=con.createStatement();
    stmt7=con.createStatement();
    stmt5=con.createStatement();
    stmt6=con.createStatement();
    stmt3=con.createStatement();
    stmt4=con.createStatement();
    stmt1=con.createStatement();
    stmt2=con.createStatement();
    stmt8=con.createStatement();
    stmt9=con.createStatement();
    String user_id=(String)session.getAttribute("loginName");
    out.println("<br><br>");
    rs=stmt.executeQuery("SELECT * FROM status_table WHERE user_id='"+user_id+"' OR comment_from='"+user_id+"'");
    if(rs!=null)
    {
        while(rs.next())
        {
            id=rs.getInt("id");
            rs5=stmt5.executeQuery("SELECT * FROM status_table WHERE id='"+id+"'");
            if(rs5!=null)
            {
                while(rs5.next())
                {
                    temp++;
                }
            }
        }
    }    
    
    
    rs1=stmt1.executeQuery("SELECT * FROM notifications WHERE user_id='"+user_id+"'");
    if(rs1!=null)
    {
        while(rs1.next())
        {
            perman=rs1.getInt("permanent");
        }
        
    }
    count=temp-perman;
    String firstname=null;
    String lastname=null;
    String emailid=null;
    
    rs2=stmt2.executeQuery("SELECT * FROM status_table WHERE user_id='"+user_id+"' OR comment_from='"+user_id+"'");
    if(rs2!=null)
    {
    while(rs2.next())
    {
        id=rs2.getInt("id");
        
        rs4=stmt4.executeQuery("SELECT * FROM status_table WHERE id='"+id+"' ORDER BY comment_date DESC");
        if(rs4!=null)
        {
            while(rs4.next())
            {
                if(rs4.getString("comment_from")==null || rs4.getString("comment_from").equals(user_id))
                    { }
                    else
                    {
                        
                        String name=rs4.getString("comment_from");
                        rs7=stmt7.executeQuery("SELECT * FROM login_table  WHERE email_id='"+name+"'");
                        if(rs7!=null)
                        {
                            while(rs7.next())
                            {
                                    rs8=stmt.executeQuery("SELECT * FROM status_table WHERE id='"+id+"' AND user_id IS NOT NULL");
                                    if(rs8!=null)
                                    {
                                        while(rs8.next())
                                        {
                                            emailid=rs8.getString("user_id");
                                        
                                        rs9=stmt9.executeQuery("SELECT * FROM login_table  WHERE email_id='"+emailid+"'");    
                                        if(rs9!=null)
                                        {
                                            while(rs9.next())
                                            {
                                                firstname=rs9.getString("first_name");
                                                lastname=rs9.getString("last_name");
                                            }
                                        }
                                        
                                    }
                                        }
                                        if(i<=count)
                                {
                                    if(emailid.equals(user_id))
                                        out.println("<a href=unique_profile_page.jsp?search="+name+" ><img src=photo_view.jsp?name="+name+" height=35 width=35/> &nbsp;&nbsp;&nbsp;&nbsp;"+rs7.getString("first_name")+" " +rs7.getString("last_name")+"</a> <b style=color:black;> commented on </b>your <a href=unique_profile_page.jsp?search="+emailid+" > post.</a> <br><hr>");                                          
                                    else
                                        out.println("<a href=unique_profile_page.jsp?search="+name+" ><img src=photo_view.jsp?name="+name+" height=35 width=35/> &nbsp;&nbsp;&nbsp;&nbsp;"+rs7.getString("first_name")+" " +rs7.getString("last_name")+"</a> <b style=color:black;> commented on </b><a href=unique_profile_page.jsp?search="+emailid+" >"+firstname+" "+lastname+"'s post.</a> <br><hr>");    
                                    i++;
                                }
                                else
                                {
                                        if(emailid.equals(user_id))
                                        out.println("<a href=unique_profile_page.jsp?search="+name+" ><img src=photo_view.jsp?name="+name+" height=35 width=35/> &nbsp;&nbsp;&nbsp;&nbsp;"+rs7.getString("first_name")+" " +rs7.getString("last_name")+"</a> commented on your <a href=unique_profile_page.jsp?search="+emailid+" > post.</a> <br><hr>");                                          
                                    else
                                    out.println("<a href=unique_profile_page.jsp?search="+name+"><img src=photo_view.jsp?name="+name+" height=35 width=35/> &nbsp;&nbsp;&nbsp;&nbsp;"+rs7.getString("first_name")+" " +rs7.getString("last_name")+"</a> commented on <a href=unique_profile_page.jsp?search="+emailid+" >"+firstname+" "+lastname+"'s post.</a><br><hr>");    
                                    i++;
                                }    
                     
                                
                            }
                        }
                        
                    }
                    
                }
            }
        }
    }
    
    stmt3.execute("UPDATE notifications SET `permanent`='"+temp+"' WHERE user_id='"+user_id+"'"); 
    %>