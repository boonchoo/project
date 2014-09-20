<?php echo $this->getContent(); ?>
<?php echo $this->tag->form(array('users/save', 'method' => 'post')); ?>

<table width="100%">
    <tr>
        <td align="left"><?php echo $this->tag->linkTo(array('users', 'Go Back')); ?></td>
        <td align="right"><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

<div align="center">
    <h1>Edit users</h1>
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
        <td><?php echo $this->tag->hiddenField(array('id')); ?></td>
        <td><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

</form>
