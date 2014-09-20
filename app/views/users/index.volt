
{{ content() }}

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
