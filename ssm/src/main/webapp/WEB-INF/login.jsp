<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />

<html>
<head>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>

</head>
<body>

<h3>请登录</h3>
<%
    String basePath = request.getContextPath()+"/login";
//    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<form id="test" method="post">
    <table align="center" border="1">
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
              <a href="javascript:userAdd()">登录</a>

            <%--<td><input type="submit" value="登录" name="login"></td>--%>
        </tr>
    </table>
</form>
<script>
    function userAdd(){
        $.ajax({
            url:"${ctx}/login",
            data:$("#userAdd").serialize(),
            type:"post",
            success:function(data){
                console.log(data);
            }
        });
    }
</script>
</html>
