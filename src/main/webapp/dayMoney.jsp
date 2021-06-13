<%--
  Created by IntelliJ IDEA.
  User: 19949
  Date: 2021/6/10
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
</head>
<style>
    #mybody{
        background-image: url("ljj4.png");
        background-size:100% 100% ;
        background-attachment: fixed
    }
</style>
<body id="mybody">
    <center>
        <form action="dayMoney.do">
            <table border="2">
                <tr>
                    <td>早餐消费</td>
                    <td>午餐消费</td>
                    <td>晚餐消费</td>
                    <td>水果消费</td>
                    <td>购物消费</td>
                    <td>娱乐/上网消费</td>
                </tr>
                <tr>
                    <td><input type="text" name="breakFirst" ></td>
                    <td><input type="text" name="lunch" ></td>
                    <td><input type="text" name="dinner" ></td>
                    <td><input type="text" name="fruit" ></td>
                    <td><input type="text" name="shopping" ></td>
                    <td><input type="text" name=" Entertainment" ></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center"><input type="submit" value="保存"></td>
                    <td colspan="3" style="text-align: center"><input type="reset"></td>
                </tr>
            </table>
        </form>
    </center>

</body>
</html>
