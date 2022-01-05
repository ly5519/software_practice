<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>录入成绩</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/layui.css">
    <script type="text/javascript" src="../static/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="../static/js/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/common.css">

</head>
<body>
    <form action="${pageContext.request.contextPath}/admin/update" method="post">
        <input type="hidden" name="course_id" value="${oneRecord.courseId.id}">
        <input type="hidden" name="student_id" value="${oneRecord.studentId.id}">
        <label for="name">学生名字</label>
        <input type="text" id="name" disabled="disabled" value="${oneRecord.studentId.name}">
        <label for="course">课程名称</label>
        <input type="text" id="course" disabled="disabled" value="${oneRecord.courseId.name}">
        <label for="grade">成绩</label>
        <input type="text" name="grade" id="grade" placeholder="${oneRecord.grade}" required autocomplete="off">
        <input type="submit">
    </form>
</body>
</html>
