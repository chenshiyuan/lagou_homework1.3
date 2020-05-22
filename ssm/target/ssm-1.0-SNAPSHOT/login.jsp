<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />

<html>
<head>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <%--<script type="text/javascript" src="WEB-INF/js/jquery-3.4.1.min.js"></script>--%>

</head>
<body>

<h3>请登录:</h3>
    <%
    String basePath = request.getContextPath()+"/login";
//    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<form id="test" method="post">
    <table align="center" border="1">
        <tr>
            <td>用户名:</td>
            <td><input type="text" id="username" value="admin"></td>
        </tr>
        <tr>
            <td>
                <a  class="submitBtn"><span>登录</span></a>

            </td>

            <%--<td><input type="submit" value="登录" name="login"></td>--%>
        </tr>
    </table>
</form>


<script type="text/javascript">
    $(function(){
        $(".submitBtn").bind("click",function(){
            var username = $("#username").val();

            if(username == null || $.trim(username).length == 0){
                alert("sorry,必须输入username~");
                return;
            }

            $.ajax({
                url:"${ctx}/login?name="+username,
                data:'',
                type:"get",
                success:
                    window.location.href = "${ctx}/resume/list"
            });
        })
    })


</script>
</html>
