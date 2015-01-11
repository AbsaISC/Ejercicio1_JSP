<%-- 
    Document   : editar
    Created on : Jan 11, 2015, 1:39:15 AM
    Author     : absalom
--%>
<%@page import="DAO.AlumnoDAO"%>
<%@page import="DTO.Alumno"%>
<%@page errorPage="errorException.jsp?de=editar.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jq/jquery-1.11.1.min.js" type="text/javascript"></script>
        <title>Editar</title>
    </head>
    <body>
        <%
            String error = request.getParameter("error");
            if (error != null) {
                out.println(error);
            }
            String id=request.getParameter("idalumno");
            if(id==null){
                response.sendRedirect("principal.jsp?exito=elemento no encontrado");
                return;
            }
            Alumno dto2=new Alumno();
            dto2.setIdalumno(Integer.valueOf(id));
            AlumnoDAO dao=new AlumnoDAO();
            Alumno dto=dao.load(dto2);
        %>
        <form action="actualiza.jsp" method="post" name="frmReg">
            <input type="text" name="idAlumno" hidden="true" id="idAlumno" value=<%= dto.getIdalumno() %> />
            <table>
                <tr>
                    <td><label>Nombre:</label></td>
                    <td><input type="text" name="txtNombre" id="txtNombre" placeholder="nombre" value=<%= dto.getNombre() %> ></td>
                </tr>
                <tr>
                    <td><label>Paterno:</label></td>
                    <td><input type="text" name="txtPaterno" id="txtPaterno" placeholder="apellido paterno" value=<%= dto.getPaterno() %> ></td>
                </tr>
                <tr>
                    <td><label>Materno:</label></td>
                    <td><input type="text" name="txtMaterno" id="txtMaterno" placeholder="apellido materno" value=<%= dto.getMaterno() %>  ></td>
                </tr>
                <tr>
                    <td><label>Sexo:</label></td>
                    <td><input type="text" name="txtSexo" id="txtSexo" placeholder="sexo" value=<%= dto.getSexo()%>></td>
                </tr>
                <tr>
                    <td><label>Edad:</label></td>
                    <td><input type="text" name="txtEdad" id="txtEdad" placeholder="edad" value=<%= dto.getEdad() %>></td>
                </tr>
                <tr>
                    <td><label>Usuario:</label></td>
                    <td><input type="text" name="txtUsuario" id="txtUsuario" placeholder="Usuario" value=<%= dto.getUsuario() %>></td>
                </tr>
                <tr>
                    <td><label>Clave:</label></td>
                    <td><input type="password" name="txtClave" id="txtClave" placeholder="clave" value="" ></td>
                </tr>
                <tr>
                    <td><label>Confirma Clave:</label></td>
                    <td><input type="password" name="txtCclave" id="txtCclave" placeholder="Confirmación"></td>
                </tr>
                <tr>
                    <td><label>Fecha de nacimiento:</label></td>
                    <td><input type="text" name="txtFecha" id="txtFecha" placeholder="fecha" value=<%= dto.getFechanac() %> ></td>
                </tr>       
                <tr>
                    <td colspan="2"> <input type="submit" value="Aceptar"> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
