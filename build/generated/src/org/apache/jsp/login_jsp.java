package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Utility.Session;
import Utility.Security_MD5;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.sql.SQLException;
import DTO.Alumno;
import DAO.AlumnoDAO;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			"errorException.jsp?de=login.jsp", true, 8192, true);
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        String user=request.getParameter("txtUsuario");
        String pass=request.getParameter("txtClave");
        Alumno dto=null;
        AlumnoDAO dao=new AlumnoDAO();
        Security_MD5 md5=new Security_MD5();
//        out.println("2");
        try{
        dto=dao.login(user, md5.encriptarMD5(pass));
        } catch (SQLException ex) {
            //Logger.getLogger(CarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
             System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(CarreraDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
        Session session1=new Session();
        if(dto!=null){
            session1.open(request, response, dto, user, md5.encriptarMD5(pass));
//            out.println("Redireccion");
            response.sendRedirect("Controller?accion=signinDone");
//           RequestDispatcher dc= request.getRequestDispatcher("Controller");
//           dc.forward(request, response);
//            out.println("listo");
        }else{
            response.sendRedirect("index.jsp?err="+"Usuario y Clave incorrectos, porfavor intente de nuevo #about");
        }
        
      out.write(" \n");
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
