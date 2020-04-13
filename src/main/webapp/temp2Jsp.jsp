<%-- 
    Document   : tempJsp
    Created on : Jan 24, 2020, 6:28:50 PM
    Author     : dimit
--%>

<%@page import="model.CrudUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%= request.getAttribute("request")%>
            <% // CrudUser c = (CrudUser)request.getAttribute("userinrequest");%>
            <%--<%= c.getId() %>--%>
        </div>
        <div>
            <%= session.getAttribute("session")%>
            <% // CrudUser cs = (CrudUser)session.getAttribute("userinsession");%>
            <%--<%= cs.getId() %>--%>
        </div>
        <div>
            <%= application.getAttribute("app")%>
        </div>
    </body>
</html>
