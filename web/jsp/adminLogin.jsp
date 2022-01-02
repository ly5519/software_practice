<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 12/31/2021
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/student/adminVerify" method="post">
    <div class="content">
        <div class="login-content">
            <a href="" class="banner-box"></a>
            <div class="login-box">
                <h1>账号登录</h1>
                <label for="school_id"></label>
                <input type="text" id="school_id" name="username"   placeholder="请输入学号" required>
                <label for="password"></label>
                <input type="password" id="password" name="password" placeholder="请输入密码" required>
                <input type="submit" class="login-btn" value="登录">
                <h2>${msg}</h2>
            </div>
        </div>
    </div>
</form>
</body>
</html>
