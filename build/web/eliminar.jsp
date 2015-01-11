<%-- 
    Document   : eliminar
    Created on : Jan 11, 2015, 1:38:56 AM
    Author     : absalom
--%>
<%@page import="DAO.AlumnoDAO"%>
<%@page import="DAO.AlumnoDAO"%>
<%@page import="DTO.Alumno"%>
<%@page errorPage="errorException.jsp?de=eliminar.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <%
           session=request.getSession(false);
           if(session==null){
               response.sendRedirect("index.jsp");
               return;
           }
               
            String id=request.getParameter("idalumno");
            if(id==null){
                response.sendRedirect("principal.jsp?exito=elemento no encontrado");
                return;
            }
            Alumno dto2=new Alumno();
            dto2.setIdalumno(Integer.valueOf(id));
            AlumnoDAO dao=new AlumnoDAO();
            dao.delete(dto2);
            response.sendRedirect("principal.jsp?exito=Eliminado correctamente");
        %>
    </body>
</html>
