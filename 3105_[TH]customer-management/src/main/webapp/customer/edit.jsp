<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/6/2021
  Time: 11:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>edit info customer</title>
</head>
<body>
<h1>edit info customer</h1>
<a href="/customers">list customer</a>
<form action="/customers?action=edit" method="post">
    <table border="1">
        <tr>
            <td></td>
            <td>

                <input type="hidden"  name="id"  value="${customer.id}"/>
            </td>
        </tr>
        <tr>
            <td>name:</td>
            <td><input type="text" name="name"  value="${customer.name}"/></td>
        </tr>
        <tr>
            <td>address:</td>
            <td><input type="text" name="address"  value="${customer.address}"/></td>
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
