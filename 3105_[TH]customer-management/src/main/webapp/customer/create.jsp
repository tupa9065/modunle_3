<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/6/2021
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new customer</title>
</head>
<body>
<h1>Create new customer</h1>
<a href="/customers">list customer</a>
<form action="/customers?action=create" method="post">
<table border="1">
    <tr>
        <td>id:</td>
        <td><input type="text" name="id"></td>
    </tr>
    <tr>
        <td>name:</td>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <td>address:</td>
        <td><input type="text" name="address"></td>
    </tr>
    <tr>
        <td> </td>
        <td>
            <button type="reset">reset</button>
            <button>submit</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
