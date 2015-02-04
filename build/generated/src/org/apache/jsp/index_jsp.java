package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Utility.Session;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"errorException.jsp?de=index.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"grayscale/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"grayscale/css/grayscale.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link href=\"grayscale/css/grayscale.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom Fonts -->\n");
      out.write("        <link href=\"grayscale/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"page-top\" data-spy=\"scroll\" data-target=\".navbar-fixed-top\">\n");
      out.write("\n");
      out.write("        <!-- Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-custom navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-main-collapse\">\n");
      out.write("                        <i class=\"fa fa-bars\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand page-scroll\" href=\"#page-top\">\n");
      out.write("                        <i class=\"fa fa-play-circle\"></i>  <span class=\"light\">Inicio</span> \n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                <div class=\"collapse navbar-collapse navbar-right navbar-main-collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->\n");
      out.write("                        <li class=\"hidden\">\n");
      out.write("                            <a href=\"#page-top\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a class=\"page-scroll\" href=\"#about\">Sign in</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a class=\"page-scroll\" href=\"#download\">Sign up</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a class=\"page-scroll\" href=\"#contact\">Information</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.container -->\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <!--Titulo-->\n");
      out.write("        <header class=\"intro\">\n");
      out.write("            <div class=\"intro-body\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-8 col-md-offset-2\">\n");
      out.write("                            <h1 class=\"brand-heading\">Ejercicio 1 con jsp</h1>\n");
      out.write("                            <p class=\"intro-text\">Realizar un login empleando jsp's.<br>Modelo 1 de jsp.</p>\n");
      out.write("                            <a href=\"#about\" class=\"btn btn-circle page-scroll\">\n");
      out.write("                                <i class=\"fa fa-angle-double-down animated\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <!--Codigo jsp isSession y error login-->\n");
      out.write("        ");

            Session session1=new Session();
            if (session1.isSession(request)) {
                response.sendRedirect("principal.jsp");
                return;
            }
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Sign in -->\n");
      out.write("        <section id=\"about\" class=\"container content-section text-center\">\n");
      out.write("            <div id='alert' class='alert-danger'>\n");
      out.write("                <p font-size='14' >\n");
      out.write("                    ");

                        if (request.getParameter("err") != null) {
                            out.println(request.getParameter("err"));
                        }
                    
      out.write("</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4\">\n");
      out.write("                <!--                        <div class=\"panel panel-default\">-->\n");
      out.write("                <div class=\"panel-heading\">\n");
      out.write("                    <h3 class=\"panel-title text-center\">Sign in</h3>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <form method=\"post\" name=\"frmLo\" action=\"Controller\" role=\"form\">\n");
      out.write("                        <input type=\"text\" name=\"accion\" hidden value=\"signin\" >\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <!--                                        <label>Usuario:</label>-->\n");
      out.write("                            <input type=\"text\" name=\"txtUsuario\" class=\"form-control input-sm\" id=\"txtUsuario\" placeholder=\"Usuario\" value=\"\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <!--                                        <label>Clave:</label>-->\n");
      out.write("                            <input type=\"password\" name=\"txtClave\" id=\"txtClave\" class=\"form-control input-sm\" placeholder=\"Clave\" value=\"\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"submit\" value=\"Aceptar\"  class=\"btn btn-default btn-lg\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\" >\n");
      out.write("                            <a class=\"page-scroll\" href=\"#download\">No tengo cuenta</a>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Sign up -->\n");
      out.write("        <section id=\"download\" class=\"content-section text-center\">\n");
      out.write("            <div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4\">\n");
      out.write("                <div class=\"panel-heading\">\n");
      out.write("                    <h3 class=\"panel-title text-center\">Sign up</h3>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    ");

                        String error = request.getParameter("error");
                        if (error != null) {
                            out.println(error);
                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <form action=\"Controller\" method=\"post\" name=\"frmReg\" role='form'>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"txtNombre\" id=\"txtNombre\" class=\"form-control input-sm\" placeholder=\"Nombre\"  required value=");
      out.print((request.getParameter("nombre") != null) ? request.getParameter("nombre") : "");
      out.write(" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class='row'>\n");
      out.write("                            <div class=\"form-group col-xs-6 col-sm-6 col-md-6\">\n");
      out.write("                                <input class=\"form-control input-sm\" type=\"text\" name=\"txtPaterno\" id=\"txtPaterno\" placeholder=\"Apellido paterno\" required value=");
      out.print((request.getParameter("paterno") != null) ? request.getParameter("paterno") : "");
      out.write(" >\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-xs-6 col-sm-6 col-md-6\">\n");
      out.write("                                <input class=\"form-control input-sm\" type=\"text\" name=\"txtMaterno\" id=\"txtMaterno\" placeholder=\"Apellido materno\" required value=");
      out.print((request.getParameter("materno") != null) ? request.getParameter("materno") : "");
      out.write(" >\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"form-group col-xs-6 col-sm-6 col-md-6\">\n");
      out.write("                                <input type=\"radio\" name=\"txtSexo\" value=\"M\"> Masculino<br>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-xs-6 col-sm-6 col-md-6\">\n");
      out.write("                                <input type=\"radio\" name=\"txtSexo\" value=\"F\" checked> Feminino<br>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input class=\"form-control input-sm\" type=\"numeric\"  min=\"1\" max=\"2\" name=\"txtEdad\" id=\"txtEdad\" placeholder=\"Edad\" required value=");
      out.print((request.getParameter("edad") != null) ? request.getParameter("edad") : "");
      out.write(">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input class=\"form-control input-sm\" type=\"text\" name=\"txtUsuario\" id=\"txtUsuario\" placeholder=\"Usuario\" required value=");
      out.print((request.getParameter("usuario") != null) ? request.getParameter("usuario") : "");
      out.write(">\n");
      out.write("                        </div>\n");
      out.write("                        <div class='row'>\n");
      out.write("                            <div class=\"form-group col-xs-6 col-sm-6 col-md-6\">\n");
      out.write("                                <input class=\"form-control input-sm\" type=\"password\" name=\"txtClave\" id=\"txtClave\" placeholder=\"Clave\" required value=\"\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group col-xs-6 col-sm-6 col-md-6\">\n");
      out.write("                                <input class=\"form-control input-sm\" type=\"password\" name=\"txtCclave\" id=\"txtCclave\" required placeholder=\"Confirmación de Clave\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type='text'  class=\"form-control\" required name=\"txtFecha\" placeholder=\"dd/mm/aaaa\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class='row'>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"submit\" value=\"Aceptar\" class=\"btn btn-default btn-lg\"> \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div></div>\n");
      out.write("        </section>\n");
      out.write("        <!--space-->\n");
      out.write("        <section id=\"download\" class=\"content-section text-center\">\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- information -->\n");
      out.write("        <section id=\"contact\" class=\"container content-section text-center\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-8 col-lg-offset-2\">\n");
      out.write("                    <h2>Ejercicio 1 jsp</h2>\n");
      out.write("                    <p>Fco. Absalom Araujo Pérez</p>\n");
      out.write("                    <p><a href=\"\">absalomaraujo@gmail.com</a></p>\n");
      out.write("                    <p>Profesor: Asunción</p>\n");
      out.write("                    <h1>Escuela Superior de Computo <small>ESCOM</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <script src=\"jq/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <script src=\"jq/jquery-ui.js\"></script>\n");
      out.write("        <script src=\"jq/jquery-ui.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"grayscale/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--Plugin JavaScript--> \n");
      out.write("        <script src=\"grayscale/js/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"grayscale/js/grayscale.js\"></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("//            $('#datepicker123').datepicker();\n");
      out.write("//            $(function() {\n");
      out.write("//                $(\"#datepicker123\").datepicker();\n");
      out.write("//            });\n");
      out.write("//            $('#sandbox-container div').datepicker({});\n");
      out.write("//            $('#sandbox-container .input-group .date').datepicker({\n");
      out.write("//                format: \"dd/mm/yyyy\"\n");
      out.write("//            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
