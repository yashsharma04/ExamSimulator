<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%	
	if (Integer.parseInt(request.getParameter("val").toString())==0)
	{
		int c = Integer.parseInt(session.getAttribute("count").toString()) + 1 ;
		session.setAttribute("count",c);
	}
	else 
	{
		int c = Integer.parseInt(session.getAttribute("count").toString()) - 1 ;
		session.setAttribute("count",c);
	}

%>