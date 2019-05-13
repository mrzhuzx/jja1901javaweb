
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>
<body>
<h2>Hello World!</h2>
<h3>
<a href="food?todo=search">searchFood </a><br>
<a href="html/index.html">MLSindex.html</a><br>
<a href="index.jsp">MLSindex.jsp</a><br>



</h3>
item Root:   <%=basePath%>



</body>
</html>
