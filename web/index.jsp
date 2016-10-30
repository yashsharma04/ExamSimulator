<%--
  Created by IntelliJ IDEA.
  User: yash
  Date: 10/21/2016
      Time: 7:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.* , javax.sql.* , java.io.* , javax.naming.*" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Exam Simulator </title>
  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
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
        window.open('results.jsp', '_self','');

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
<%

    int count = 1;

    if (session.isNew())
    {
        session.setAttribute("count",1);
    }
    else
        count =  Integer.parseInt(session.getAttribute("count").toString());

    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    Statement st= con.createStatement();
    ResultSet rs=st.executeQuery("select * from testtable where id ="+count);
    String question  = "";
    String option1 = "" ;
    String option2 = "";
    String option3 = "";
    String option4 = "";

    if (rs.next())
    {
        question = rs.getString(2);
        option1 = rs.getString(3);
        option2 = rs.getString(4);
        option3 = rs.getString(5);
        option4 = rs.getString(6);

    }


%>

<nav>
  <div class="nav-wrapper" >
    <a href="#" class="brand-logo">Exam Simulator</a>
    <a href="login.jsp" style='float: right; margin-right: 10px'>Logout </a>
  </div>
</nav>
<div class="centerpan">
        <h4 style="margin-top: 100px">Q<% out.print(count); %> <% out.print(question); %></h4>
        <br>
        <form action="#">
            <p>
                <input name="group1" type="radio" id="test1" />
                <label for="test1"><% out.print(option1);%> </label>
            </p>
            <p>
                <input name="group1" type="radio" id="test2" />
                <label for="test2"><%out.print(option2);%></label>
            </p>
            <p>
                <input class="with-gap" name="group1" type="radio" id="test3"  />
                <label for="test3"><%out.print(option3);%> </label>
            </p>
            <p>
                <input name="group1" type="radio" id="test4" />
                <label for="test4"><%out.print(option4);%></label>
            </p>
        </form>
        <br>

        <%
            if (count!=1)
                out.print("<a id='prev' class='waves-effect waves-light btn'>Previous</a>");
            else if (count==1)
                out.print("<a id='prev1' class='waves-effect waves-light btn' disabled>Previous</a>");
            if (count!=5)
                out.print("<a id ='next' class='waves-effect waves-light btn'>Next</a>");
            else if (count==5)
                out.print("<a id ='next1' class='waves-effect waves-light btn' disabled>Next</a>");

        %>




        <br>
        <br>
        <a href="results.jsp" class="waves-effect waves-light btn">Submit</a>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
</body>
</html>
