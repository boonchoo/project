<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>


<!--bootstap-->

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css"rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>

<body>
<div class="container">
       
<br><h2><p class="text-center">Admin login</p></h2>

<div class="container">
<div class="col-sm-6 col-md-4 col-md-offset-4">
			<div class="panel panel-default">
                 <div class="panel-heading">
      			<form class="form-signin" role="form" action = "login/check" method=post >
   				<div class="form-group has-feedback has-feedback-left">
    			<label class="control-label">Username</label>
   				<input type="text" name="users" class="form-control" placeholder="Username" />
  				<i class="glyphicon glyphicon-user form-control-feedback"></i>
   			</div>
 <div class="form-group has-feedback has-feedback-left">
 <label class="control-label">password</label>
 <input type="password" name="pass" class="form-control" placeholder="Password" required>
 <i class="glyphicon glyphicon-lock form-control-feedback"></i>
 </div>
 
   <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button> 
<font color="red"> 
<?php
$this->flashSession->output()


?>
</font>
</div><!-- col-sm -->
</div>


</body>
</html>

</div>






























