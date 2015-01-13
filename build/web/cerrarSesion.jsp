<%-- 
    Document   : cerrarSesion
    Created on : Jan 10, 2015, 4:29:23 PM
    Author     : absalom
--%>
<%@page errorPage="errorException.jsp?de=cerrarSession.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CerrarSesion</title>
    </head>
    <body>
        <%
            session.removeAttribute("dto");
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
