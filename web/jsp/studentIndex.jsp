<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 12/30/2021
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>

<h1>您好, ${name} 同学</h1>

<div>
    <h2>这里是您这学期的必选课</h2>
    <c:forEach var="course" items="${courses1}">
        <tr>
            <td>${course.id}</td>
            <td>${course.name}</td>
            <td>${course.period}</td>
            <td>${course.credit}</td>
            <td>${course.capacity}</td>
            <td>${course.selected}</td>
            <td>${course.examType}</td>
            <td>
                <a href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">给朕选上！</a>
            </td>
        </tr>
        <br/>
    </c:forEach>
</div>

<div>
    <h2>这里是您这学期的专业选修课</h2>
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
                <a href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">给朕选上！</a>
            </td>
        </tr>
        <br/>
    </c:forEach>
</div>

<div>
    <h2>这里是您这学期的任选课</h2>
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
                <a href="${pageContext.request.contextPath}/course/chooseCourse?id=${sid}&cid=${course.id}">给朕选上！</a>
            </td>
        </tr>
        <br/>
    </c:forEach>
</div>

<div>
    <h2>您已经选的课</h2>
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
                <a href="${pageContext.request.contextPath}/course/removeCourse?id=${sid}&cid=${course.id}">朕不要了</a>
            </td>
        </tr>
        <br/>
    </c:forEach>
</div>


</body>
</html>
