<%--
  Created by IntelliJ IDEA.
  User: 19949
  Date: 2021/6/10
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <center>
        <p style="color: darkgoldenrod;font-size: 35px;font-style: normal" >这是开始金钱管理的第一步哦！！</p><br><br>
        <form action="saveMoney.do">
            <table>
                <tr>
                    <td>请输入金额：</td>
                    <td><input type="text" name="allMoney" style="width: 250px;height: 35px" ></td>
                </tr>
                <tr>
                    <td><input type="submit" value="存放" style="background-color: dodgerblue;color: black"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
