<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="super_container">
	<!-- Slider home.jsp -->

	<div class="main_slider" style="background-image:url(<c:url value="/template/images/banner.jpg"/>)">
		<div class="container fill_height">
			<div class="row align-items-center fill_height">
				<div class="col">
					<div class="main_slider_content">

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Banner -->

	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="banner_item align-items-center" style="background-image:url(<c:url value="/template/images/nam.jpg"/>)">
							<a class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".kho" >Nam</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="banner_item align-items-center" style="background-image:url(<c:url value="/template/images/nu.jpg"/>)">
							<a class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".comChay" >Nữ</a>

					</div>
				</div>
				<div class="col-md-4">
					<div class="banner_item align-items-center" style="background-image:url(<c:url value="/template/images/khac.jpg"/>)">
							<a class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".khac" >Khác</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- New Arrivals -->

	<div class="new_arrivals">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>Sản Phẩm Mới</h2>
					</div>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col text-center">
					<div class="new_arrivals_sorting">
						<ul class="arrivals_grid_sorting clearfix button-group filters-button-group">
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">Tất cả</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".nam">Nam</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".nu">Nữ</li>
							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".khac">Khác</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col">
					<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

						<c:forEach var="item" items="${product}" varStatus="index">
							<c:if test="${index.first}">

							</c:if>
							<c:if test="${not index.first}">
							
							</c:if>

								<div class="product-item ${item.maLoai }">
									<div class="product discount product_filter">
										<div class="product_image">
											<a href="<c:url value="/product/${item.productID }"/>">
												<img href="<c:url value="/product/${item.productID }"/>" src="${item.image }" alt="">
		
											</a>
										</div>
										<div class="favorite favorite_left"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="<c:url value="/product/${item.productID }"/>">${item.tenSanPham}</a></h6>
											<div id ="moTa" class="product_price">${item.tinhTrang }</div>
										</div>
									</div>
		
		                    <input type="number" class="form-control" value="1" min="1" max="20"id="soLuong" name="soLuong" hidden>
		            		<input type="text" class="form-control" value="{{this._id}}" id="idSP" name="idSP" hidden>
		
									<div class="red_button add_to_cart_button"><a href="<c:url value="/product/${item.productID }"/>">Xem chi tiết</a></div>
		
								</div>
						</c:forEach>

					
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Best Sellers -->

	<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title new_arrivals_title">
						<h2>Bán chạy</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="product_slider_container">
						<div class="owl-carousel owl-theme product_slider">

						<c:forEach var="item" items="${product}" varStatus="index">
							<!-- Slide 1 -->
							<div class="owl-item product_slider_item">
								<div class="product-item ${item.maLoai }">
									<div class="product discount">
										<div class="product_image" >
											<a href="<c:url value="/product/${item.productID }"/>" >
												<img src="${item.image}" alt="">
											</a>
										</div>
										<div class="favorite favorite_left"></div>
										<div class="product_info">
											<h6 class="product_name"><a href="<c:url value="/product/${item.productID }"/>">${item.tenSanPham}</a></h6>
											<div id ="giaTien{{this.giaTien}}" class="product_price"></div>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						</div>

						<!-- Slider Navigation -->

						<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
						</div>
						<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
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
<script src="<c:url value='/template/js/custom.js'/>"></script>
