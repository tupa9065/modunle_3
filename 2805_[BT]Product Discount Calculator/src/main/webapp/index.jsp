<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/5/2021
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form method="post" action="/display-discount">
    <h1>Product Description :</h1>
    <input type="text" name="txt_Description"/>
    <h1>List Price :</h1>
    <input type="text" name="txt_Price"/>
    <h1>Discount Percent :</h1>
    <input type="text" name="txt_Discount"/>
    <input type="submit" id="submit" value="Calculate Discount">
  </form>
  </body>
</html>
