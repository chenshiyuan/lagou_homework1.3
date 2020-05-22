<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />

<html>
<head>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <%--<script type="text/javascript" src="WEB-INF/js/jquery-3.4.1.min.js"></script>--%>

</head>
<body>

<h3>列表页</h3>
    <%
    String basePath = request.getContextPath()+"/login";
    Object resumes = request.getAttribute("resumes");
//    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<c:forEach items="${resumes}" var="resume">
    <tr>
    <td>${resume.id}</td>
    <td>${resume.name}</td>
    <td>${resume.address}</td>
    <td>${resume.phone}</td>
    <td class="text-center">
    <input type="button" class="modify_button" value="修改">
    <input type="button" class="delete_button" value="删除">
    </td>
        <br/>
    </tr>
</c:forEach>


<script type="text/javascript">
    $(function(){
        $(".delete_button").bind("click",function(){
            var resumeID = $("#username").val();

            $.ajax({
                url:"${ctx}/resume/delete?id="+1,
                data:"",
                type:"post",
                success:""
            });
        })
    })

    $(function(){
        $(".modify_button").bind("click",function(){
            var resumeID = $("#username").val();

            $.ajax({
                url:"${ctx}/resume/save?id="+1,
                data:"",
                type:"post",
                success:""
            });
            <%--$.ajax({--%>
            <%--url:"${ctx}/login?name="+username,--%>
            <%--data:$("#userAdd").serialize(),--%>
            <%--type:"post",--%>
            <%--success:location.reload()--%>
            <%--});--%>
        })
    })


</script>
</html>
