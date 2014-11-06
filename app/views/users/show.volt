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
  <!--banner-->
  <img src="img/banner.jpg" margin ="center" class="img-responsive" alt="Responsive image">



<?php
foreach ($users as $u) {
    echo "User : " . $u->users . " / Pass : " . $u->pass . " / Name : " . $u->name;
    echo"<BR>";
}

?>
</html>