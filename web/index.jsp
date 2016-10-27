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
//      window.open("results.jsp","_self");
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

<nav>
  <div class="nav-wrapper" >
    <a href="#" class="brand-logo">Exam Simulator</a>
    <a href="login.jsp" style='float: right; margin-right: 10px'>Logout </a>
  </div>
</nav>
<div class="centerpan">
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
        
        <a id='prev' class='waves-effect waves-light btn'>Previous</a>

        <a id ='next' class='waves-effect waves-light btn'>Next</a>
        <br>
        <br>
        <a href="results.jsp" class="waves-effect waves-light btn">Submit</a>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
</body>
</html>
