<%@page import="project.connectionProvider"%>
<%@page import="java.sql.*" %>
<%
 String rollNo=request.getParameter("rollNo");
 String phy=request.getParameter("physics");
 String chem=request.getParameter("chemistry");
 String math=request.getParameter("math");
 String electrical=request.getParameter("electrical");
 String electronics=request.getParameter("electronic");
 String chemLab=request.getParameter("chemLab");
 String phyLab=request.getParameter("phyLab");
 
 try
 {
	  Connection con=connectionProvider.getCon();
	  Statement st=con.createStatement();
	  st.executeUpdate("insert into marks values('"+rollNo+"','"+phy+"','"+chem+"','"+math+"','"+electrical+"','"+electronics+"','"+chemLab+"','"+phyLab+"')");
	  response.sendRedirect("adminHome.jsp");
 }
 catch(Exception e)
 {
	  out.println(e);
 }
%>

