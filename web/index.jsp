<%--
  Created by IntelliJ IDEA.
  User: yash
  Date: 10/21/2016
      Time: 7:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.* , javax.sql.* , java.io.* , javax.naming.*" contentType="text/html;charset=UTF-8" language="java" %>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>--%>

<%--<%--%>
    <%--int count  = 1 ;--%>
    <%--if(session.isNew()) {--%>
        <%--session.setAttribute("count","1");--%>
    <%--}--%>
    <%--else--%>
    <%--{--%>
        <%--count = (Integer.parseInt(session.getAttribute("count").toString()));--%>
    <%--}--%>
<%--%>--%>
<html>
<head>
  <title>Exam Simulator </title>
  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
  <!-- Compiled and minified JavaScript -->

  <style>
    .centerpan{
      margin:auto;
      width:50%;
    }
  </style>
</head>
<script >
  $(document).ready(function(){

    function func(){
      window.open("results.jsp","_self");
    }
  $('#next').click(function(){
        $.ajax({
        type: "POST",
        url: "change.jsp", 
        data: { val : 1 }
      }).done(function( msg ) {
        // alert( "Data Saved: " + msg );
        window.open("index.jsp","_self");
      });
    });

  $('#prev').click(function(){
        $.ajax({
        type: "POST",
        url: "change.jsp", 
        data: { val : 0  }
      }).done(function( msg ) {
        // alert( "Data Saved: " + msg );
        window.open("index.jsp","_self");
      });
    });
   });

</script>
<body>
  <%--<%--%>
      <%--String connectionURL = "jdbc:mysql://host/test";--%>
      <%--Connection connection = null ;--%>
      <%--Class.forName("com.mysql.jdbc.Driver").newInstance(); --%>
      <%--connection = DriverManager.getConnection(connectionURL, "root", "Yash@sharma04");--%>
      <%--if(!connection.isClosed())--%>
      <%--{--%>
        <%--out.println("Successfully connected to " + "MySQL server using TCP/IP...");--%>
      <%--}--%>
         <%----%>

 <%--%> --%>

<%--<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"--%>
                   <%--url="jdbc:mysql://localhost/test"--%>
                   <%--user="root"  password="Yash@sharma04"/>--%>

<%--<sql:query dataSource="${snapshot}" var="result">--%>
  <%--SELECT * from testtable;--%>
<%--</sql:query>--%>


<nav>
  <div class="nav-wrapper" >
    <a href="#" class="brand-logo">Exam Simulator</a>
    <%--<ul id="nav-mobile" class="right hide-on-med-and-down">--%>
    <%--<li><a href="sass.html">Sass</a></li>--%>
    <%--<li><a href="badges.html">Components</a></li>--%>
    <%--<li><a href="collapsible.html">JavaScript</a></li>--%>
    <%--</ul>--%>
  </div>
</nav>
<div class="centerpan">
    <%--<c:forEach var="row" items="${result.rows}">--%>

        <h4 style="margin-top: 100px">Q1 Random Question</h4>
        <br>
        <form action="#"> 
            <p>
                <input name="group1" type="radio" id="test1" />
                <label for="test1">option 1 </label>
            </p>
            <p>
                <input name="group1" type="radio" id="test2" />
                <label for="test2">option 2</label>
            </p>
            <p>
                <input class="with-gap" name="group1" type="radio" id="test3"  />
                <label for="test3">option 3 </label>
            </p>
            <p>
                <input name="group1" type="radio" id="test4" />
                <label for="test4">option 4 </label>
            </p>
        </form>
        <br>
        <%--<%--%>
            <%--if(<c:out value="${row.id})"/> != '1')--%>
            <%--{--%>
                <%----%>
            <%--}--%>
        <%--%>--%>

          <!-- out.println("<a id='prev' class='waves-effect waves-light btn'>Previous</a>"); -->
          <a id='prev' class='waves-effect waves-light btn'>Previous</a>
          <!-- if (count!=5) -->
          <!-- out.println("<a id ='next' class='waves-effect waves-light btn'>Next</a>"); -->
        <a id ='next' class='waves-effect waves-light btn'>Next</a>
        <!-- %> -->
        <br>
        <br>
        <a href="results.jsp" class="waves-effect waves-light btn">Submit</a>
         <%--</c:forEach> --%>


</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
</body>
</html>
