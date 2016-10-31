<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: yash
  Date: 10/31/2016
  Time: 7:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = null;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    Statement st= null;
    st = con.createStatement();
    ResultSet rs= null;
    int id = Integer.parseInt(request.getParameter("val"));
    int count = Integer.parseInt(request.getParameter("count"));

        st.executeUpdate("update testtable set userAnswer="+id+" where id ="+count);


%>
