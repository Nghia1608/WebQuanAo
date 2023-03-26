<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<div class="super_container">
	
	<div class="container single_product_container">

	  <h2 class="free_delivery d-flex flex-row align-items-center justify-content-center"> 
	    Sửa thông tin sản phẩm ${product.tenSanPham}
	  </h2>
    <form id="formTong"name="formTong" method="POST"action="${pageContext.request.contextPath}/product/${product.productID}/edit?_method=POST">

		<div class="row">

			<div class="col-lg-7">
				<div class="single_product_pics">

					<div class="row">
					
						<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
							<div class="single_product_thumbnails">
								<ul>
									<li><img src="${product.image1}" alt="" data-image="${product.image1}"></li>
									<li class="active"><img src="${product.image2}" alt="" data-image="${product.image2}"></li>
									<li><img src="${product.image3}" alt="" data-image="${product.image3}"></li>
								</ul>
							</div>

						</div>
						<div class="col-lg-9 image_col order-lg-2 order-1">
							<div class="single_product_image">
							<div class="single_product_image_background" style="background-image:url(${product.image})"></div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="product_details">
					<input type="text" class="form-control" value="${product.productID}" id="productID" name="productID" hidden=true>
					<div class="form-group">
						<h3 for="productsName">Tên sản phẩm</h3>
						<input type="text" class="form-control" value="${product.tenSanPham}" id="tenSanPham" name="tenSanPham"placeholder="Tên sản phẩm">

					</div>
					<div class="form-group">
						<h3 for="moTa">Mô tả sản phẩm</h3>
						<textarea type="text" class="form-control" id="moTa" name="moTa"placeholder="Mô tả sản phẩm">${product.moTa}</textarea>
					</div>
												<div class="form-group">
							<h4 for="moTa">Hình ảnh chính</h4>
							<textarea type="text" class="form-control" id="image" name="image"placeholder="Liên kết hình ảnh">${product.image}</textarea>
							<h4	for="moTa">Hình ảnh 1</h4>
							<textarea type="text" class="form-control" id="image1" name="image1"placeholder="Liên kết hình ảnh 1">${product.image1}</textarea>
							<h4 for="moTa">Hình ảnh 2</h4>
							<textarea type="text" class="form-control" id="image2" name="image2"placeholder="Liên kết hình ảnh 2">${product.image2}</textarea>
							<h4 for="moTa">Hình ảnh 3</h4>
							<textarea type="text" class="form-control" id="image3" name="image3"placeholder="Liên kết hình ảnh 3">${product.image3}</textarea>
						</div>
					<div class="form-group">
						<h3 for="tinhTrang">Tình trạng</h3>
        				<input type="combobox" class="form-control" value="${product.tinhTrang}" id="tinhTrang"placeholder="Trình trạng sản phẩm" hidden>

						<select id="selectTinhTrang" name="tinhTrang">
						<option id="optTinhTrang0" value="Còn hàng">Còn hàng</option>
						<option id="optTinhTrang1" value="Tạm hết hàng">Tạm hết hàng</option>
						<option id="optTinhTrang2" value="Ngừng kinh doanh">Ngừng kinh doanh</option>
						</select>
					</div>
					<div class="form-group">
						<h3 for="phanLoai">Phân loại</h3>
        				<input type="combobox" class="form-control" value="${product.maLoai}" id="phanLoai"placeholder="Trình trạng sản phẩm" hidden>

						<select id="selectPhanLoai" name="maLoai">
						<option id="optPhanLoai0" value="nam">Nam</option>
						<option id="optPhanLoai1" value="nu">Nữ</option>
						<option id="optPhanLoai2" value="khac">Khác</option>
						</select>
					</div>
                <div class="button">
		          <input type="submit"class="btn btn-primary" type="submit" value="Lưu thông tin">
		        </div>
					<script>
						var lengthSelect = document.getElementById("selectTinhTrang").length;
						var temp = document.getElementById("tinhTrang").value;
						for(var i=0;i<lengthSelect;i++){
							var idOpt = "optTinhTrang"+i;
var valueOpt = document.getElementById(idOpt).value;
							if( valueOpt ==temp){
						document.getElementById("selectTinhTrang").selectedIndex=i;

							}
						}

						var lengthSelect1 = document.getElementById("selectPhanLoai").length;
						var temp = document.getElementById("phanLoai").value;
						for(var i=0;i<lengthSelect1;i++){
							var idOpt = "optPhanLoai"+i;
							var valueOpt = document.getElementById(idOpt).value;
							if( valueOpt ==temp){
						document.getElementById("selectPhanLoai").selectedIndex=i;

							}
						}
					</script>
				</div>
                <br>
			</div>
		</div>

        </form>
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