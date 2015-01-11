<%-- 
    Document   : principal
    Created on : Jan 8, 2015, 8:47:37 PM
    Author     : absalom
--%>

<%@page import="DAO.AlumnoDAO"%>
<%@page import="DTO.Alumno"%>
<%@page import="java.util.List"%>
<%@page errorPage="errorException.jsp?de=principal.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>
        <%

            Alumno a = (Alumno) session.getAttribute("dto");
            if (a == null) {
                response.sendRedirect("index.jsp?err=Necesita inicio de sesión");
                return;
            }
            if (request.getParameter("exito") != null) {
                out.println(request.getParameter("exito"));
            }
            out.println("Bienvenido " + a.getNombre());
            List<Alumno> alumnos = null;
            AlumnoDAO dao = new AlumnoDAO();
            alumnos = dao.loadAll();

        %>
        <div>
            <form action="cerrarSesion.jsp" method="post" name="frmcs">
                <input type="submit" value="Cerrar Sesión" >
            </form>
        </div>
        <form method="get" name="frmaccion">
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Paterno</th>
                    <th>Materno</th>
                    <th>Sexo</th>
                    <th>Edad</th>
                    <th>Usuario</th>
                    <th>Clave</th>
                    <th>Fecha nacimiento</th>
                    <th>Elimina</th>
                    <th>Actualiza</th>
                </tr>
                <%if (alumnos.isEmpty()) {
                        out.println("No hay dato");
                }else{
                        for (Alumno alumno : alumnos) {%>
                <form method="post" name="frmaccion">
                    <tr>
                    <input hidden="true"  type="text" name="idalumno" value=<%= alumno.getIdalumno()%>>
                    <td><%=alumno.getNombre()%></td>
                    <td><%=alumno.getPaterno()%></td>
                    <td><%=alumno.getMaterno()%></td>
                    <td><%=alumno.getSexo()%></td>
                    <td><%=alumno.getEdad()%></td>
                    <td><%=alumno.getUsuario()%></td>
                    <td><%=alumno.getClave()%></td>
                    <td><%= alumno.getIdalumno()%></td>
                    <td><input type="submit" value=" eliminar " name="eliminar" formaction="eliminar.jsp"></td>
                    <td><input type="submit" value="Editar" name="editar" formaction="editar.jsp" ></td>
                    </tr>
                </form>
                <%}
                    }%>
            </table>
            <input type="submit" value="Nuevo alumno" formaction="registroView.jsp">

            </body>
            </html>
