<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/19/2022
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h2>Setting email info</h2>
<table>
    <tr>
        <td>Languages</td>
        <td>${language}</td>
    </tr>

    <tr>
        <td>Page size</td>
        <td>${pageSize}</td>
    </tr>

    <tr>
        <td>Spam filter</td>
        <td>${spamFilter}</td>
    </tr>

    <tr>
        <td>Signature</td>
        <td>${signature}</td>
    </tr>

    <tr>
        <td>Color</td>
        <td>${color}</td>
    </tr>
</table>
</body>
</html>
