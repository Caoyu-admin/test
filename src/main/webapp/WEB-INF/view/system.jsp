<%--
  Created by IntelliJ IDEA.
  User: 19949
  Date: 2021/6/9
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>金钱管理系统</title>
</head>
<frameset rows="20%,70%">
    <frame name="top" src="<%=request.getContextPath()%>/top.jsp"/>
    <frameset cols="15%,85%">
        <frame name="left" src="<%=request.getContextPath()%>/left.jsp"/>
        <frame name="right" />
    </frameset>
</frameset>
</html>
