<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="static java.sql.DriverManager.*" %><%--
  Created by IntelliJ IDEA.
  User: yash
  Date: 10/31/2016
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = getConnection("jdbc:mysql://localhost:3306/test","root","");
        Statement st;
        st = con.createStatement();
        ResultSet rs= null;
        int id = Integer.parseInt(request.getParameter("val"));
        int count = Integer.parseInt(request.getParameter("count"));
        ArrayList list = new ArrayList() ;
        list = (ArrayList) session.getAttribute("list");
        list.set(count , id );
        
        st.executeUpdate("UPDATE testtable SET userAnswer="+id+" WHERE id ="+count);
        out.println(id) ;
        out.println(count) ;
          }
    catch (Exception e)
    {
        e.printStackTrace();
    }



%>
