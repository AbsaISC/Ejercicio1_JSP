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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Edit</title>
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
        
            
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel-heading">
                <h3 class="panel-title text-center">Editar</h3>
            </div>
            <div class="panel-body">
                <form action="actualiza.jsp" method="post" name="frmReg" role="form">
                    <input type="text" name="idAlumno" hidden="true" id="idAlumno" value=<%= dto.getIdalumno() %> />
                    <div class="form-group">
                        <input type="text" name="txtNombre" id="txtNombre" class="form-control input-sm" placeholder="Nombre"  required value=<%=dto.getNombre() %> >
                    </div>
                    <div class='row'>
                        <div class="form-group col-xs-6 col-sm-6 col-md-6">
                            <input class="form-control input-sm" type="text" name="txtPaterno" id="txtPaterno" placeholder="Apellido paterno" required value=<%=dto.getPaterno() %> >
                        </div>
                        <div class="form-group col-xs-6 col-sm-6 col-md-6">
                            <input class="form-control input-sm" type="text" name="txtMaterno" id="txtMaterno" placeholder="Apellido materno" required value=<%=dto.getMaterno() %> >
                        </div>
                    </div>
                        <%
                        if(dto.getSexo().equalsIgnoreCase("f") ){
                        %>
                    <div class="row">
                        <div class="form-group col-xs-6 col-sm-6 col-md-6">
                            <input type="radio" name="txtSexo" value="M"> Masculino<br>
                        </div>
                        <div class="form-group col-xs-6 col-sm-6 col-md-6">
                            <input type="radio" name="txtSexo" value="F" checked> Feminino<br>
                        </div>
                    </div>
                    <%}else{%>
                    <div class="row">
                        <div class="form-group col-xs-6 col-sm-6 col-md-6">
                            <input type="radio" name="txtSexo" value="M" checked> Masculino<br>
                        </div>
                        <div class="form-group col-xs-6 col-sm-6 col-md-6">
                            <input type="radio" name="txtSexo" value="F" > Feminino<br>
                        </div>
                    </div>
                    <%}%>
                    <div class="form-group">
                        <input class="form-control input-sm" type="numeric" name="txtEdad" id="txtEdad" placeholder="Edad" min="1" max="2" required value=<%=dto.getEdad() %>>
                    </div>
                    <div class="form-group">
                        <input class="form-control input-sm" type="text" name="txtUsuario" id="txtUsuario" placeholder="Usuario" required value=<%=dto.getUsuario() %>>
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
                        <input class="form-control input-sm" type="text" name="txtFecha" id="txtFecha" placeholder="fecha"  value=<%=dto.getFechanac() %>>
                    </div>
                    <div class='row'>
                        <div class="form-group">
                            <input type="submit" value="Aceptar" id="btn-valid" class="btn btn-default btn-lg"> 
                        </div>
                    </div>
                </form>
            </div>
        </div>

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

<!--        <script>
//               $(document).ready(function(){
//                   $('#btn-valid').click(function(){
//                       if($('#txtEdad').numeric()){
//                           alert("El campo edad debe ser número");
//                           return;
//                       }
//                   });
//               });
        </script>-->


    </body>
</html>
