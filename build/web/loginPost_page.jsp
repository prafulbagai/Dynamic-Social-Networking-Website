<jsp:useBean class="myBean.login_detail" id="LDetail" scope="request">
    <jsp:setProperty name="LDetail" property="*"/>
</jsp:useBean>

<%

if(!(LDetail.Lvalidate()))
    {
    %>
   
<jsp:forward page="login_check.jsp"/>   
   
   <% }
    else
        {
        
        %>
        
     <jsp:forward page="validate.jsp"/>   
        
        <%
        }
%>
