<%-- 
    Document   : registro
    Created on : Jan 9, 2015, 12:14:17 AM
    Author     : absalom
--%>
<%@page import="Utility.Session"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page errorPage="errorException.jsp?de=registro.jsp" %>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Date"%>
<%@page import="Utility.Security_MD5"%>
<%@page import="DTO.Alumno"%>
<%@page import="DAO.AlumnoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <%!
            String nombre = null;
            String paterno = null;
            String materno = null;
            String sexo = null;
            String edad = null;
            String usuario = null;
            String clave = null;
            String cclave = null;
            String fecha = null;

            public String validaCampos() {
                String res = null;
                if (nombre == null || nombre.equalsIgnoreCase("")) {
                    res += "Nombre";
                }
                if (paterno == null || paterno.equalsIgnoreCase("")) {
                    res += ", Paterno";
                }
                if (sexo == null || sexo.equalsIgnoreCase("")) {
                    res += ", Sexo";
                }
                if (edad == null || edad.equalsIgnoreCase("")) {
                    res += ", Edad";
                }
                if (usuario == null || usuario.equalsIgnoreCase("")) {
                    res += ", Usuario";
                }
                if (clave == null || clave.equalsIgnoreCase("")) {
                    res += ", Clave";
                }
                if (cclave == null || cclave.equalsIgnoreCase("")) {
                    res += ", Confirmar clave";
                }
                if (fecha == null || nombre.equalsIgnoreCase("")) {
                    res += ", Fecha nacimiento";
                }
                return res;
            }

            public boolean isNum(String cadena) {
                try {
                    Integer.parseInt(cadena);
                    return true;
                } catch (NumberFormatException nfe) {
                    return false;
                }
            }

        %>
        <%
            nombre = request.getParameter("txtNombre").trim();
            paterno = request.getParameter("txtPaterno").trim();
            materno = request.getParameter("txtMaterno").trim();
            sexo = request.getParameter("txtSexo");
            edad = request.getParameter("txtEdad").trim();
            usuario = request.getParameter("txtUsuario").trim();
            clave = request.getParameter("txtClave").trim();
            cclave = request.getParameter("txtCclave").trim();
            fecha = request.getParameter("txtFecha").trim();

            String regreso = "&nombre=" + nombre + "&paterno=" + paterno + "&materno=" + materno + "&sexo=" + sexo + "&edad=" + edad
                    + "&usuario=" + usuario + "&fecha=" + fecha;
            String res = validaCampos();

            if (session.getAttribute("dto") == null) {
                if (!clave.equals(cclave)) {
                    response.sendRedirect("index.jsp?error=contraseña no coincide" + regreso + " #download");
                    return;
                }
                if (!isNum(edad)) {
                    response.sendRedirect("index.jsp?error=edad tiene que se número" + regreso + " #download");
                    return;
                }
            } else {
                if (!clave.equals(cclave)) {
                    response.sendRedirect("registroView.jsp?error=contraseña no coincide" + regreso);
                    return;
                }
                if (!isNum(edad)) {
                    response.sendRedirect("registroView.jsp?error=edad tiene que se número" + regreso);
                    return;
                }
            }


            Security_MD5 md5 = new Security_MD5();
            String smd5 = md5.encriptarMD5(clave);
            Alumno dto = new Alumno();
            dto.setNombre(nombre);
            dto.setPaterno(paterno);
            dto.setMaterno(materno);
            dto.setSexo(sexo);
            dto.setEdad(Integer.valueOf(edad));
            dto.setUsuario(usuario);
            dto.setClave(smd5);
            AlumnoDAO dao = new AlumnoDAO();
            dao.create(dto);
            Session session1=new Session();
            
            if (!session1.isSession(request)) {
                session1.open(request, response, dto, usuario, smd5);
                response.sendRedirect("Controller?accion=iniReg");
            } else {
                response.sendRedirect("Controller?accion=Reg");
            }

        %>

    </body>
</html>
