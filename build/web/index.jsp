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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login</title>
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
    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

        <!-- Navigation -->
        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">
                        <i class="fa fa-play-circle"></i>  <span class="light">Inicio</span> 
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
                            <a class="page-scroll" href="#about">Sign in</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#download">Sign up</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#contact">Information</a>
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
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h1 class="brand-heading">Ejercicio 1 con jsp</h1>
                            <p class="intro-text">Realizar un login empleando jsp's.<br>Modelo 1 de jsp.</p>
                            <a href="#about" class="btn btn-circle page-scroll">
                                <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!--Codigo jsp isSession y error login-->
        <%
            if (session.getAttribute("dto") != null) {
                response.sendRedirect("principal.jsp");
                return;
            }%>

        <!-- Sign in -->
        <section id="about" class="container content-section text-center">
            <div id='alert' class='alert-danger'>
                <p font-size='14' >
            <%
                if (request.getParameter("err") != null) {
                    out.println(request.getParameter("err"));
                }
            %></p>
            </div>
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <!--                        <div class="panel panel-default">-->
                <div class="panel-heading">
                    <h3 class="panel-title text-center">Sign in</h3>
                </div>
                <div class="panel-body">
                    <form method="post" name="frmLo" action="login.jsp" role="form">
                        <div class="form-group">
                            <!--                                        <label>Usuario:</label>-->
                            <input type="text" name="txtUsuario" class="form-control input-sm" id="txtUsuario" placeholder="Usuario" value="">
                        </div>
                        <div class="form-group">
                            <!--                                        <label>Clave:</label>-->
                            <input type="password" name="txtClave" id="txtClave" class="form-control input-sm" placeholder="Clave" value="">
                        </div>

                        <div class="form-group">
                            <input type="submit" value="Aceptar"  class="btn btn-default btn-lg">
                        </div>


                        <div class="form-group" >
                            <a class="page-scroll" href="#download">No tengo cuenta</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>

        <!-- Sign up -->
        <section id="download" class="content-section text-center">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel-heading">
                    <h3 class="panel-title text-center">Sign up</h3>
                </div>
                <div class="panel-body">
                    <%
                        String error = request.getParameter("error");
                        if (error != null) {
                            out.println(error);
                        }
                    %>
                    <form action="registro.jsp" method="post" name="frmReg" role='form'>
                        <div class="form-group">
                            <input type="text" name="txtNombre" id="txtNombre" class="form-control input-sm" placeholder="Nombre"  required value=<%=(request.getParameter("nombre") != null) ? request.getParameter("nombre") : ""%> >
                        </div>
                        <div class='row'>
                            <div class="form-group col-xs-6 col-sm-6 col-md-6">
                                <input class="form-control input-sm" type="text" name="txtPaterno" id="txtPaterno" placeholder="Apellido paterno" required value=<%=(request.getParameter("paterno") != null) ? request.getParameter("paterno") : ""%> >
                            </div>
                            <div class="form-group col-xs-6 col-sm-6 col-md-6">
                                <input class="form-control input-sm" type="text" name="txtMaterno" id="txtMaterno" placeholder="Apellido materno" required value=<%=(request.getParameter("materno") != null) ? request.getParameter("materno") : ""%> >
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-6 col-sm-6 col-md-6">
                                <input type="radio" name="txtSexo" value="M"> Masculino<br>
                            </div>
                            <div class="form-group col-xs-6 col-sm-6 col-md-6">
                                <input type="radio" name="txtSexo" value="F" checked> Feminino<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <input class="form-control input-sm" type="numeric"  min="1" max="2" name="txtEdad" id="txtEdad" placeholder="Edad" required value=<%=(request.getParameter("edad") != null) ? request.getParameter("edad") : ""%>>
                        </div>
                        <div class="form-group">
                            <input class="form-control input-sm" type="text" name="txtUsuario" id="txtUsuario" placeholder="Usuario" required value=<%=(request.getParameter("usuario") != null) ? request.getParameter("usuario") : ""%>>
                        </div>
                        <div class='row'>
                            <div class="form-group col-xs-6 col-sm-6 col-md-6">
                                <input class="form-control input-sm" type="password" name="txtClave" id="txtClave" placeholder="Clave" required value="">
                            </div>
                            <div class="form-group col-xs-6 col-sm-6 col-md-6">
                                <input class="form-control input-sm" type="password" name="txtCclave" id="txtCclave" required placeholder="Confirmación de Clave">
                            </div>
                        </div>
                        <div class="form-group">
                            <input class="form-control input-sm" type="text" name="txtFecha" id="txtFecha" placeholder="fecha"  value=<%=(request.getParameter("fecha") != null) ? request.getParameter("fecha") : ""%>>
                        </div>
                        <div class='row'>
                            <div class="form-group">
                                <input type="submit" value="Aceptar" class="btn btn-default btn-lg"> 
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!--space-->
        <section id="download" class="content-section text-center">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
        </section>

        <!-- information -->
        <section id="contact" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Ejercicio 1 jsp</h2>
                    <p>Fco. Absalom Araujo Pérez</p>
                    <p><a href="">absalomaraujo@gmail.com</a></p>
                    <p>Profesor: Asunción</p>
                    <h1>Escuela Superior de Computo <small>ESCOM</h1>
                </div>
            </div>
        </section>

        <!-- jQuery -->
        <script src="grayscale/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="grayscale/js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="grayscale/js/jquery.easing.min.js"></script>

        <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

        <!-- Custom Theme JavaScript -->
        <script src="grayscale/js/grayscale.js"></script>



    </body>
</html>
