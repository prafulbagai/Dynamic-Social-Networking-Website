package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class post_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script type=\"text/javascript\" >\n");
      out.write("            function comment(id)\n");
      out.write("\t{\n");
      out.write("        \n");
      out.write("            var str=document.getElementById(id).value;\n");
      out.write("      \n");
      out.write("            var xmlhttp=null;\n");
      out.write("            try\n");
      out.write("\t\t  {\n");
      out.write("                     // Firefox, Opera 8.0+, Safari\n");
      out.write("                     xmlhttp=new XMLHttpRequest();\n");
      out.write("\t\t  }\n");
      out.write("\t\tcatch (e)\n");
      out.write("\t\t  {\n");
      out.write("                     // Internet Explorer\n");
      out.write("\t\t  try\n");
      out.write("\t\t    {\n");
      out.write("                          xmlhttp=new ActiveXObject(\"Msxml2.XMLHTTP\");\n");
      out.write("\t\t    }\n");
      out.write("\t\t  catch (e)\n");
      out.write("\t\t    {\n");
      out.write("                          xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("\t\t    }\n");
      out.write("\t\t  }\n");
      out.write("\t\n");
      out.write("         if (xmlhttp==null)\n");
      out.write("\t {\n");
      out.write("            alert (\"Your browser does not support AJAX!\");\n");
      out.write("            return;\n");
      out.write("\t } \n");
      out.write("         \n");
      out.write("         xmlhttp.onreadystatechange=function()\n");
      out.write("         {\n");
      out.write("            if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"comments\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"commentajax.jsp?c=\"+str+\"&id=\"+id,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); // GO TO LOGIN PAGE
            }
        java.util.Date dt= new java.util.Date();
        Connection con=null;
        Statement stmt=null;
        Statement stmt1,stmt3=null;
        Statement stmt2=null;
        Statement stmt8=null;
        ResultSet rs,rs1=null;
        ResultSet rs2,rs8=null;
        String status=request.getParameter("status");
        String to=request.getParameter("user_id");
        
        session.setAttribute("status",status);
        String user_id=(String)session.getAttribute("loginName");
        session.setAttribute("user_id",user_id);
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con.createStatement();        
        stmt8=con.createStatement();        
        stmt1=con.createStatement(); 
        stmt2=con.createStatement(); 
        String fname=null;
        String lname=null;
        rs=stmt.executeQuery("SELECT * FROM status_table ORDER BY id DESC");
        int id=0;;
        if(rs!=null)
        {
            while(rs.next())
            {
               id=rs.getInt("id");
               break;
            }
        }
        id+=1;
String eId=null;        
        String firstname=null;
        String lastname=null;
        stmt.execute("INSERT INTO status_table (`user_id`,`post_from`,`status`,`Date`,`id`) VALUE('"+to+"','"+user_id+"','"+status+"','"+dt+"','"+id+"')");
        rs1=stmt1.executeQuery("SELECT * FROM status_table WHERE (user_id='"+user_id+"' AND status='"+status+"') OR (user_id='"+to+"' AND post_from IS NOT NULL) ");
        rs2=stmt2.executeQuery("SELECT * FROM login_table WHERE email_id='"+user_id+"'");
            
        if (rs2!=null)
        {
            while(rs2.next())
            {
                
                fname=rs2.getString("first_name");
                lname=rs2.getString("last_name");
                if(rs1!=null)
                    {
                        while(rs1.next())
                        {
                            if(rs1.getString("post_from") ==null || rs1.getString("post_from").equals(session.getAttribute("Username")))
                            {
                                out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+eId+" > "+fname+" "+lname+"</b></a><br>");
                            }
                        else 
                            {
                                String email=rs1.getString("post_from");
                                rs8=stmt8.executeQuery("SELECT * FROM login_table WHERE email_id='"+email+"'");
        if(rs8!=null)
        {
            while(rs8.next())
            {
                firstname=rs8.getString("first_name");
                lastname=rs8.getString("last_name");
            }   
        }
                                
                                out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+email+" > "+firstname+" "+lastname+"</a> &raquo;<a href=unique_profile_page.jsp?search="+eId+" >  "+fname+" "+lname+"</b></a><br>");
                            }

                            out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+user_id+" > "+fname+" "+lname+"<br><img src=photo_view.jsp?name="+user_id+" height=50 width=50/></a></b>");
                            out.println(status);
                            //id =rs1.getInt("id");
                            out.println("<b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comments</b><br>");
                        
      out.write("\n");
      out.write("                              <div id=comments></div>\n");
      out.write("                        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        <textarea rows=\"1\" cols=\"25\" id=\"");
      out.print(id);
      out.write("\"></textarea>\n");
      out.write("                        ");

                            out.println("<input type=button value=Post id="+id+" onclick=comment(this.id)><br><br><hr>");
                            break;
                         }
                      }            
              }   
        }
                       
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
