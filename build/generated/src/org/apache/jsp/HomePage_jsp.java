package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;
import java.util.*;;
import java.text.*;;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            b\n");
      out.write("            {\n");
      out.write("                    color:00008B;\n");
      out.write("            }\n");
      out.write("            a\n");
      out.write("            {\n");
      out.write("                text-decoration:none;\n");
      out.write("                color:00008B;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <script language=\"Javascript\" type=\"text/javascript\">\n");
      out.write("            \n");
      out.write("       function accept_frnd()\n");
      out.write("       {\n");
      out.write("            \n");
      out.write("            alert(\"New Friend has been added.\");\n");
      out.write("\n");
      out.write("       }\n");
      out.write("       \n");
      out.write("       function editprofile()\n");
      out.write("       {\n");
      out.write("            document.form1.action=\"edit_profile_page1.jsp\";\n");
      out.write("            document.form1.submit();\n");
      out.write("       }\n");
      out.write("       \n");
      out.write("       function status()\n");
      out.write("\t{\n");
      out.write("         var str=document.getElementById('st').value;\n");
      out.write("         var xmlhttp=null;\n");
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
      out.write("                document.getElementById(\"status\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"status.jsp?status=\"+str,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    function comment(id)\n");
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
      out.write("        \n");
      out.write("        function chat(str)\n");
      out.write("\t{\n");
      out.write("        \n");
      out.write("         var xmlhttp=null;\n");
      out.write("            try\n");
      out.write("\t\t  {\n");
      out.write("                     // Firefox, Opera 8.0+, Safari\n");
      out.write("                     xmlhttp=new XMLHttpRequest();\n");
      out.write("\t\t  }\n");
      out.write("\t\tcatch (e)\n");
      out.write("\t\t  {\n");
      out.write("                     // Internet Explorer\n");
      out.write("\t\t  try   \n");
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
      out.write("                document.getElementById(\"profile\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"chat.jsp?receiver_id=\"+str,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("   function search()\n");
      out.write("\t{\n");
      out.write("        \n");
      out.write("         var str=document.getElementById('Search').value;\n");
      out.write("        \n");
      out.write("         var xmlhttp=null;\n");
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
      out.write("                document.getElementById(\"profile\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"friends_search.jsp?s=\"+str,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    function request()\n");
      out.write("\t{\n");
      out.write("                  \n");
      out.write("         var xmlhttp=null;\n");
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
      out.write("                document.getElementById(\"profile\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"friend_req.jsp\",true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function notification()\n");
      out.write("        \n");
      out.write("\t{\n");
      out.write("        \n");
      out.write("         var xmlhttp=null;\n");
      out.write("            try\n");
      out.write("\t\t  {\n");
      out.write("                     // Firefox, Opera 8.0+, Safari\n");
      out.write("                     xmlhttp=new XMLHttpRequest();\n");
      out.write("\t\t  }\n");
      out.write("\t\tcatch (e)\n");
      out.write("\t\t  {\n");
      out.write("                     // Internet Explorer\n");
      out.write("\t\t  try   \n");
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
      out.write("                document.getElementById(\"profile\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        xmlhttp.open(\"GET\",\"notifications.jsp\",true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        function games()\n");
      out.write("        \n");
      out.write("\t{\n");
      out.write("        \n");
      out.write("         var xmlhttp=null;\n");
      out.write("            try\n");
      out.write("\t\t  {\n");
      out.write("                     // Firefox, Opera 8.0+, Safari\n");
      out.write("                     xmlhttp=new XMLHttpRequest();\n");
      out.write("\t\t  }\n");
      out.write("\t\tcatch (e)\n");
      out.write("\t\t  {\n");
      out.write("                     // Internet Explorer\n");
      out.write("\t\t  try   \n");
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
      out.write("                document.getElementById(\"profile\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        xmlhttp.open(\"GET\",\"games.jsp\",true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    </head>\n");
      out.write("<body style=\"color:black ;\">\n");
      out.write("<table style=\"width:1340px;\" >\n");
      out.write("<tr>\n");
      out.write("<td style=\"background-color:#3B5998; width:220px; height:30px; position:fixed; right:84%;\">\n");
      out.write("  ");
  
        if(session.getAttribute("Username")==null)
            {
response.sendRedirect("firstPage.jsp"); 
            }
        
        Connection con5=null;
        Class.forName("com.mysql.jdbc.Driver");
        con5=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        
        Statement stmt15,stmt25,stmt35,stmt45=null;
        stmt15=con5.createStatement();    
        stmt25=con5.createStatement();    
        stmt35=con5.createStatement();    
        stmt45=con5.createStatement();    
        ResultSet rs15,rs25,rs35,rs45=null;
        String log_in=(String)session.getAttribute("loginName");
rs15=stmt15.executeQuery("SELECT * FROM friend_req_table WHERE `to`='"+log_in+"'" );
int count=0,iid=0;
if(rs15!=null)
{
    while(rs15.next())
    {
        count++;
    }
}
int temp=0,perman=0;
rs25=stmt25.executeQuery("SELECT * FROM status_table WHERE user_id='"+log_in+"' OR comment_from='"+log_in+"'");
    if(rs25!=null)
    {
        while(rs25.next())
        {
            iid=rs25.getInt("id");
            rs35=stmt35.executeQuery("SELECT * FROM status_table WHERE id='"+iid+"'");
            if(rs35!=null)
            {
                while(rs35.next())
                {
                    temp++;
                }
            }
        }
    }    
    
    
    rs45=stmt45.executeQuery("SELECT * FROM notifications WHERE user_id='"+log_in+"'");
    if(rs45!=null)
    {
        while(rs45.next())
        {
            perman=rs45.getInt("permanent");
        }
        
    }
    
out.println("<font color=white>&nbsp;<a href=HomePage.jsp><img src='images/logo.jpeg' height=30 width=80 /></a>");
if(count>0)
{
    out.println("<a href=# onclick=request()><img src='images/friend1.jpg' height=30 width=20 /></a>");    
}
else
{
    out.println("<a href=# onclick=request()><img src='images/friend.jpg' height=30 width=20 /></a>");    
}

out.println(" &nbsp;<a href=MAIL.jsp><img src='images/message.jpg' height=30 width=20 /></a>");

/*if(temp>perman)
{
    out.println(" &nbsp;<a href=# onclick=notification()><img src='images/notification1.jpg' height=30 width=20 /></a></td>");
}
else
{*/
out.println(" &nbsp;<a href=# onclick=notification()><img src='images/notification.jpg' height=30 width=20 /></a></td>");
//}


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<td style=\"background-color:#3B5998; width:800px;height:30px; position:fixed; right:25%;\">\n");
      out.write("    \n");
      out.write("        <center><input type=\"text\" id=\"Search\" value=\"Search friends\" onfocus=\"if(this.value=='Search friends') this.value='';\" onblur=\"if(this.value=='') this.value='Search friends';\" > \n");
      out.write("        \n");
      out.write("                <input type=\"button\" value=\"Search\" onclick=\"search();\"></center>\n");
      out.write("   \n");
      out.write("</td>\t\n");
      out.write("\n");
      out.write("    <td style=\"background-color:#3B5998; width:340px;height:30px;position:fixed; right:0%;\">\n");
      out.write("        <center><b>\n");
      out.write("            <a href=\"HomePage.jsp\" style=\"color:white;text-decoration:none;\"> Home</a>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            \n");
      out.write("            <a href=\"unique_profile_page.jsp?search=");
      out.print(log_in);
      out.write("\" style=\"color:white;text-decoration:none;\"> Profile</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href=\"logout.jsp\" style=\"color:white;text-decoration:none;\">Logout</a></b></center></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr  valign=\"top\">\n");
      out.write("    <td style=\"background-color: white; width:220px; position:fixed; top:7%;\">\n");
      out.write("    ");
          
        Connection con2=null;
        Statement stmt,stmt6,stmt7,stmt10,stmt11,stmt12=null;
        ResultSet rs,rs6,rs7,rs10,rs11,rs12=null;
        Class.forName("com.mysql.jdbc.Driver");
        con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt=con2.createStatement();     
        stmt6=con2.createStatement();     
        stmt7=con2.createStatement();    
        stmt10=con2.createStatement();    
        stmt11=con2.createStatement();    
        stmt12=con2.createStatement();    
        String user_id=(String)session.getAttribute("loginName");
        String frndreq_send_id=(String)session.getAttribute("anonymous_id");
        rs6=stmt6.executeQuery("SELECT * FROM login_table WHERE email_id='"+user_id+"'");
        String friends=null;
        out.println("<h4 style=color:#00008B> WELCOME<br>");
      out.write("\n");
      out.write("        <a href=\"enlarge_photo.jsp?name=");
      out.print(user_id);
      out.write("\"><img src=\"photo_view.jsp?name=");
      out.print(user_id);
      out.write("\" height=\"175\" width=\"175\"/><br></a>\n");
      out.write("        ");

        if (rs6!=null)
            {
                while(rs6.next())
                    {
                        out.println(rs6.getString("first_name")+" "+ rs6.getString("last_name")+"</h4>");
                    }
            }
      out.write("<br>\n");
      out.write("           <p style=\"color:grey;font-size:85%; \">FAVOURITES</p>\n");
      out.write("           <a href=\"HomePage.jsp\" style=\"color:black;text-decoration:none;\"><img src=\"images\\newsfeed.jpg\" width=\"20\" height=\"20\" />News Feed</a><br>\n");
      out.write("           <a href=\"MAIL.jsp\" style=\"color:black;text-decoration:none;\"><img src=\"images\\messageicon.jpg\" width=\"20\" height=\"20\" />Messages</a><br>\n");
      out.write("           <a href=\"photos.jsp\" style=\"color:black;text-decoration:none;\"><img src=\"images\\photos.jpg\" width=\"20\" height=\"20\" />Photos</a><br></b><br>\n");
      out.write("          <p style=\"color:grey;font-size:85%; \">APPS</p>\n");
      out.write("        <a href=\"#\" onclick=\"games()\" style=\"color:black;text-decoration:none;\"><img src=\"images\\game.jpg\" width=\"20\" height=\"20\" />Games</a><br><br> ");

        rs=stmt.executeQuery("SELECT * FROM friends_table WHERE user_loggedin='"+user_id+"' ");
        out.println("<p style='color:grey; font-size:85%;' >CHAT</p>");
      out.write("\n");
      out.write("        <select name=\"friends\" onchange=\"chat(this.value);\">\n");
      out.write("            <option name=\"Select Friends\" >Select Friends</option>\n");
      out.write("            \n");
      out.write("            ");
   if(rs!=null)
            {
            while(rs.next())
            {   
                friends=rs.getString("friends");
                rs7=stmt7.executeQuery("SELECT * FROM login_table WHERE email_id='"+friends+"'");
                if(rs7!=null)
                    {
                        while(rs7.next())
                            { if(rs.getString("friends").equals(user_id))
                                  {}
                                  else{
                            
      out.write("\n");
      out.write("                           \n");
      out.write("                <option name=\"");
rs.getString("friends");
      out.write('"');
      out.write('>');
out.println(rs7.getString("first_name")+" "+rs7.getString("last_name"));
      out.write("</option>                    \n");
      out.write("                ");
            }}
                    }
            
            
                 }
            }    
            
      out.write("\n");
      out.write("        </select>\n");
      out.write("</td>\n");
      out.write("\n");
      out.write("        <td style=\"background-color: white; width:800px; \">\n");
      out.write("        <div id=\"profile\"> \n");
      out.write("            <form name=\"form1\"><br><center><br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"button\" value=\"Edit Profile\" onclick=\"editprofile();\"></center></form><hr>\n");
      out.write("                               \n");
      out.write("            <form>\n");
      out.write("                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                Share : <b style=color:00008B>Status</b><br>\n");
      out.write("                <center><textarea rows=\"2\" cols=\"60\" id=\"st\" onfocus=\"if(this.value=='What's on your mind?') this.value='';\" onblur=\"if(this.value=='') this.value='What's on your mind?';\" ></textarea>\n");
      out.write("                <input type=\"button\" value=\"Share\" onclick=\"status();\" ><br><br><hr></center>\n");
      out.write("                \n");
      out.write("            <div id=\"status\"></div></form>\n");
      out.write("            \n");
      out.write("        ");
 
        Connection con=null;
        Statement stmt3,stmt4,stmt5,stmt8,stmt9,stmt16=null;
        ResultSet rs3,rs4,rs5,rs8,rs9,rs16=null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt3=con.createStatement();   
        stmt16=con.createStatement();   
        stmt4=con.createStatement();   
        stmt5=con.createStatement();   
        stmt8=con.createStatement();   
        rs4=stmt4.executeQuery("SELECT * FROM friends_table WHERE user_loggedin='"+user_id+"'");
        String friends_id=null;
        String fname=null;
        String lname=null;
        String lastname=null;
        String firstname=null;        
        String st=null;
        String from=null;
        
        if(rs4!=null)
            {
                while(rs4.next())
                    {
                        friends_id=rs4.getString("friends");
                        rs5=stmt5.executeQuery("SELECT * FROM login_table WHERE email_id='"+friends_id+"'");
                        if(rs5!=null)
                            {
                                while(rs5.next())
                                    {
                                        fname=rs5.getString("first_name");
                                        lname=rs5.getString("last_name");
                                        rs3=stmt3.executeQuery("SELECT * FROM status_table  WHERE user_id='"+friends_id+"' ORDER BY RAND() LIMIT 10");
                                        if(rs3!=null)
                                        {
                                            while(rs3.next())
                                            {   
                                                    
                                                    st=rs3.getString("status");
                                                    String id=rs3.getString("id");
                                                    if(rs3.getString("post_from")==null || rs3.getString("post_from").equals(session.getAttribute("Username")))
                                                    {
                                                        out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+friends_id+" > "+fname+" "+lname+"</b></a><br>");
                                                    }
                                                                            else 
                            {
                                String email=rs3.getString("post_from");
                                rs16=stmt16.executeQuery("SELECT * FROM login_table WHERE email_id='"+email+"'");
        if(rs16!=null)
        {
            while(rs16.next())
            {
                firstname=rs16.getString("first_name");
                lastname=rs16.getString("last_name");
            }
        }
                                
                                out.println("<br><b  style=color:#00008B;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=unique_profile_page.jsp?search="+email+" > "+firstname+" "+lastname+"</a> &raquo;<a href=unique_profile_page.jsp?search="+friends_id+" >  "+fname+" "+lname+"</b></a><br>");
                            }

                                                    
      out.write("\n");
      out.write("                                                    <a href=\"unique_profile_page.jsp?search=");
      out.print(friends_id);
      out.write("\"><img src=\"photo_view.jsp?name=");
      out.print(friends_id);
      out.write("\"height=50 width=50/></a>\n");
      out.write("                                                    ");

                                                    
                                                    out.println(""+rs3.getString("status")+"<br>");
                                                    out.println("<b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comments</b><br>");
                                                    out.println("<table width=500 bgcolor=#eceff5 >");
                                                    rs8=stmt8.executeQuery("SELECT * FROM status_table WHERE user_id IS NULL AND id='"+id+"' AND comment IS NOT NULL");
                                                    if(rs8!=null)
                                                    {
                                                        while(rs8.next())
                                                            {
                                                                if(rs8.getString("comment")==null)
                                                                    out.println("");    
                                                                else
                                                                {
                                                                    from=rs8.getString("comment_from");
                                                                    rs=stmt.executeQuery("SELECT * FROM login_table WHERE email_id='"+from+"'");
                                                                    if(rs!=null)
                                                                    {
                                                                        while(rs.next())
                                                                        {
                                                                            out.println("<tr><td style=width:500px;>");
                                                                            fname=rs.getString("first_name");
                                                                            lname=rs.getString("last_name");
                                                                            out.println("<b style='color:#00008B;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+fname+" "+lname+"</b><br>");
                                                                            out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                                            out.println("<a href=unique_profile_page.jsp?search="+from+"><img src=photo_view.jsp?name="+from+" height=35 width=35/></a>");
                                                                        }
                                                                    }
                                                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs8.getString("comment")+"<br><br>");
                                                                    out.println("<hr width=400></td></tr>");
                                                                    
                                                                }    
                                                                
                                                            }
                                                      }
                                               out.println("</table>"); out.println("<div id='comments'></div>");
                                              
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                                <textarea rows=\"1\" cols=\"25\" id=\"");
      out.print(id);
      out.write("\"></textarea>\n");
      out.write("                                                <input type=\"button\" value=\"Post\" id=\"");
      out.print(id);
      out.write("\" onclick=\"comment(this.id);\"><br><br><hr> \n");
      out.write("                                                ");

                                                
                                               }
                                        break;  }
                                     }
                          }
                     }
             }
       
      out.write("     \n");
      out.write("      </div> \n");
      out.write("    </td>\n");
      out.write("    <td style=\"background-color: white; width:320px;position:fixed;top:7%;\">\n");
      out.write("                \n");
      out.write("   ");
     
        Connection con1=null;
        java.util.Date dt1= new java.util.Date();
        String DATE_FORMAT = "yyyy-MM-dd";
        SimpleDateFormat sdf=new SimpleDateFormat(DATE_FORMAT);
        String dt=sdf.format(dt1);
                
        Statement stmt1,stmt14=null;
        ResultSet rs1,rs14=null;
        
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/praful","root","");
        stmt1=con1.createStatement();      
        stmt14=con1.createStatement();      
        int flag=0;
        String email_id=null;
        rs14=stmt14.executeQuery("SELECT friends FROM friends_table WHERE user_loggedin='"+user_id+"'");
        out.println("<b><br>Birthdays</b><br>");
        if(rs14!=null)
        {
            while(rs14.next())
        {
            email_id=rs14.getString("friends");
        rs1=stmt1.executeQuery("SELECT * FROM login_table WHERE email_id='"+email_id+"' AND dob='"+dt+"' ");
        if (rs1!=null){  
            
            while(rs1.next())
                {
                   
                   out.println("<br> <a href=unique_profile_page.jsp?search="+rs1.getString("email_id")+">"+"<img src=photo_view.jsp?name="+rs1.getString("email_id")+" height=50 width=50>"+rs1.getString("first_name")+" "+rs1.getString("last_name")+"</a>"); 
                   flag=1;
                }
                }
                }
                }
        if(flag==0)        
                out.println("No Birthday's Today.");
                }
                
           catch(Exception e){out.println("***********"+e);}
           
        
      out.write("  \n");
      out.write("        <br><br><hr>\n");
      out.write("        <b>Sponsored</b><hr><br>\n");
      out.write("        <b>HACK</b><br>\n");
      out.write("        <a href=\"http://www.hackthis.co.uk/forum/\"><img src=\"images\\hack.jpeg\" height=\"50\" width=\"150\" /></a>\n");
      out.write("        <br>Learn Hacking Online!! Find different <br>tutorials on SQL Injection, XSS attacks<br> and various other tricks on hacking.\n");
      out.write("        <br><br><hr><br>\n");
      out.write("        <b>ZYNGA POKER</b><br>\n");
      out.write("        <a href=\"http://www.fulltiltpoker.com/\"><img src=\"images\\poker.jpg\" height=\"50\" width=\"150\" /></a>\n");
      out.write("        <br>Play Poker Online!! Connecting the world <br> through Games. Playing poker with friends <br>is fun unlimited.\n");
      out.write("        <br><br><hr><br>\n");
      out.write("        <b>GODADDY.com</b><br>\n");
      out.write("        <a href=\"http://www.godaddy.com/\"><img src=\"images\\godaddy.jpeg\" height=\"50\" width=\"150\" /></a>\n");
      out.write("        <br>Register & transfer domains for less. Reliable hosting. Easy-to-use site builders.\n");
      out.write("        <br><br><hr><br>\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("</body>\n");
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
