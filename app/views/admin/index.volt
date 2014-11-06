
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
<div class="container">
    <div id="page-wrapper"> 
          <div class="row">
            <div class="col-cm-12">
            <h3>จัดการผู้ใช้งาน <small>ผู้ดูแลระบบ</small></h3>
            
                <ol class="breadcrumb">
                    <li><a href="index"><i class="glyphicon glyphicon-home"></i> หน้าหลัก</a></li>
                    <li class="active"><i class="fa fa-edit"></i> จัดการผู้ใช้งาน</li>
                </ol>
           
                <div id="alert" hidden></div>
                             
              <ul class="nav nav-tabs">
                    <li class="active"><a href="#list_user" data-toggle="tab">รายชื่อผู้ใช้งานทั้งหมด</a></li>
                    <li><a href="#add_user" data-toggle="tab">เพิ่มผู้ใช้งาน</a></li>
                </ul>

                            
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="list_user">
                        <br/>
                        <table  class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th rowspan="2">ลำดับ</th>
                                    <th rowspan="2">ชื่อเข้าใช้ระบบ</th>
                                    <th colspan="2" style="width:30%">เครื่องมือ</th>
                                </tr>
                                <tr>
                                    <th>แก้ไข</th>
                                    <th>ลบ</th>
                                </tr>
                            </thead>
                            <tbody id="list_user">
                            <?php $i=0; ?>

                        <?php foreach ($users as $u) {?>

                            <?php $i++; ?>
                                <tr>
                                    <td style="width:10%"><?php echo $i; ?></td>
                                    <td style="text-align:left"><?php echo $u->name ; ?></a></td>
                                    
                                    <td>
                                   
<button class="btn btn-warning " data-toggle="modal" data-target="#myModal<?= $u->id ?>"><i class="glyphicon glyphicon-pencil"></i>
 แก้ไขรหัสผ่าน
</button>



<div class="modal fade" id="myModal<?= $u->id ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">เปลี่ยนรหัสผ่าน</h4>
                                            </div>
                                            <form class="form-horizontal" role="form" method="post" action="admin/edit"  >
                                            <div class="modal-body">
                                                <input type="hidden" name="uid" value="<?= $u->id ?>">
                                                
                                                <div class="form-group">
                                                    <label for="inputEmail3" class="col-sm-3 control-label">รหัสผ่านใหม่ :</label>
                                                    <div class="col-md-7">
                                                        <input type="password" class="form-control" id="pass<?= $u->id ?>" name="pass"  required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputEmail3" class="col-sm-3 control-label">ยืนยันรหัสผ่าน :</label>
                                                    <div class="col-md-7">
                                                        <input type="password" class="form-control" id="pass2<?= $u->id ?>" name="pass2"  required>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="modal-footer">
                                            <div class="form-group" id="bt_submit">
                                                    <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                                    <div class="col-md-7">
                                                        <button type="submit"  class="btn btn-success" onclick="return checkpass(<?= $u->id ?>);">เปลี่ยนรหัส</button>
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">ปิด</button>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>




















                                    </td>
                                    <td >
                                        <a href="admin/delete/<?= $u->id; ?>"><button class="btn btn-danger" onClick="confirm('คุณต้องการจะลบใช่หรือไม่?')">
                                        <i class="glyphicon glyphicon-ban-circle"></i> ลบ</button></a>
                                    </td>
                                </tr>
                            <?php } ?>
                            <tbody>
                        </table>
                    </div>
                    
                    <!--addusers tab-->

             <div class="tab-pane fade" id="add_user">
                        <br/>
                            <form class="form-horizontal" role="form" method="post" action="admin/create">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">User:</label>
                                    <div class="col-md-3 col-sm-4">
                                        <input type="text" class="form-control" id="users" name="users" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">password :</label>
                                    <div class="col-md-3 col-sm-4">
                                        <input type="password" class="form-control" id="pass" name="pass" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">Name :</label>
                                    <div class="col-md-3 col-sm-4">
                                        <input type="text" class="form-control" id="name" name="name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-3 control-label">Email:</label>
                                    <div class="col-md-3 col-sm-4">
                                        <input type="email" class="form-control" id="email" name="email" required>
                                    </div>
                                </div>
                              
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-10">
                                        <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-save"></i> จัดเก็บ</button> 
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>

            </div>
            <!-- /.col-lg-12 -->
        </div><!-- /.row -->
        
    </div><!-- /#page-wrapper -->
            
                </div>
            </div>
        </div> <!-- /container -->
</div>

      <?php
               $this->flashSession->output () ;
        ?>
        </div>


       <script type="text/javascript">


       function checkpass(id) {
            if($('#pass'+id).val() != $('#pass2'+id).val()) {
                alert("xxxxxxxxxxxxxxxxxxxxxx");
                return false;
            }
            return true;
       }
       </script>


</body>