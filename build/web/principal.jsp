<%-- 
    Document   : principal
    Created on : Jan 8, 2015, 8:47:37 PM
    Author     : absalom
--%>

<%@page import="DTO.Alumno"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            Alumno a = (Alumno) session.getAttribute("dto");
            if (a == null) {
                response.sendRedirect("index.jsp?err=Necesita inicio de sesión");
                return;
            }

            out.println("Bienvenido " + a.getNombre());
        %>
        <br>
    <form action="cerrarSesion.jsp" method="post" name="frmcs">
        <input type="submit" value="Cerrar Sesión" >
    </form>
</body>
</html>
