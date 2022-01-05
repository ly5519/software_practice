<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>学生选课</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
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
        <li class="layui-nav-item layui-this"><a href="">学生选课</a></li>
        <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/student/showGrade?student_id=${sid}">成绩查询</a></li>
    </ul>
</div>

<div class="container" style="margin-right: 100px;margin-left: 250px;margin-bottom: 300px;">
    <div class="row">
        <h1 class="text-right">您好, ${name} 同学</h1>
    </div>
    <table class="table table-hover">
        <tr>
            <th>课程号</th>
            <th>课程名称</th>
            <th>学分</th>
            <th>学时</th>
            <th>容量</th>
            <th>已选</th>
            <th>考察类型</th>
            <th>操作按钮</th>
        </tr>
        <tr>
            <th colspan="8">这里是您这学期的专业选修课</th>
        </tr>
        <c:forEach var="course" items="${courses2}">
            <tr>
                <td>${course.id}</td>
                <td>${course.name}</td>
                <td>${course.period}</td>
                <td>${course.credit}</td>
                <td>${course.capacity}</td>
                <td>${course.selected}</td>
                <td>${course.examType}</td>
                <td>
                    <a class=" " href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">
                        <button type="button" class="layui-btn">
                            <i class="layui-icon layui-icon-add-circle layui-font-12">选择课程</i>
                        </button>
                    </a>
                </td>
            </tr>
            <br/>
        </c:forEach>
        <tr>
            <th colspan="8">这里是您这学期的任选课:</th>
        </tr>
        <c:forEach var="course" items="${courses3}">
            <tr>
                <td>${course.id}</td>
                <td>${course.name}</td>
                <td>${course.period}</td>
                <td>${course.credit}</td>
                <td>${course.capacity}</td>
                <td>${course.selected}</td>
                <td>${course.examType}</td>
                <td>
                    <a class="" href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">
                        <button type="button" class="layui-btn">
                            <i class="layui-icon layui-icon-add-circle layui-font-12">选择课程</i>
                        </button>
                    </a>
                </td>
            </tr>
            <br/>
        </c:forEach>
        <tr>
            <th colspan="8">您已经选的课:</th>
        </tr>
        <c:forEach var="course" items="${yourCourses}">
            <tr>
                <td>${course.id}</td>
                <td>${course.name}</td>
                <td>${course.period}</td>
                <td>${course.credit}</td>
                <td>${course.capacity}</td>
                <td>${course.selected}</td>
                <td>${course.examType}</td>
                <td>
                    <a class=" layui-btn  course_type layui-icon layui-icon-reduce-circle " href="${pageContext.request.contextPath}/course/removeCourse?id=${sid}&cid=${course.id}">
                        ${course.properties.substring(course.properties.length()-2)}
                    </a>
                </td>
            </tr>
            <br/>
        </c:forEach>
    </table>
</div>


<script>
    const btn = document.getElementsByClassName("course_type");
    for (let i = 0; i < btn.length; i++) {
        if (btn[i].innerHTML.search("必修") !== -1) {
            btn[i].innerHTML = "必选课";
            btn[i].setAttribute("disabled", "disabled");
        }else {
            btn[i].innerHTML = "取消选课";
            // btn[i].setAttribute("class", "layui-btn layui-btn-warm")
        }
    }


    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });
</script>


</body>
</html>