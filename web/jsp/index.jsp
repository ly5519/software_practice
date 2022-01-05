<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新成绩界面</title>
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
<div class="layui-col-md3">
    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="">
        <li class="layui-nav-item layui-this"><a href="">录入成绩</a></li>
    </ul>
</div>
<div style="margin-left: 250px;">
    <form action="${pageContext.request.contextPath}/admin/getCourse" method="get">
        <label for="cId">更新的课程号：</label>
        <input type="text" name="course_id" id="cId" required lay-verify="required|number" autocomplete="off"  >
        <input type="submit">
    </form>
</div>

<div class="layui-col-md9"style="margin-left: 250px;">
    <h2>课程名：${CourseList[0].courseId.name}</h2>
    <table class="table table-hover">
        <tr>
            <th>课程号</th>
            <th>课程名称</th>
            <th>学分</th>
            <th>学时</th>
            <th>考察类型</th>
            <th>成绩</th>
            <th>操作</th>
        </tr>
        <c:forEach var="course" items="${CourseList}">
            <tr>
                <td>${course.courseId.id}</td>
                <td>${course.courseId.name}</td>
                <td>${course.courseId.credit}</td>
                <td>${course.courseId.period}</td>
                <td>${course.courseId.examType}</td>
                <td>${course.grade}</td>
                <td><a href="${pageContext.request.contextPath}/admin/toUpdatePage?course_id=${course.courseId.id}&student_id=${course.studentId.id}">
                   <button id="Button2" type="button" class="layui-btn layui-btn-sm">
                       <i class="layui-icon layui-icon-edit layui-font-12">编辑成绩</i>
                   </button></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>


<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });

</script>
</body>
</html>
