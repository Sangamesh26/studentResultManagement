<%
  String username1=request.getParameter("username");
  String pass1=request.getParameter("password");
  
  if(username1.equalsIgnoreCase("admin") && pass1.equalsIgnoreCase("admin"))
  {
    response.sendRedirect("adminHome.jsp");
  }
  else
	  response.sendRedirect("errorAdminLogin.html");
%>