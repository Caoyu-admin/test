<%--
  Created by IntelliJ IDEA.
  User: 19949
  Date: 2021/6/10
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <ul>
    <li>个人信息管理
      <ul>
        <li><a href="<%=request.getContextPath()%>/userInfo.jsp" target="right">修改个人信息</a></li>
      </ul>
    </li>
    <li>个人金钱管理
      <ul>
        <li><a href="<%=request.getContextPath()%>/allMoney.jsp" target="right">存放总额</a></li>
      </ul>
      <ul>
        <li><a href="<%=request.getContextPath()%>/dayMoney.jsp" target="right">记录我的日收支</a></li>
      </ul>
      <ul>
        <li><a href="<%=request.getContextPath()%>/static/findWeek.jsp" target="right">查看我的周收支记录</a></li>
      </ul>
      <ul>
        <li><a href="<%=request.getContextPath()%>/static/findMonth.jsp" target="right">查看我的月收支记录</a></li>
      </ul>

    </li>
    <li>收支报告
      <ul>
        <li><a href="<%=request.getContextPath()%>/static/weekReport.jsp" target="right">生成我的周收支报告</a></li>
      </ul>
      <ul>
        <li><a href="<%=request.getContextPath()%>/static/monthReport.jsp" target="right">生成我的月收支报告</a></li>
      </ul>
    </li>
  </ul>

</body>
</html>
