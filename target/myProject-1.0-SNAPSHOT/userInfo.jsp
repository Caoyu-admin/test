<%--
  Created by IntelliJ IDEA.
  User: 19949
  Date: 2021/6/10
  Time: 19:49
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
    <style>
        .c1{
            background-image: url("ljj3.png");
            background-size:100% 100% ;
            background-attachment: fixed
        }
    </style>
    <script type="text/javascript">
        window.onload = function (){
            var pass = document.getElementById("passAgain")
            pass.onblur = function (){
                var onePass = document.getElementById("pass").value;
                var twoPass = document.getElementById("passAgain").value;
                if(onePass != twoPass){
                    onePass = "";
                    twoPass = ""
                    alert("对不起，两次密码不一致，请重新输入！！");
                }
            }
            var name = document.getElementById("name")
            var pass = document.getElementById("pass")
            var email = document.getElementById("email")
            name.onblur = function (){
                var data = document.getElementById("name").value
                var patt = /\w{3,10}/g
                if(!patt.test(data)){
                    alert("对不起您的用户名不合法，必须为3-10位的字母数字下划线")
                }
            }
            pass.onblur = function (){
                var data = document.getElementById("pass").value
                var patt = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}$/g
                if(!patt.test(data)){
                    alert("对不起您的密码不合法，密码至少8-16个字符，至少1个大写字母，1个小写字母和1个数字，其他可以是任意字符")
                }
            }
            email.onblur = function (){
                var data = document.getElementById("email").value
                var patt = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/g
                if(!patt.test(data)){
                    alert("邮箱格式错误")
                }
            }
        }
    </script>
</head>
<body class="c1">
    <center>
        <p style="font-size: 40px;color: dodgerblue">请注意，每个选项都需要填写哦，不然无法修改！！</p>
        <form action="changeUser.do">
            <table>
                <tr>
                    <td style="color: red">用户名：</td>
                    <td><input type="text" id="name" name="userName" style="width: 250px;height: 35px"></td>
                </tr>
                <tr>
                    <td style="color: red">密码：</td>
                    <td><input type="password" id="pass" name="passWord" style="width: 250px;height: 35px"></td>
                </tr>
                <tr>
                    <td style="color: red">重复密码：</td>
                    <td><input type="password" id="passAgain"  style="width: 250px;height: 35px"></td>
                </tr>
                <tr>
                    <td style="color: red"> 性别：</td>
                    <td><input type="radio" name="sex" value="男" style="color: red" >男</td>
                    <td><input type="radio" name="sex" value="女" style="color: red">女</td>
                </tr>
                <tr>
                    <td style="color: red">邮箱：</td>
                    <td><input type="text" id="email" name="email" style="width: 250px;height: 35px" ></td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit" value="修改"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
