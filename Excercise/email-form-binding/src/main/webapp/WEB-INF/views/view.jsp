<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/19/2022
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Views</title>
</head>
<body>

<h1>Settings</h1>
<form:form action="/show" method="post" modelAttribute="email">
    <table>
        <tr>
            <td>
            <form:label path="language">Languages</form:label>
            </td>
            <form:select path="language">
                <form:options items="${languageList}"></form:options>
            </form:select>
        </tr>

        <tr>
            <td><form:label path="pageSize">Page size</form:label></td>
            <td>Show
            <form:select path="pageSize">
                <form:option value="5"></form:option>
                <form:option value="10"></form:option>
                <form:option value="15"></form:option>
                <form:option value="20"></form:option>
                <form:option value="25"></form:option>
                <form:option value="50"></form:option>
                <form:option value="100"></form:option>
            </form:select>
                emails per page
            </td>
        </tr>

        <tr>
            <td><form:label path="spamFilter">Spam filter</form:label></td>
            <td>
                <form:checkbox path="spamFilter"></form:checkbox>
                <form:label path="spamFilter">Enable spams filter</form:label>
            </td>
        </tr>
        <tr>
            <td><form:label path="color">Color</form:label></td>
            <td>
                <form:checkbox path="color" value="red"></form:checkbox>
                <form:checkbox path="color" value="blue"></form:checkbox>
                <form:checkbox path="color" value="pink"></form:checkbox>
            </td>
        </tr>

        <tr>
            <td><form:label path="signature">Signature</form:label></td>
            <td><form:textarea path="signature"></form:textarea></td>
        </tr>

        <tr>
            <td>
                <form:radiobutton path="color" value="black" label="black"></form:radiobutton>
                <form:radiobutton path="color" value="white" label="white"></form:radiobutton>
            </td>
        </tr>

        <tr>
            <td><input type="submit" value="Update"></td>
            <td><input type="reset" value="Cancel"></td>
        </tr>
    </table>
</form:form>

</body>
</html>
