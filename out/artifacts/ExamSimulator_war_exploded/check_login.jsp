<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 
	String username= request.getParameter("username");
	String password = request.getParameter("password");
	if (username.equals("admin") && password.equals("admin"))
	{
		
		out.print("OK");
	}
	else
	{
		out.println("0");
	}

%>