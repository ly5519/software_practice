<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩查询</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
          integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/layui.css">
    <script type="text/javascript" src="../static/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="../static/js/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/common.css">
</head>
<body>

<div class="layui-col-md3">
    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="">
        <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/student/studentIndex">学生选课</a></li>
        <li class="layui-nav-item layui-this"><a
                href="${pageContext.request.contextPath}/student/showGrade?student_id=${sid}">成绩查询</a></li>
    </ul>
</div>

<div id="print" class="layui-col-md9" style="margin-left: 300px;">
    <table class="table table-hover">


        <tr>
            <h1 colspan="8">${name} 同学的成绩</h1>
        </tr>

        <tr>
            <th>课程号</th>
            <th>课程名称</th>
            <th>学分</th>
            <th>学时</th>
            <th>考察类型</th>
            <th>成绩</th>
        </tr>

        <c:forEach var="oneCourse" items="${grade}">
            <tr>
                <td>${oneCourse.courseId.id}</td>
                <td>${oneCourse.courseId.name}</td>
                <td>${oneCourse.courseId.credit}</td>
                <td>${oneCourse.courseId.period}</td>
                <td>${oneCourse.courseId.examType}</td>
                <td>${oneCourse.grade}</td>
            </tr>
            <br/>
        </c:forEach>
    </table>
</div>
<div>
    <%--    <button id="print_btn">打印</button>--%>
    <button id="print_btn" type="button" class="layui-btn">
        <i class="layui-icon layui-icon-print layui-font-12"></i>
    </button>
</div>

<script>
    // 触发打印
    const btn = document.getElementById("print_btn");
    btn.onclick = function () {
        const bodyHtml = window.document.body.innerHTML;
        window.document.body.innerHTML = document.getElementById("print").innerHTML;
        window.print();
        location.reload();
        window.document.body.innerHTML = bodyHtml;
    };

    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
</body>
</html>
