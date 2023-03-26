<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<div class="super_container">
	<div class="container single_product_container">
    <div class="mt-4">
    <h3>Thêm sản phẩm mới</h3>
	<form id="formTong"name="formTong" method="POST" action="${pageContext.request.contextPath}/product/create?_method=POST">
    <div class="form-group">
        <label for="productsName">ID sản phẩm</label>
        <input type="text" class="form-control" id="idSanPham" name="productID"placeholder="ID sản phẩm">
    </div>
    <div class="form-group">
        <label for="productsName">Tên sản phẩm</label>
        <input type="text" class="form-control" id="tenSanPham" name="tenSanPham"placeholder="Tên sản phẩm">
    </div>
    <div class="form-group">
        <label for="moTa">Mô tả sản phẩm</label>
        <input type="text" class="form-control" id="moTa" name="moTa"placeholder="Mô tả sản phẩm">
    </div>
    <div class="form-group">
        <label for="image">Hình ảnh</label>
        <input type="text" class="form-control" id="image" name="image"placeholder="Liên kết hình ảnh">
    </div>
        <div class="form-group">
        <label for="image1">Hình ảnh 1</label>
        <input type="text" class="form-control" id="image1" name="image1"placeholder="Liên kết hình ảnh 1">
    </div>
        <div class="form-group">
        <label for="image2">Hình ảnh 2</label>
<input type="text" class="form-control" id="image2" name="image2"placeholder="Liên kết hình ảnh 2">
    </div>
        <div class="form-group">
        <label for="image3">Hình ảnh 3</label>
        <input type="text" class="form-control" id="image3" name="image3"placeholder="Liên kết hình ảnh 3">
    </div>
    <div id="q" class="form-group">
        <label for="tinhTrang">Phân loai</label>

        <select id="selectPhanLoai" name="maLoai">
        <option id="optTinhTrang0" value="nam">Nam</option>
        <option id="optTinhTrang1" value="nu">Nữ</option>
        <option id="optTinhTrang1" value="khac">Khác</option>
        </select>
    </div>
    <div class="form-group">
        <label for="tinhTrang">Tình trạng</label>
        <select id="selectTinhTrang" name="tinhTrang">
        <option id="optTinhTrang0" value="Còn hàng">Còn hàng</option>
        <option id="optTinhTrang1" value="Tạm hết hàng">Tạm hết hàng</option>
        <option id="optTinhTrang2" value="Ngừng kinh doanh">Ngừng kinh doanh</option>
        </select>
    </div>
                
        <div class="button">
          <input type="submit"class="btn btn-primary" type="submit" value="Thêm mới">
        </div>
    </form>
    </div>
	</div>
<!-- 	<script> 

// 		document.getElementById("btn-restore").onclick = function(){

// 				var logoutForm = document.getElementById("formTong");
// 				logoutForm.action = '${pageContext.request.contextPath}/product/create?_method=POST';
// 				logoutForm.submit();
// 		}

// 		document.getElementById("logout").onclick = function(){
// 				sessionStorage.removeItem("username");

// 				var logoutForm = document.forms['formTong'];

// 				logoutForm.action = '/auth/logout?_method=POST';
// 				logoutForm.submit();
// 		}
 	</script> -->
	</div>
<script src="<c:url value='/template/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/popper.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/plugins/Isotope/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/template/plugins/OwlCarousel2-2.2.1/owl.carousel.js'/>"></script>
<script src="<c:url value='/template/plugins/easing/easing.js'/>"></script>
<script src="<c:url value='/template/plugins/jquery-ui-1.12.1.custom/jquery-ui.js'/>"></script>
<script src="<c:url value='/template/js/single_custom.js'/>"></script>