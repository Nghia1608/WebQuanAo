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
    <div class="s004">
      <form>
        <fieldset>
          <h3>WHAT ARE YOU LOOKING FOR?</h3>
          <div class="inner-form">
            <div class="input-field">
              <input class="form-control" id="choices-text-preset-values" type="text" placeholder="Type to search..." />
              <button class="btn-search" type="button">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                  <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
                </svg>
              </button>
            </div>
          </div>

        </fieldset>
      </form>
    </div>
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
							<h6>Từ T2 - T7</h6>
							<p>8:00 - 21:00 </p>
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
