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


<!-- Single button -->
<?php
if($this->session->get("lg_in") !="1")
    { 
?>
<div class="navbar navbar-default">
   <div class="navbar-header">
 <h4>|Wireles Access Point Monitoring System|</h4> 
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
     </div>
  <div class="navbar-collapse collapse navbar-responsive-collapse">
      <ul class="nav navbar-nav navbar-right">
      <li><a href="login">Login</a></li>
     </ul>
      </li>
    </ul>
  </div>
</div>
<?php
}

if($this->session->get("lg_in") == "1")
{
    ?>


<div class="navbar navbar-default">
   <div class="navbar-header">
 <h4>|Wireles Access Point Monitoring System|</h4> 
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
     </div>
  <div class="navbar-collapse collapse navbar-responsive-collapse">
      <ul class="nav navbar-nav navbar-right">
    <div class="btn-group ">
    <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i>
 <?php
    echo $this->session->get('username');
    ?>
    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">
    <span class="fa fa-caret-down"></span></a>
  <ul class="dropdown-menu">
    <li><a href="data">จัดการข้อมูล</a></li>
     <li><a href="admin">จัดการสมาชิก</a></li>
    <li><a href="login/logout">Logout</a></li>
     </ul>
</div>
  </div>
</div>

<?php
}
?>


<div class="row"> <!--grid 12  map 9 manu 3>
<!--map-->
  <div class="col-md-8">
      <style>
      #map_canvas {
        width: 900px;
        height: 500px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
      function initialize() {
        var mapCanvas = document.getElementById('map_canvas');
        var mapOptions = {
          center: new google.maps.LatLng(13.819559, 100.514854),
          zoom: 18,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(mapCanvas, mapOptions)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  <body>
    <div id="map_canvas"></div>
  </body>
  </div>


<!--manu-->

         <div class="col-md-4">
            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab">Status</a></li>
                            <li><a href="#tab2default" data-toggle="tab">Topten</a></li>
                            <li><a href="#tab3default" data-toggle="tab">Statistic</a></li>
                             <li><a href="#tab4default" data-toggle="tab">Statistic table</a></li>                      
                            </li>
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1default">Down AP </br> 
                                                                            เครื่องที่ 1</br> 
                                                                            เครื่องที่ 2</br> 
                                                                            เครื่องที่ 3</br> 
                                                                            เครื่องที่ 4</br> 
                                                                            เครื่องที่ 5</br> 

                                                                             </div>

                        <div class="tab-pane fade" id="tab2default">ทดสอบ 2</div>
                        <div class="tab-pane fade" id="tab3default">ทดสอบ 3</div>
                        <div class="tab-pane fade" id="tab4default">ทดสอบ 4</div>
                        
                    </div>
                </div>
            </div>
        </div>
      






</div>

</div>
</div>

 </body>
</html>

