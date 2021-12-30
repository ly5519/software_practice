<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 12/30/2021
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>

<div id="login">
    <h1>欢迎光临，请登录（学生）</h1>
    <form action="${pageContext.request.contextPath}/student/verify" method="post">

        <label for="school_id">学号:</label>
        <input type="text" id="school_id" name="id" required/>

        <br/>

        <label for="password">密码:</label>
        <input type="password" name="password" id="password" required/>

        <br/>

        <input type="submit" value="提交"/>
    </form>
</div>

</body>
</html>
