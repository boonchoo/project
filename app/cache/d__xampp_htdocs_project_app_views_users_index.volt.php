
<?php echo $this->getContent(); ?>

<div align="right">
    <?php echo $this->tag->linkTo(array('users/new', 'Create users')); ?>
</div>

<?php echo $this->tag->form(array('users/search', 'method' => 'post', 'autocomplete' => 'off')); ?>

<div align="center">
    <h1>Search users</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id">Id</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('id', 'type' => 'numeric')); ?>
        </td>
    </tr>
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
        <td><?php echo $this->tag->submitButton(array('Search')); ?></td>
    </tr>
</table>

</form>
