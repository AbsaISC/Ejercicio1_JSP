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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Principal</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" type="text/css" href="frm/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="frm/font-awesome/css/font-awesome.min.css" />

        <script type="text/javascript" src="frm/js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="frm/bootstrap/js/bootstrap.min.js"></script>

        <!-- Bootstrap Core CSS -->
        <link href="grayscale/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="grayscale/css/grayscale.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="grayscale/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
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
//            out.println("Bienvenido " + a.getNombre());
            List<Alumno> alumnos = null;
            AlumnoDAO dao = new AlumnoDAO();
            alumnos = dao.loadAll();
        %>
        <!-- Navigation -->
        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">
                        <i class="fa fa-play-circle"></i>  <span class="light"> <%=a.getNombre()%></span> 
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <li>
                            <!--<a class="page-scroll" href="#about">Sign in</a>-->
                        </li>
                        <li>
                            <!--<a class="page-scroll" href="#download">Sign up</a>-->
                        </li>
                        <li>
                            <a  href="cerrarSesion.jsp">Log out</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!--Titulo-->
        <header class="intro">
            <div class="intro-body">
                <div class="container">

                    <table class="table">
                        <thead>
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
                        </thead>
                        <tbody>
                            <%if (alumnos.isEmpty()) {
                                    out.println("No hay dato");
                                } else {
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
                            <td><input type="submit" value=" eliminar " name="eliminar" class="btn btn-default btn-color-red" formaction="eliminar.jsp"></td>
                            <td><input type="submit" value="Editar" name="editar" class="btn btn-default btn-color-yellow" formaction="editar.jsp" ></td>
                            </tr>
                        </form>
                        </tbody>
                        <%}
                            }%>
                    </table>
                    <form method="post" name="frmaccion">
                        <input type="submit" value="Nuevo alumno"  class="btn btn-default btn-lg btn-color-green"  formaction="registroView.jsp">
                    </form>
                </div>
            </div>
        </header>
        <style>
            .table{
                font-size: 120%;
            }

            .btn-color-red{
                /*background-color: #C52404;*/
                color:  #C52404;
                border-color: #C52404;
            }
            .btn-color-yellow{
                /*background-color: #F9CA30;*/
                color: #F9CA30;
                border-color: #F9CA30; 
            }
            .btn-color-green{
                /*background-color: #F9CA30;*/
                color: #07C472;
                border-color: #07C472; 
            }
        </style>



    </body>
</html>
