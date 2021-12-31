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
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>


<form action="${pageContext.request.contextPath}/student/verify" method="post">
    <div class="content">
        <div class="login-content">
            <a href="" class="banner-box"></a>
            <div class="login-box">
                <h1>账号登录</h1>
                <input type="text" id="school_id" name="id"   placeholder="请输入学号" required>
                <input type="password" id="password" name="password"  placeholder="请输入密码" required>
                <input type="submit" class="login-btn" value="登录">
            </div>
        </div>
    </div>
</form>

</body>
</html>
