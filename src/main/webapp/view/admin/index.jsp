<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/9
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href=${pageContext.request.contextPath}"/static/css/base.css" rel="stylesheet">
    <link href=${pageContext.request.contextPath}"/static/css/hader.css" rel="stylesheet">
</head>
<body>

</body>
<header>
    <h1>超市管理系统</h1>
    <div class="header_info">
        <span>欢迎你！</span>${loginUser.userName}
    </div>
</header>
</html>
