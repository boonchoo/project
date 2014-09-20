
<?php echo $this->getContent(); ?>

<table width="100%">
    <tr>
        <td align="left">
            <?php echo $this->tag->linkTo(array('users/index', 'Go Back')); ?>
        </td>
        <td align="right">
            <?php echo $this->tag->linkTo(array('users/new', 'Create ')); ?>
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Users</th>
            <th>Pass</th>
            <th>Name</th>
            <th>Email</th>
            <th>Crated</th>
            <th>User Of Type</th>
         </tr>
    </thead>
    <tbody>
    <?php if (isset($page->items)) { ?>
    <?php foreach ($page->items as $user) { ?>
        <tr>
            <td><?php echo $user->id; ?></td>
            <td><?php echo $user->users; ?></td>
            <td><?php echo $user->pass; ?></td>
            <td><?php echo $user->name; ?></td>
            <td><?php echo $user->email; ?></td>
            <td><?php echo $user->crated; ?></td>
            <td><?php echo $user->user_type; ?></td>
            <td><?php echo $this->tag->linkTo(array('users/edit/' . $user->id, 'Edit')); ?></td>
            <td><?php echo $this->tag->linkTo(array('users/delete/' . $user->id, 'Delete')); ?></td>
        </tr>
    <?php } ?>
    <?php } ?>
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td><?php echo $this->tag->linkTo(array('users/search', 'First')); ?></td>
                        <td><?php echo $this->tag->linkTo(array('users/search?page=' . $page->before, 'Previous')); ?></td>
                        <td><?php echo $this->tag->linkTo(array('users/search?page=' . $page->next, 'Next')); ?></td>
                        <td><?php echo $this->tag->linkTo(array('users/search?page=' . $page->last, 'Last')); ?></td>
                        <td><?php echo $page->current . '/' . $page->total_pages; ?></td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
