<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/11
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
<table>
    <tr >
        <th width="10%">用户编码</th>
        <th width="20%">用户名称</th>
        <th width="10%">性别</th>
        <th width="10%">年龄</th>
        <th width="10%">电话</th>
        <th width="10%">用户角色</th>
        <th width="30%">操作</th>
    </tr>
<b:forEach var="user" items="${userList}">
    <tr>
        <td>
            <span>${user.userCode}</span>
        </td>
        <td>
            <span>${user.userName}</span>
        </td>
        <td>
            <b:choose>
                <b:when test="${user.gender==1}">
                       <span>男</span>
                </b:when>
                <b:otherwise>
                    <span>女</span>
                </b:otherwise>
                
            </b:choose>

        </td>
        <td>
            <span>36</span>
        </td>
        <td>
            <span>13688889999</span>
        </td>
        <td>
            <span>系统管理员</span>
        </td>
        <td>
            <span><a class="viewUser" href="javascript:;" userid="1" username="常山赵子龙"><img src="../../static/images/read.png" alt="查看" title="查看"></a></span>
            <span><a class="modifyUser" href="javascript:;" userid="1" username="常山赵子龙"><img src="../../static/images/xiugai.png" alt="修改" title="修改"></a></span>
            <span><a class="deleteUser" href="javascript:;" userid="1" username="常山赵子龙"><img src="../../static/images/schu.png" alt="删除" title="删除"></a></span>
        </td>
        <div></div>
    </tr>
</b:forEach>
</table>

</body>
</html>
