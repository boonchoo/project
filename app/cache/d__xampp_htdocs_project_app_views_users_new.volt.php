
<!--bootstap-->

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css"rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>



<?php echo $this->tag->form(array('users/create', 'method' => 'post')); ?>

<table width="100%">
    <tr>
        <td align="left"><?php echo $this->tag->linkTo(array('users', 'Go Back')); ?></td>
        <td align="right"><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

<?php echo $this->getContent(); ?>

<div align="center">
    <h1>Create users</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="users">Users</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('users', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="pass">Pass</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('pass', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="name">Name</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('name', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="email">Email</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('email', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="crated">Crated</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('crated', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="user_type">User Of Type</label>
        </td>
        <td align="left">
                <?php echo $this->tag->textField(array('user_type')); ?>
        </td>
    </tr>

    <tr>
        <td></td>
        <td><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

</form>
