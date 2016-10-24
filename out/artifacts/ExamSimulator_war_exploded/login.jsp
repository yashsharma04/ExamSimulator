<!DOCTYPE html>
<html>
  <head>
      
    <!--Import materialize.css-->
      <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
  <!-- Compiled and minified JavaScript -->
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title >
      Login 
    </title>
    <script>
      function validate ()
      {
          alert("inside");
          var username = document.getElementById('username').value;
          var pwd  = document.getElementById('password').value;
          $.ajax({
            type: "POST",
            url:  'check_login.jsp',
            data : {username:username ,password:pwd },
            cache: false,
            success: function(response)
            {
//              alert(response.trim());
                var res=response.trim();
              if(res=="OK")
              {

                window.open("index.jsp","_self");
              }
              else
              {
                  Materialize.toast('Wrong Details !', 4000); // 4000 is the duration of the toast
              }
            }
          });
      }
  </script>

  </head>
  <body>
    <div class='container container_size'>
      <div class='row'>
        <div class='col s12 center_class'>
          <h4>Login</h4>
      </div>
      </div>
      <div class="row">
        <form class="col s12" >

          <div class="row">
            <div class="input-field col s12">
              <input id="username" type="text" class="validate" required="text">
              <label for="username">UserName</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="password" type="password" class="validate" required='text' >
              <label for="password">Password</label>
            </div>
          </div>
        </form>
      </div>
      <div class='row center_class'>
        <button class="btn waves-effect waves-light" type="submit" name="action" onclick="validate()">LogIn
          <!-- <i class="material-icons right">send</i> -->
        </button>
      </div>
    </div>

    <!--Import jQuery before materialize.js-->
    <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
  </body>
</html>