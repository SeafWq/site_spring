<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: invok
  Date: 09.03.2022
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<body>
<h2>All employees</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="editEmployee" value="/editInfo">

            <c:param name="empId" value="${emp.id}"/>
            
        </c:url>

        <c:url var="removeEmployee" value="/removeEmp">

            <c:param name="empId" value="${emp.id}"/>

        </c:url>

    <tr>
        <td>${emp.name}</td>
        <td>${emp.surname}</td>
        <td>${emp.department}</td>
        <td>${emp.salary}</td>
        <td>
            <input type="button" value="edit"
            onclick="window.location.href = '${editEmployee}' ">
        </td>

        <td>
            <input type="button" value="remove"
                   onclick="window.location.href = '${removeEmployee}' ">
        </td>


    </tr>
    </c:forEach>

</table>
<br>

<input type="button" value="add"
       onclick="window.location.href = 'addNewEmployee'"
/>

</body>
</html>
