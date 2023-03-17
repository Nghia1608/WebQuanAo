<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="<c:url value="/template/admin/css/styles.css"/>" rel="stylesheet" />
        <spring:url value="/template/admin/css/styles.css" var="stylesCSS" />
        <link href="${stylesCSS}" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>


<!-- header -->
<%@include file = "/WEB-INF/views/layouts/admin/header.jsp" %>
<!-- header -->

<decorator:body/>

<!-- footer -->
<%@include file = "/WEB-INF/views/layouts/admin/footer.jsp" %>
<!-- footer -->



</body>
</html>

