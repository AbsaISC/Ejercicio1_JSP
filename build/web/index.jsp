<%-- 
    Document   : index
    Created on : Jan 8, 2015, 12:35:57 AM
    Author     : absalom
--%>
<%@page errorPage="errorException.jsp?de=index.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escuela</title>
    </head>
    <body>
        <%
            if(session.getAttribute("dto")!=null){
                response.sendRedirect("principal.jsp");
                return;
            }
            if (request.getParameter("err") != null) {
                out.println(request.getParameter("err"));
            }
        %>
        <div>
           
                
                <form method="post" name="frmLo" action="login.jsp">
                    <table>
                        <tr>
                            <td><label>Usuario:</label></td>
                            <td><input type="text" name="txtUsuario" id="txtUsuario" placeholder="Usuario" value=<%=(request.getParameter("usuario") != null) ? request.getParameter("usuario") : ""%>></td>
                        </tr>
                        <tr>
                            <td><label>Clave:</label></td>
                            <td><input type="password" name="txtClave" id="txtClave" placeholder="clave" value=""></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Aceptar" >
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <input type="text" hidden="true" >
                            </td>
                            <td colspan="2">
                                <a href="registroView.jsp">No tengo cuenta</a>
                            </td>
                        </tr>
                    </table>
                </form>
           
        </div>
    </body>
</html>
