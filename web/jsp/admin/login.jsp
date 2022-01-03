<%--
  Created by IntelliJ IDEA.
  User: Liu_Yan
  Date: 1/2/2022
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/admin/index" method="post">
        <label for="user">username:</label><input type="text" id="user" name="user" required>
        <label for="password">password:</label><input type="password" id="password" name="password" required>
        <input type="submit">
    </form>
</body>
</html>
