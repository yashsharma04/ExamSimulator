<%--
  Created by IntelliJ IDEA.
  User: yash
  Date: 10/21/2016
  Time: 7:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Exam Simulator </title>
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
<body>


<nav>
  <div class="nav-wrapper" style="text-align: center">
    <a href="#" class="brand-logo">Exam Simulator</a>
    <%--<ul id="nav-mobile" class="right hide-on-med-and-down">--%>
    <%--<li><a href="sass.html">Sass</a></li>--%>
    <%--<li><a href="badges.html">Components</a></li>--%>
    <%--<li><a href="collapsible.html">JavaScript</a></li>--%>
    <%--</ul>--%>

  </div>
</nav>
<div class="centerpan">
  <h4 style="margin-top: 100px">Q1:What is your name</h4>
  <br>
  <form action="#">
    <p>
      <input name="group1" type="radio" id="test1" />
      <label for="test1">Option 1</label>
    </p>
    <p>
      <input name="group1" type="radio" id="test2" />
      <label for="test2">Option 2</label>
    </p>
    <p>
      <input class="with-gap" name="group1" type="radio" id="test3"  />
      <label for="test3">Option 3 </label>
    </p>
    <p>
      <input name="group1" type="radio" id="test4" />
      <label for="test4">Option 4 </label>
    </p>
  </form>
  <br>
  <a class="waves-effect waves-light btn">Previous</a>
  <a class="waves-effect waves-light btn">Next</a>
  <br>
  <br>
  <a class="waves-effect waves-light btn">Submit</a>



</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
</body>
</html>

