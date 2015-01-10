<%-- 
    Document   : registro
    Created on : Jan 9, 2015, 12:14:17 AM
    Author     : absalom
--%>
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

        %>
        <%
            nombre = request.getParameter("txtNombre").trim();
            paterno = request.getParameter("txtPaterno").trim();
            materno = request.getParameter("txtMaterno").trim();
            sexo = request.getParameter("txtSexo").trim();
            edad = request.getParameter("txtEdad").trim();
            usuario = request.getParameter("txtUsuario").trim();
            clave = request.getParameter("txtClave").trim();
            cclave = request.getParameter("txtCclave").trim();
            fecha = request.getParameter("txtFecha").trim();
            String regreso = "&nombre=" + nombre + "&paterno=" + paterno + "&materno=" + materno + "&sexo=" + sexo + "&edad=" + edad
                    + "&usuario=" + usuario + "&fecha=" + fecha;
            String res = validaCampos();

            if (res != null) {
                response.sendRedirect("registroView.jsp?error=Falta llenar los campos: \n" + res + regreso);
                return;
            }
            if (!clave.equals(cclave)) {
                response.sendRedirect("registroView.jsp?error=contraseña no coincide" + regreso);
                return;
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
            //dto.setFechanac(Date.valueOf(fecha));
            out.println(dto.toString());

            AlumnoDAO dao = new AlumnoDAO();

            try {
                dao.create(dto);
            } catch (SQLException ex) {
                Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
                // System.out.println(ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
                //System.out.println(ex);
            }
            session = request.getSession();
            session.setAttribute("dto", dto);
            response.sendRedirect("principal.jsp");
        %>

    </body>
</html>
