<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/9
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Title</title>
</head>
<body>


<c:forEach items="${requestScope.foodList}" var="f">

    ${f.foodName}
    <img src="${f.imagesPath}">

</c:forEach>



</body>
</html>
