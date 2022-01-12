package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "views/layout/head.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("title", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Login Page", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body class=\"hold-transition login-page\">\n");
      out.write("<div class=\"login-box\">\n");
      out.write("  <div class=\"login-logo\">\n");
      out.write("      <a href=\"#\"><img src=\"dist/img/logo-text-left-200.png\" width=\"300\" height=\"100\"/></a>\n");
      out.write("  </div>\n");
      out.write("  <!-- /.login-logo -->\n");
      out.write("  <div class=\"card\">\n");
      out.write("    <div class=\"card-body login-card-body\">\n");
      out.write("      <p class=\"login-box-msg\"><b>Admin</b> Inventory </p>\n");
      out.write("      ");
 if(request.getAttribute("alert") != null) { 
      out.write("\n");
      out.write("                        <div class=\"alert alert-danger\">\n");
      out.write("                            ");
 out.print(request.getAttribute("alert")); 
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("      <form action=\"login\" method=\"post\">\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Username\" name=\"username\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-envelope\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"password\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-lock\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <!-- /.col -->\n");
      out.write("          <div class=\"col-4\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary btn-block\">Sign In</button>\n");
      out.write("          </div>\n");
      out.write("          <!-- /.col -->\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("    <!-- /.login-card-body -->\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!-- /.login-box -->=\n");
      out.write("</html>\n");
      out.write("\n");
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
