/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.69
 * Generated at: 2021-09-08 07:09:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import project.ConnectionProvider;
import java.sql.*;

public final class bill_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1630595953030L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("project.ConnectionProvider");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write(" <div class=\"footer\">\r\n");
      out.write("          <p>All Right Reserved @ Online Shopping Web</p>\r\n");
      out.write("      </div>");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bill.css\">\r\n");
      out.write("<title>Bill</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");


	String email=session.getAttribute("email").toString();
	
	try
	{
		int total=0;
		int sno=0;
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill' ");
		while(rs.next())
		{
			total=rs.getInt(1);
	
	    }
		ResultSet rs3=st.executeQuery("select * from users where email='"+email+"'");
		String name="";
		String mobilenumber="";
		String city="";
		String address="";
		String state="";
		String country="";
		while(rs3.next())
		{
			name=rs3.getString(1);
			mobilenumber=rs3.getString(3);
			city=rs3.getString(8);
			address=rs3.getString(7);
			state=rs3.getString(9);
			country=rs3.getString(10);
		}
	    ResultSet rs2=st.executeQuery("select * from  cart where email='"+email+"' and status='bill'");
	    while( rs2.next())
	    {
	


      out.write("\r\n");
      out.write("<h3>Online shopping Bill </h3>\r\n");
      out.write("<hr>\r\n");
      out.write("<div class=\"left-div\"><h3>Name: ");
out.println(name); 
      out.write("  </h3></div>\r\n");
      out.write("<div class=\"right-div-right\"><h3>Email: ");
out.println(email); 
      out.write("  </h3></div>\r\n");
      out.write("<div class=\"right-div\"><h3>Mobile Number: ");
out.println(mobilenumber); 
      out.write(" </h3></div>  \r\n");
      out.write("\r\n");
      out.write("<div class=\"left-div\"><h3>Order Date:   ");
      out.print( rs2.getString(11) );
      out.write(" </h3></div>\r\n");
      out.write("<div class=\"right-div-right\"><h3>Payment Method: ");
      out.print( rs2.getString(13) );
      out.write("   </h3></div>\r\n");
      out.write("<div class=\"right-div\"><h3>Expected Delivery:");
      out.print( rs2.getString(12) );
      out.write(" </h3></div> \r\n");
      out.write("\r\n");
      out.write("<div class=\"left-div\"><h3>Transaction Id: ");
      out.print( rs2.getString(11) );
      out.write("  </h3></div>\r\n");
      out.write("<div class=\"right-div-right\"><h3>City: ");
out.println(city); 
      out.write(" </h3></div> \r\n");
      out.write("<div class=\"right-div\"><h3>Address: ");
out.println(address); 
      out.write("   </h3></div> \r\n");
      out.write("<div class=\"left-div\"><h3>State:  ");
out.println(state); 
      out.write(" </h3></div>\r\n");
      out.write("<div class=\"right-div-right\"><h3>Country: ");
out.println(country); 
      out.write(" </h3></div>  \r\n");
      out.write("\r\n");
      out.write("<hr>\r\n");
break; } 
      out.write("\r\n");
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<br>\r\n");
      out.write("	\r\n");
      out.write("<table id=\"customers\">\r\n");
      out.write("<h3>Product Details</h3>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <th>S.No</th>\r\n");
      out.write("    <th>Product Name</th>\r\n");
      out.write("    <th>category</th>\r\n");
      out.write("    <th>Price</th>\r\n");
      out.write("    <th>Quantity</th>\r\n");
      out.write("     <th>Sub Total</th>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");

  	ResultSet rs1=st.executeQuery("select * from cart  inner join product where cart.product_id=product_id  and cart.email='"+email+"' and cart.status='bill'");
  	while(rs1.next())
  	{
  		sno=sno+1;	
  		
  
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td> ");
 out.println(sno); 
      out.write(" </td>\r\n");
      out.write("    <td> ");
      out.print( rs1.getString(17)  );
      out.write(" </td>\r\n");
      out.write("    <td> ");
      out.print( rs1.getString(18)  );
      out.write(" </td>\r\n");
      out.write("    <td> ");
      out.print( rs1.getString(19)  );
      out.write(" </td>\r\n");
      out.write("    <td> ");
      out.print( rs1.getString(3)  );
      out.write(" </td>\r\n");
      out.write("    <td> ");
      out.print( rs1.getString(5)  );
      out.write("</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
break ; } 
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<h3>Total: ");
 out.println(total); 
      out.write(" </h3>\r\n");
      out.write("<a href=\"continueShopping.jsp\"><button class=\"button left-button\">Continue Shopping</button></a>\r\n");
      out.write("<a onclick=\"window.print();\"><button class=\"button right-button\">Print</button></a>\r\n");
      out.write("<br><br><br><br>\r\n");

	    
	}
	catch(Exception e)
	{
		System.out.println(e);
	}

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}