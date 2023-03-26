<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<div class="super_container">

	<div class="container single_product_container">
<div class="mt-4">
  <h2> 
    Danh sách sản phẩm
  </h2>
    <a href="/products/create">Thêm sản phẩm mới</a>
    <table class="table">
        <thead>
            <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Phân loại</th>
            <th scope="col" colspan="2">Tình trạng</th>
            </tr>
        </thead>
        <tbody>
		<c:forEach var="item" items="${product}" varStatus="index">
			<c:if test="${index.first}">
			</c:if>
			<c:if test="${not index.first}">							
			</c:if>
			<form id="delete-product-form" action="${pageContext.request.contextPath}/product/${item.productID}/delete" method="POST">
			<input type="hidden" name="productID" value="${item.productID}">
            <tr>
            <th scope="row"></th>
            <td>${item.tenSanPham}</td>
            <td>${item.maLoai}</td>
            <td>${item.tinhTrang}</td>
            <td>
                <a href="/WebQuanAo/product/${item.productID }/detail" class="btnUpdate btn-link">Chi tiết</a>
                <a href="/WebQuanAo/product/${item.productID }/edit" class="btnUpdate btn-link">Sửa</a>
<!--                 <a id="btn-select"href="" class="btnDelete btn-link">Xóa</a> -->
	            <input type="submit"class="btnDelete btn-link" type="submit" value="Xóa">
            </td>
            </tr>
            </form>
		</c:forEach>
        </tbody>

    </table>
</div>
</div>
<script src="<c:url value='/template/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/popper.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/plugins/Isotope/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/template/plugins/OwlCarousel2-2.2.1/owl.carousel.js'/>"></script>
<script src="<c:url value='/template/plugins/easing/easing.js'/>"></script>
<script src="<c:url value='/template/plugins/jquery-ui-1.12.1.custom/jquery-ui.js'/>"></script>
<script src="<c:url value='/template/js/single_custom.js'/>"></script>