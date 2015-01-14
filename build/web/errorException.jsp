<%-- 
    Document   : error
    Created on : Jan 11, 2015, 12:16:17 AM
    Author     : absalom
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Error</title>
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
 <% String de = (String) request.getParameter("de");%>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">

                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a  href="principal.jsp">Regrsar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
        <!--Titulo-->
        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <p class="tituloError"> Se ha producido un error de la siguiente pagina <i class="error"> <%= de%> </i>
                        Cabe aclara que no es su culpa. <br> Le sugerimos se comunique con soporte para cualquier aclaración.<br> La exepcion fue: <i class="error"> <%= exception%> </i><br/>
                        
                    </p>
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
