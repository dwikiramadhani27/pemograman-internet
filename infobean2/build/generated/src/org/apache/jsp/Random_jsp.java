package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;

public final class Random_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jspf");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

DateFormat df = DateFormat.getDateInstance(DateFormat.FULL);
String sd = df.format(new Date());

      out.write("\n");
      out.write("<h4>Today: ");
      out.print(sd);
      out.write("</h4><hr>");
      out.write('\n');
      out.write('\n');
      com.infobean.RandomNumber random = null;
      synchronized (request) {
        random = (com.infobean.RandomNumber) _jspx_page_context.getAttribute("random", PageContext.REQUEST_SCOPE);
        if (random == null){
          random = new com.infobean.RandomNumber();
          _jspx_page_context.setAttribute("random", random, PageContext.REQUEST_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    Angka acak ini menunjukkan tingkah laku Java Bean dengan scope = request;\n");
      out.write("    <h3>\n");
      out.write("        ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.infobean.RandomNumber)_jspx_page_context.findAttribute("random")).getRndNumber2())));
      out.write("\n");
      out.write("    </h3>\n");
      out.write("\n");
      out.write("    Angka acak berikut ini menunjukkan method Java Bean tanpa memakai property\n");
      out.write("    <h3>\n");
      out.write("        ");
      out.print(random.getRandomNumber());
      out.write("\n");
      out.write("    </h3>\n");
      out.write("\n");
      out.write("    Pilihan berikut ini akan membawa ke error page, jika anda salah menebak.\n");
      out.write("    <form action=\"index.jsp\" method=\"POST\">\n");
      out.write("        <select name=\"language\" size=\"4\">\n");
      out.write("            <option value=\"java\">JAVA</option>\n");
      out.write("            <option value=\"C\">C</option>\n");
      out.write("            <option value=\"Pascal\">PASCAL</option>\n");
      out.write("            <option value=\"Basic\">BASIC</option>\n");
      out.write("        </select>\n");
      out.write("        <input type=\"submit\" value=\"Submit\">\n");
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("</html>");
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
