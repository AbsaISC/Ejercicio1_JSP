<%-- 
    Document   : error
    Created on : Jan 11, 2015, 12:16:17 AM
    Author     : absalom
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Error Exceptions</title>
        <link href="css/estilos.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <% String de = (String) request.getParameter("de");%>
        <p class="tituloError"> A ocurrido un Error <i class="error"> <%= de%> </i>
            La Excepcion fue = <i class="error"> <%= exception%> </i><br/>
            <% System.out.println(exception.toString());%>
        </p>
    </body>
</html>