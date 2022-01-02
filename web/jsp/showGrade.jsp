<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 1/2/2022
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="print">
    <c:forEach var="oneCourse" items="${grade}">
        <tr>
            <td>${oneCourse.courseId.name}</td>
            <td>${oneCourse.grade}</td>
        </tr>
        <br/>
    </c:forEach>
</div>
    <button id="print_btn">打印</button>

    <br/>
    <a href="${pageContext.request.contextPath}/student/studentIndex?id=${grade[0].studentId.id}">返回</a>

    <script>
        // 触发打印
        const btn = document.getElementById("print_btn");
        btn.onclick = function () {
            const bodyHtml = window.document.body.innerHTML;
            window.document.body.innerHTML = document.getElementById("print").innerHTML;
            window.print();
            window.document.body.innerHTML = bodyHtml;
        };
    </script>
</body>
</html>
