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
            <a href="https://www.baidu.com" class="banner-box"></a>
            <div class="login-box">
                <h1>账号登录</h1>
                <div id="msg"><h3 style="color: azure">${msg}</h3></div>
                <input type="text" id="school_id" name="id"   placeholder="请输入学号" required>
                <input type="password" id="password" name="password"  placeholder="请输入密码" required>
                <input type="submit" class="login-btn" value="登录">
            </div>
        </div>
    </div>
</form>

</body>
</html>
