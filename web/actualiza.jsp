<%-- 
    Document   : actualiza
    Created on : Jan 11, 2015, 2:16:12 AM
    Author     : absalom
--%>
<%@page errorPage="errorException.jsp?de=actualiza.jsp"%>
<%@page import="DAO.AlumnoDAO"%>
<%@page import="DTO.Alumno"%>
<%@page import="Utility.Security_MD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>actualiza</title>
    </head>
    <body>
        <%!
            String id=null;
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
//            session = request.getSession(false);
//            if (session == null) {
//                response.sendRedirect("index.jsp");
//                return;
//            }
            id=request.getParameter("idAlumno");
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
                response.sendRedirect("edirar.jsp?error=Falta llenar los campos: \n" + res + regreso);
                return;
            }
            if (!clave.equals(cclave)) {
                response.sendRedirect("editar.jsp?error=contraseña no coincide" + regreso);
                return;
            }
            Security_MD5 md5 = new Security_MD5();
            String smd5 = md5.encriptarMD5(clave);
            Alumno dto = new Alumno();
            dto.setIdalumno(Integer.valueOf(id));
            dto.setNombre(nombre);
            dto.setPaterno(paterno);
            dto.setMaterno(materno);
            dto.setSexo(sexo);
            dto.setEdad(Integer.valueOf(edad));
            dto.setUsuario(usuario);
            dto.setClave(smd5);
            //dto.setFechanac(Date.valueOf(fecha));
            //out.println(dto.toString());

            AlumnoDAO dao = new AlumnoDAO();
            dao.update(dto);

            //session.setAttribute("dto", dto);
            response.sendRedirect("principal.jsp");


        %>
    </body>
</html>
