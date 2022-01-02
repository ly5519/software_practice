<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 1/2/2022
  Time: 1:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/admin/getCourse" method="get">
        <label for="cId">更新的课程号：</label><input type="text" name="course_id" id="cId">
        <input type="submit">
    </form>

    <h2>课程名：${CourseList[0].courseId.name}</h2>

    <c:forEach var="course" items="${CourseList}">
        <tr>
            <td>${course.studentId.id}</td>
            <td>${course.studentId.name}</td>
            <td>${course.grade}</td>
            <td><a href="${pageContext.request.contextPath}/admin/toUpdatePage?course_id=${course.courseId.id}&student_id=${course.studentId.id}">更新</a></td>
        </tr>
    </c:forEach>

</body>
</html>
