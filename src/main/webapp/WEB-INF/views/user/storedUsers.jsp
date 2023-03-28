<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<body>

<div class="super_container">

<div class="container single_product_container">
<div class="mt-4">
  <h2> 
    Danh sách tài khoản
  </h2>
    <a href="${pageContext.request.contextPath}/auth/register">Thêm tài khoản mới</a>
    <table class="table">
        <thead>
            <tr>
            <th scope="col">STT</th>
            <th scope="col">Username</th>
            <th scope="col">Họ tên</th>
            <th scope="col">Quyền</th>
            <th scope="col" colspan="2">Tình trạng</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach var="item" items="${user}" varStatus="index">
			<c:if test="${index.first}">
			</c:if>
			<c:if test="${not index.first}">							
			</c:if>
   			<form id="delete-product-form" action="${pageContext.request.contextPath}/user/${item.username}/deleteUser" method="POST">
   			<input type="hidden" name="username" value="${item.username}">
            <tr>
            <th scope="row"></th>
            <td>${item.username}</td>
            <td>${item.hoTen}</td>
            <td>${item.quyen}</td>
            <td>${item.trangThai}</td>
            <td>
                <a href="${pageContext.request.contextPath}/user/${item.username}/editUsers" class="btnUpdate btn-link">Sửa</a>
    	        <input type="submit"class="btnDelete btn-link" type="submit" value="Xóa">
            </td>
            </tr>
            </form>
            </c:forEach>

        </tbody>

    </table>

</div>


</div>

    
</div>


<script src="<c:url value='/template/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/popper.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/plugins/Isotope/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/template/plugins/OwlCarousel2-2.2.1/owl.carousel.js'/>"></script>
<script src="<c:url value='/template/plugins/easing/easing.js'/>"></script>
<script src="<c:url value='/template/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA'/>"></script>
<script src="<c:url value='/template/plugins/jquery-ui-1.12.1.custom/jquery-ui.js'/>"></script>
<script src="<c:url value='/template/js/contact_custom.js'/>"></script>
</body>