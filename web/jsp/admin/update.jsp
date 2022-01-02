<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 1/2/2022
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/admin/update" method="post">
        <input type="hidden" name="course_id" value="${oneRecord.courseId.id}">
        <input type="hidden" name="student_id" value="${oneRecord.studentId.id}">
        <label for="name">学生名字</label>
        <input type="text" id="name" value="${oneRecord.studentId.name}">
        <label for="grade">成绩</label>
        <input type="text" name="grade" id="grade" placeholder="${oneRecord.grade}" required>
        <input type="submit">
    </form>
</body>
</html>
