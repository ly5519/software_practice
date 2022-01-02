<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 12/30/2021
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>登录成功</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">




        <div class="row">
            <h1 class="text-right">您好, ${name} 同学</h1>
        </div>


        <div class="row">

        </div>
        <table class="table table-hover">


            <tr>
                <th colspan="8">这里是您这学期的专业选修课</th>
            </tr>

            <tr>
                <th>#</th>
                <th>课程名称</th>
                <th>学分</th>
                <th>学时</th>
                <th>容量</th>
                <th>已选</th>
                <th>考察类型</th>
                <th>操作按钮</th>
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
                        <a class="btn btn-success col-md-5" href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">给朕选上！</a>
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
                        <a class="btn btn-success col-md-5" href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">给朕选上！</a>
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
                        <a class="btn btn-success col-md-5" href="${pageContext.request.contextPath}/course/removeCourse?id=${sid}&cid=${course.id}">朕不要了</a>
                    </td>
                </tr>
                <br/>
            </c:forEach>



        </table>








        <div class="row" style="margin-top: 100px">

            <a  class="btn btn-info col-md-2 col-md-offset-5" href="${pageContext.request.contextPath}/student/showGrade?student_id=${sid}">查看成绩</a>

        </div>




    </div>










</body>
</html>
