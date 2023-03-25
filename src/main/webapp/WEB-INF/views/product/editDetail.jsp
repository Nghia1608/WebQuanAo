<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<div class="super_container">

	<!-- Header -->

	<header class="header trans_300">

		<!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">Miễn phí đơn hàng trên 300.000 VNĐ và nhiều ưu đãi</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">

								<!-- Currency / Language / My Account -->
								<li class="account">
									<a id="username"href="#">
										Tài khoản {{users.userName}}
										<i class="fa fa-angle-down"></i>
									</a>
									<ul class="account_selection">

										{{!-- After Login --}}
										<li id="changePassword"hidden><a><i class="fa fa-sign-in" aria-hidden="true"></i>Thông tin tài khoản</a></li>
										<li id="purchase"hidden><a href="/users/purchase"><i class="fa fa-sign-in" aria-hidden="true"></i>Lịch sử mua hàng</a></li>
										{{!-- Before Login --}}

										<li id="login" hidden><a  href="/auth/login"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a></li>
										
										<li>
											<a id="logout"href="#"><i class="fa fa-user-plus" aria-hidden="true">
											</i>Đăng xuất</a>
    									{{!-- <button type="submit" class="btn btn-primary">Đăng xuất</button> --}}
										</li>

										<script>
document.getElementById("login").hidden =false;
											if(
												sessionStorage.getItem("username")
											){
												document.getElementById("username").innerHTML ="Xin chào  " + 
													sessionStorage.getItem("username");
												document.getElementById("changePassword").hidden =false;
												document.getElementById("purchase").hidden =false;
												document.getElementById("login").hidden =true;

											}

											</script>
											
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="/">NghiaTai<span>Shop</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="/">Trang chủ</a></li>
								<li><a href="/contact">Liên hệ</a></li>
								<li>
									<div class="dropdown">
									<a class="" href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
										Quản lý
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
										<li><a class="dropdown-item" href="/products/storedProducts">Sản phẩm</a></li>
										<li><a class="dropdown-item" href="/users/storedUsers">Tài khoản</a></li>
										<li><a class="dropdown-item" href="#">Thống kê</a></li>
									</ul>
									</div>
								</li>
							</ul>
							<ul class="navbar_user">

								<li class="checkout">
									<a href="/users/cart">
										<i id="checkout_items" class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items"></span>
									</a>
								</li>
							</ul>

						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>

	<div class="container single_product_container">
	<div class="mt-4">
	<c:forEach var="item" items="${product}" varStatus="index">
    <form id="formTong"name="formTong" method="POST">

    <div class="form-group">
        <label for="giaTienBanRa">Giá tiền bán ra</label>
        <input type="text" class="form-control"value="{{productsdetails.giaTienBanRa}}" id="giaTienBanRa" name="giaTienBanRa"placeholder="Giá tiền bán ra">
    </div>
    <div class="form-group">
        <label for="soLuongCon">Số lượng còn</label>
        <input type="text" class="form-control" id="soLuongCon"value="{{productsdetails.soLuongCon}}" name="soLuongCon"placeholder="Số lượng còn lại">
    </div>
        <div class="form-group">
        <label for="size">Trọng lượng (g)</label>
        <input type="text" class="form-control"value="{{productsdetails.size}}" id="size"name="size"placeholder="Trọng lượng sản phẩm (g)">
    </div>
    <div class="form-group">
        <h3 for="tinhTrang">Tình trạng</h3>
<input type="combobox" class="form-control" value="{{productsdetails.tinhTrang}}" id="tinhTrang"name="tinhTrang"placeholder="Trình trạng sản phẩm" hidden>

        <select id="selectTinhTrang" name="selectTinhTrang">
        <option id="optTinhTrang0" value="Còn hàng">Còn hàng</option>
        <option id="optTinhTrang1" value="Tạm hết hàng">Tạm hết hàng</option>
        <option id="optTinhTrang2" value="Ngừng kinh doanh">Ngừng kinh doanh</option>
        </select>
    </div>
        <input type="combobox" class="form-control" value="{{productsdetails.idProduct}}" id="idProduct"name="idProduct"hidden>
        <input type="text" class="form-control" value="{{productsdetails._id}}" id="idSP"hidden>

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
    </form>
    </c:forEach>
</div>
</div>

	<!-- Benefit -->

	<div class="benefit">
		<div class="container">
			<div class="row benefit_row">
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Miễn Phí Giao Hàng</h6>
							<p>Cho đơn hàng 300k trên</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Thanh toán</h6>
							<p>Thanh toán khi nhận hàng hoặc thanh toán online</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Hoàn tiền</h6>
							<p>Nếu sản phẩm bị lỗi do shop hoặc do vận chuyển</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 benefit_col">
					<div class="benefit_item d-flex flex-row align-items-center">
						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
						<div class="benefit_content">
							<h6>Từ T2 - CN</h6>
							<p>8:00 AM - 10:00 PM</p>
						</div>
					</div>
				</div>
			</div>
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