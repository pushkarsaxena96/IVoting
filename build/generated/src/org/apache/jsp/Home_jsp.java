package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Statement st=null;Connection con=null;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connect.jsp");
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");

response.addHeader("pragma","no-cache");
response.addHeader("cache-control","no-store");
response.addHeader("expire" ,"0");
    
      out.write('\n');
      out.write('\n');

String s=(String)session.getAttribute("uid");
if(s==null)
    {
response.sendRedirect("index.jsp");
}
else
{


      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("<title>IVoting System</title>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"header\">\n");
      out.write("  <div id=\"logo\">\n");
      out.write("    <img src=\"images/vote_1.png\" alt=\"\" height=\"100\" width=\"100\"/>&nbsp;<h1><a href=\"\">IVoting</a></h1>\n");
      out.write("    <h2><a href=\"\"></a></h2>\n");
      out.write("  </div>\n");
      out.write("  <div id=\"inmenu\">\n");
      out.write("    <ul>\n");
      out.write("       <li class=\"active\"><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("       <li><a href=\"Changepwd.jsp\">Change Password </a></li>\n");
      out.write("      <li><a href=\"Logout.jsp\">Logout</a></li>\n");
      out.write("      <li></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"content\">  \n");
      out.write("  <div id=\"sidebar\">\n");
      out.write("    <!-- end #login -->\n");
      out.write("<div id=\"updates\" class=\"boxed\">\n");
      out.write("      <div class=\"title\">\n");
      out.write("        <h2>News Bulletin </h2>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"content\">\n");
      out.write("       <marquee direction=\"up\" scrollamount=\"3\"> <ul><li>\n");
      out.write("            \n");
      out.write("            <p><a href=\"http://www.economictimes.indiatimes.com/tech/internet/twitter-to-take-india-election-strategy-innovations-global/articleshow/35553506.cms\">Twitter to take India Election Innovations global.&#8230;</a></p>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            \n");
      out.write("            <p><a href=\"http://en.wikipedia.org/wiki/List_of_political_parties_in_India\">List of political parties and Election Symbols&#8230;</a></p>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            \n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("              <p><a href=\"http://www.dnaindia.com/topic/election-commission-of-india-eci\">Activist complains to Election Commission of India over election expenditure&#8230;</a></p>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("           \n");
      out.write("            <p><a href=\"http://www.esocialsciences.org/General/A2013412184534_19.pdf\">Does social media play a key role in Lok Sabha Polls ?</a></p>\n");
      out.write("          </li>\n");
      out.write("        </ul></marquee>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- end #updates -->\n");
      out.write("  </div>\n");
      out.write("  <!-- end #sidebar -->\n");
      out.write("  <div id=\"main\">\n");
      out.write("    <div id=\"welcome\" class=\"post\">\n");
      out.write("      <h2 class=\"title\"><span>Welcome to User home!</span></h2>\n");
      out.write("      <h3 class=\"date\"><span class=\"month\">Aug.</span> <span class=\"day\">1</span><span class=\"year\">, 2014</span></h3>\n");
      out.write("      <div class=\"story\">\n");
      out.write("        <p>&nbsp; </p>\n");
      out.write("        <table width=\"446\" height=\"76\" border=\"1\">\n");
      out.write("          <tr>\n");
      out.write("            <th scope=\"col\">CID</th>\n");
      out.write("            <th scope=\"col\">Candidate Name </th>\n");
      out.write("            <th scope=\"col\">Party Name </th>\n");
      out.write("            <th scope=\"col\">&nbsp;</th>\n");
      out.write("          </tr>\n");
      out.write("            ");
      out.write('\n');
      out.write('\n');

try{
   Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ivote","root","password");
 st=con.createStatement();
}catch(Exception e){out.println(e);}

      out.write("\n");
      out.write("            ");

 ResultSet rs=st.executeQuery("select * from candidates");
 while(rs.next())
 {
     
      out.write("\n");
      out.write("         <tr>\n");
      out.write("            <td>");
      out.print(rs.getInt(1));
      out.write("</td>\n");
      out.write("     \n");
      out.write("            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("    <td><a href=\"VoteSuccess.jsp?cid=");
      out.print(rs.getInt(1));
      out.write("&c=");
      out.print(rs.getString(2));
      out.write("&p=");
      out.print(rs.getString(3));
      out.write("\">give vote</a></td>\n");
      out.write("\n");
      out.write("\n");
      out.write("          </tr>\n");

   }
 con.close();
 
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <p>&nbsp;</p>\n");
      out.write("        <p>&nbsp;</p>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"meta\">\n");
      out.write("        <p>&nbsp;</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- end #welcome -->\n");
      out.write("    <div id=\"example\" class=\"post\">\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("    <!-- end #example -->\n");
      out.write("  </div>\n");
      out.write("  <!-- end #main -->\n");
      out.write("  <div id=\"sidebar2\">\n");
      out.write("    <div id=\"sponsors\" class=\"boxed\">\n");
      out.write("      <div class=\"title\">\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("        <div class=\"story\"><img src=\"images/0.jpg\" alt=\"\" width=\"200\" height=\"280\" class=\"left\" />&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("          \n");
      out.write("        \n");
      out.write("     \n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("    <!-- end #sponsors -->\n");
      out.write("    <div id=\"ad120x600\"><a href=\"http://www.free-css.com/\"></a></div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!-- end #sidebar2 -->\n");
      out.write("<!-- end #content -->\n");
      out.write("<div id=\"footer\">\n");
      out.write(" <p id=\"legal\">Copyright &copy; All Rights Reserved. </p>\n");
      out.write("  <p id=\"links\"><a href=\"Home.jsp\">Home</a> | <a href=\"terms.jsp\">Terms of Use</a></p>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");

}

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
