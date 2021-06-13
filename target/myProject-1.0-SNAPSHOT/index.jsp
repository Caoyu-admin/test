<%--
  Created by IntelliJ IDEA.
  User: 19949
  Date: 2021/6/9
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>cy的金钱管理系统</title>
    <base href="<%=basePath%>>">
</head>
<style type="text/css">
    .b{
        background-image: url("ljj.png");
        background-size:100% 100% ;
        background-attachment: fixed
    }
</style>

<body class="b">
    <center>
        <p style="color: black;font-size: 50px">账号密码登录</p><br>
        <form action="login.do" method="post">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" id="name" name="userName" style="width: 250px;height: 35px"></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="password" id="pass" name="passWord" style="width: 250px;height: 35px"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="登录"></td>
                    <td><a href="register.jsp" style="color: red">点击注册</a></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
