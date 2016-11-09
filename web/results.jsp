<!DOCTYPE html>
<html>
<head>
	<title>Results</title>
	  <!--Import materialize.css-->
	  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	  <!-- Compiled and minified CSS -->
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
	  <style >
	  	.cc{
	  		margin:auto;
	  	}
	  </style>
	  <script >
	  	function func(){
	  		top.close();
	  	}
	  </script>
</head>
<%
	
%>
<body>

	  <div class="row">
	    <div class="col s12 m6 " style="margin-left: 400px">
	      <div class="card blue-grey darken-1">
	        <div class="card-content white-text">
	          <span class="card-title">You have finished your Test</span>
	          <p> You Scored 10 out of 25 questions  <br></p>
	        </div>
	        <div class="card-action">
	         
				Questions Right = 0 <br>
				 <div class="progress">
			      <div class="determinate" style="width: 70%"></div>
			  </div>
				Question Not Attempted = 25 <br>
				 <div class="progress">
			      <div class="determinate" style="width: 50%"></div>
			  </div>
				Questions Wrong = 0 <br> 
				 <div class="progress">
				      <div class="determinate" style="width: 30%"></div>
				  </div>
				Performance =  0 % 
				 <div class="progress">
			      <div class="determinate" style="width: 70%"></div>
			  </div>
	        </div>
	      </div>
	      <a onclick="return func();" class="waves-effect waves-light btn" style='background-color: #607d8b!important'; margin:100px!important;>Close Window</a>
	    </div>
	  </div>
	<!--Import jQuery before materialize.js-->
    <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></scr
</body>
</html>