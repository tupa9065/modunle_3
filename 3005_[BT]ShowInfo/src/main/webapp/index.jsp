<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/5/2021
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        table {
            margin-left: auto; margin-right: auto;
            border: 1px solid pink;
            border-collapse: collapse;
        }
        th{
            background: rosybrown;
        }
        th, td {
            padding: 10px;
            border: 1px solid pink;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<%
    List<String[]> customers = new ArrayList<>();
    String[] customer1 = {"Megu Fujiura ", "04/05/1989", "Nhật Bản", "img\\Megu-Fujiura.jpg"};
    String[] customer2 = {"Maria Ozawa", "08/01/1986", "Phillipnes ", "img/Maria-Ozawa.jpg"};
    String[] customer3 = {"Ameri-Ichinose", "16/09/1987", "Nhật Bản ","img/Ameri-Ichinose.jpg"};
    String[] customer4 = {"Rola-Misaki", "1992", "Nhật Bản", "img/Rola-Misaki.jpg"};
    String[] customer5 = {"Nana Yagi", " 2000", "Nhật Bản", "img/thien-than-4.jpg"};
    customers.add(customer1);
    customers.add(customer2);
    customers.add(customer3);
    customers.add(customer4);
    customers.add(customer5);
     pageContext.setAttribute("customers",customers);

%>
<h1 style="text-align: center">Customers info</h1>
<table >
    <tr>
    <th>Name</th>
    <th>ngay sinh </th>
    <th>dia chi</th>
    <th>anh</th>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
        <td><c:out value="${customer[0]}"/></td>
        <td><c:out value="${customer[1]}"/></td>
        <td><c:out value="${customer[2]}"/></td>
        <td><img  style="width: 120px;height: 150px" src="<c:out value="${customer[3]}"/>"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
