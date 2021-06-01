<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/6/2021
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List customer</title>
</head>
<body>
<h1>List Customer</h1>
<a href="/customers?action=create">Create new customer</a>
<table border="1">

    <tr style="text-align: center; color: brown">
        <td>ID</td>
        <td>Name</td>
        <td>Address</td>
        <td>Edit</td>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td><c:out value="${customer.id}"/></td>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.address}"/></td>
            <td><a href="/customers?action=edit&&id=${customer.id}">Edit</a></td>

        </tr>
    </c:forEach>




</table>
</body>
</html>
