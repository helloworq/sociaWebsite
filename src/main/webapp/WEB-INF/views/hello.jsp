<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table class="table-viewe">
    <tr>
        <th>类型</th>
        <th>日期</th>
        <th>名字</th>
    </tr>
    <c:forEach items="${data}" var="item">
        <tr>
            <td>${item.type}</td>
            <td>${item.date}</td>
            <td>${item.name}</td>
        </tr>
    </c:forEach>
</table>