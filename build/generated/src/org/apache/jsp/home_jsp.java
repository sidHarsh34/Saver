package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.html");
  }

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
      			null, true, 8192, true);
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"Styles/style.css\" rel=\"stylesheet\"> \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: rgb(243, 242, 242);\">\n");
      out.write("        ");
      out.write("<nav class=\"navbar navbar-expand-lg bg-light navbar-light\" style=\"height : 15vh\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"index.html\">\n");
      out.write("            <img src=\"Images/logo.png\"\n");
      out.write("                alt=\"Saver Logo\"\n");
      out.write("                draggable=\"false\"\n");
      out.write("                />\n");
      out.write("            </a>          \n");
      out.write("        </div>\n");
      out.write("</nav>\n");
      out.write("        <!-- Navbar -->\n");
      out.write("\n");
      out.write("        <!-- Section: Design Block -->\n");
      out.write("        <section>            \n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2 rounded-right\">\n");
      out.write("                        \n");
      out.write("                        <ul class=\"nav flex-column\">\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"#\">\n");
      out.write("                                    <i class=\"fas fa-tachometer-alt fa-fw\"></i>\n");
      out.write("                                    Dashboard\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"#\">\n");
      out.write("                                    <i class=\"fas fa-line-chart fa-fw\"></i>\n");
      out.write("                                    Expenses\n");
      out.write("                                </a>\n");
      out.write("                                <ul class=\"nav flex-column nav-submenu\">\n");
      out.write("                                    <li class=\"nav-subitem\">\n");
      out.write("                                        <a class=\"nav-sublink\" href=\"#\">Set Limits</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-subitem\">\n");
      out.write("                                        <a class=\"nav-sublink\" href=\"#\">Manage Expenses</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-subitem\">\n");
      out.write("                                        <a class=\"nav-sublink\" href=\"#\">Track Expenses</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"profile.jsp\">\n");
      out.write("                                    <i class=\"fas fa-user fa-fw\"></i>\n");
      out.write("                                    Profile\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                       <!-- <img src=\"Images/main_logo.png\"/>-->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-10\">\n");
      out.write("                        col2\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
      out.write("       \n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
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
