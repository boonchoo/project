
{{ content() }}

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
   
<li><a href="users">จัดการข้อมูล</a></li>
    <li><a href="login/logout">Logout</a></li>
  </ul>
</div>
  </div>
</div>
     </ul>
      </li>
    </ul>
  </div>
</div>







<div align="right">
    {{ link_to("users/new", "Create users") }}
</div>

{{ form("users/search", "method":"post", "autocomplete" : "off") }}

<div align="center">
    <h1>Search users</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id">Id</label>
        </td>
        <td align="left">
            {{ text_field("id", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="users">Users</label>
        </td>
        <td align="left">
            {{ text_field("users", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="pass">Pass</label>
        </td>
        <td align="left">
            {{ text_field("pass", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="name">Name</label>
        </td>
        <td align="left">
            {{ text_field("name", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="email">Email</label>
        </td>
        <td align="left">
            {{ text_field("email", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="crated">Crated</label>
        </td>
        <td align="left">
            {{ text_field("crated", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="user_type">User Of Type</label>
        </td>
        <td align="left">
                {{ text_field("user_type") }}
        </td>
    </tr>

    <tr>
        <td></td>
        <td>{{ submit_button("Search") }}</td>
    </tr>
</table>

</form>
