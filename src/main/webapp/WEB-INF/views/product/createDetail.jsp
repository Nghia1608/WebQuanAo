<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="super_container">
	<div class="container single_product_container">
<div class="mt-4">
    <h3>Thêm chi tiết sản phẩm ${product.tenSanPham}</h3>
    <input type="text" class="form-control" value="${product.productID }" id="idProduct"name="productID"hidden>

    <form id="formTong"name="formTong" method="POST" action="${pageContext.request.contextPath}/product/${product.productID}/createDetail?_method=POST">
    <div class="form-group">
        <label for="productDetailsID">Mã chi tiết sản phẩm</label>
        <input type="text" class="form-control"value="" id="productDetailsID" name="productDetailsID"placeholder="Mã chi tiết sản phẩm">
    </div>
    <div class="form-group">
        <label for="giaTienBanRa">Giá tiền bán ra</label>
        <input type="text" class="form-control"value="" id="giaTienBanRa" name="giaTienBanRa"placeholder="Giá tiền bán ra">
    </div>
    <div class="form-group">
        <label for="soLuongCon">Số lượng còn</label>
        <input type="text" class="form-control" id="soLuongCon" name="soLuongCon"placeholder="Số lượng còn lại">
    </div>
<!--         <div class="form-group"> -->
<!--         <label for="size">Size</label> -->
<!--         <input type="text" class="form-control" id="size"name="size"placeholder="Size S , M , L , XL ...."> -->
<!--     </div> -->

    <div class="form-group">
    <h3 for="tinhTrang">Size</h3>
	<input type="combobox" class="form-control" value="" id="size"placeholder="Trình trạng sản phẩm" hidden>
        <select id="selectSize" name="size">
        <option id="optSize0" value="S">S</option>
        <option id="optSize1" value="M">M</option>
        <option id="optSize2" value="L">L</option>
        <option id="optSize3" value="XL">XL</option>
        </select>
    </div>
        <script>
        var lengthSelect1 = document.getElementById("selectSize").length;
        var temp1 = document.getElementById("size").value;
        for(var i=0;i<lengthSelect1;i++){
            var idOpt1 = "optSize"+i;
            var valueOpt1 = document.getElementById(idOpt1).value;
            if( valueOpt1 ==temp1){
        document.getElementById("selectSize").selectedIndex=i1;

            }
        }
    </script>
    <div class="form-group">
    <h3 for="tinhTrang">Tình trạng</h3>
    <input type="combobox" class="form-control" value="" id="tinhTrang"placeholder="Trình trạng sản phẩm" hidden>
        <select id="selectTinhTrang" name="tinhTrang">
        <option id="optTinhTrang0" value="Còn hàng">Còn hàng</option>
        <option id="optTinhTrang1" value="Tạm hết hàng">Tạm hết hàng</option>
        <option id="optTinhTrang2" value="Ngừng kinh doanh">Ngừng kinh doanh</option>
        </select>
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
        document.getElementById("giaTienBanRa").oninput = function(){
            var soTien = document.getElementById("giaTienBanRa").value
            document.getElementById("giaTienBanRa").innerHTML = parseInt(soTien).toLocaleString() +"  VND";
        }
        }
    </script>


    <div class="button">
      <input type="submit"class="btn btn-primary" type="submit" value="Lưu thông tin">
    </div>
    </form>
</div>
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