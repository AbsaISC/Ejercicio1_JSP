<%-- 
    Document   : registro
    Created on : Jan 8, 2015, 11:52:44 PM
    Author     : absalom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jq/jquery-1.11.1.min.js" type="text/javascript"></script>
        <title>Registro</title>
    </head>
    <body>
        <%
            String error = request.getParameter("error");
            if (error != null) {
                out.println(error);
            }
        %>
        <form action="registro.jsp" method="post" name="frmReg">
            <table>
                <tr>
                    <td><label>Nombre:</label></td>
                    <td><input type="text" name="txtNombre" id="txtNombre" placeholder="nombre" value=<%=(request.getParameter("nombre")!=null)?request.getParameter("nombre"):""%> ></td>
                </tr>
                <tr>
                    <td><label>Paterno:</label></td>
                    <td><input type="text" name="txtPaterno" id="txtPaterno" placeholder="apellido paterno" value=<%=(request.getParameter("paterno")!=null)?request.getParameter("paterno"):""%> ></td>
                </tr>
                <tr>
                    <td><label>Materno:</label></td>
                    <td><input type="text" name="txtMaterno" id="txtMaterno" placeholder="apellido materno" value=<%=(request.getParameter("materno")!=null)?request.getParameter("materno"):""%> ></td>
                </tr>
                <tr>
                    <td><label>Sexo:</label></td>
                    <td><input type="text" name="txtSexo" id="txtSexo" placeholder="sexo" value=<%=(request.getParameter("sexo")!=null)?request.getParameter("sexo"):""%>></td>
                </tr>
                <tr>
                    <td><label>Edad:</label></td>
                    <td><input type="text" name="txtEdad" id="txtEdad" placeholder="edad" value=<%=(request.getParameter("edad")!=null)?request.getParameter("edad"):""%>></td>
                </tr>
                <tr>
                    <td><label>Usuario:</label></td>
                    <td><input type="text" name="txtUsuario" id="txtUsuario" placeholder="Usuario" value=<%=(request.getParameter("usuario")!=null)?request.getParameter("usuario"):""%>></td>
                </tr>
                <tr>
                    <td><label>Clave:</label></td>
                    <td><input type="password" name="txtClave1" id="txtClave" placeholder="clave" value=""></td>
                </tr>
                <tr>
                    <td><label>Confirma Clave:</label></td>
                    <td><input type="password" name="txtCclave" id="txtCclave" placeholder="Confirmación"></td>
                </tr>
                <tr>
                    <td><label>Fecha de nacimiento:</label></td>
                    <td><input type="text" name="txtFecha" id="txtFecha" placeholder="fecha" value=<%=(request.getParameter("fecha")!=null)?request.getParameter("fecha"):""%>></td>
                </tr>       
                <tr>
                    <td colspan="2"> <input type="submit" value="Aceptar"> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
