<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html lang="en"> -->
<!-- <head> -->
<!-- <meta charset="utf-8"> -->
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!-- <meta name="description" content="Colo Shop Template"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="stylesheet" type="text/css" href="/template/source/styles/bootstrap4/bootstrap.min.css"> -->
<!-- <link href="/template/source/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/template/source/plugins/OwlCarousel2-2.2.1/owl.carousel.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/template/source/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/template/source/plugins/OwlCarousel2-2.2.1/animate.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/template/source/styles/main_styles.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="/template/source/styles/responsive.css"> -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" > -->
<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script> -->
<!-- </head> -->
<!-- <body> -->
<!-- <div class="super_container"> -->

<!-- 	<!-- Header --> -->

<!-- 	<header class="header trans_300"> -->

<!-- 		<!-- Top Navigation --> -->

<!-- 		<div class="top_nav"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<div class="top_nav_left">Miễn phí đơn hàng trên 300.000 VNĐ và nhiều ưu đãi</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-6 text-right"> -->
<!-- 						<div class="top_nav_right"> -->
<!-- 							<ul class="top_nav_menu"> -->

<!-- 								Currency / Language / My Account -->
<!-- 								<li class="account"> -->
<!-- 									<a id="username"href="#"> -->
<!-- 										Tài khoản  -->
<!-- 										<i class="fa fa-angle-down"></i> -->
<!-- 									</a> -->
<!-- 									<ul class="account_selection"> -->

<!-- 										<li id="changePassword"hidden><a href="/users/{{idUser}}/edit"><i class="fa fa-sign-in" aria-hidden="true"></i>Thông tin tài khoản</a></li> -->
<!-- 										<li id="purchase"hidden><a href="/users/purchase"><i class="fa fa-sign-in" aria-hidden="true"></i>Lịch sử mua hàng</a></li> -->

<!-- 										<li id="login" hidden><a  href="/auth/login"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a></li> -->
<!-- 										<li id="login" hidden><a  href="/auth/register"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng ký</a></li> -->
										
<!-- 										<form name="logoutForm" method="POST"> -->
<!-- 										<li hidden id="logOut"> -->
<!-- 											<a id="logout"href="#"><i class="fa fa-user-plus" aria-hidden="true"> -->
<!-- 											</i>Đăng xuất</a> -->
<!-- 										</li> -->
											
<!-- 									</ul> -->
<!-- 								</li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 		<!-- Main Navigation --> -->

<!-- 		<div class="main_nav_container"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-lg-12 text-right"> -->
<!-- 						<div class="logo_container"> -->
<!-- 							<a href="/">Shop đồ <span>3ae</span></a> -->
<!-- 						</div> -->
<!-- 						<nav class="navbar"> -->
<!-- 							<ul class="navbar_menu"> -->
<!-- 								<li><a href="/">Trang chủ</a></li> -->
<!-- 								<li><a href="/contact">Liên hệ</a></li> -->
<!-- 							</ul> -->
<!-- 							<ul class="navbar_user"> -->

<!-- 								<li class="checkout"> -->
<!-- 									<a href="/users/cart"> -->
<!-- 										<i id="checkout_items" class="fa fa-shopping-cart" aria-hidden="true"></i> -->
<!-- 										<span id="checkout_items" class="checkout_items"></span> -->
<!-- 									</a> -->
<!-- 								</li> -->
<!-- 							</ul> -->

<!-- 						</nav> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 	</header> -->

	

<!-- 	<!-- Slider --> -->

<!-- 	<div class="main_slider" style="background-image:url(/images/slider_1.jpg)"> -->
<!-- 		<div class="container fill_height"> -->
<!-- 			<div class="row align-items-center fill_height"> -->
<!-- 				<div class="col"> -->
<!-- 					<div class="main_slider_content"> -->
<!-- 						<h6>Shop đồ 3ae</h6> -->
<!-- 						<h1>Old but gold</h1> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!-- 	<!-- Banner --> -->

<!-- 	<div class="banner"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-4"> -->
<!-- 					<div class="banner_item align-items-center" style="background-image:url(/images/banner_3.jpg)"> -->
<!-- 							<a class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".kho" >Nam</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-4"> -->
<!-- 					<div class="banner_item align-items-center" style="background-image:url(/images/blog_2.jpg)"> -->
<!-- 							<a class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".comChay" >Nữ</a> -->

<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-4"> -->
<!-- 					<div class="banner_item align-items-center" style="background-image:url(/images/blog_3.jpg)"> -->
<!-- 							<a class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".khac" >Khác</a> -->

<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!-- 	<!-- New Arrivals --> -->

<!-- 	<div class="new_arrivals"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col text-center"> -->
<!-- 					<div class="section_title new_arrivals_title"> -->
<!-- 						<h2>Sản Phẩm Mới</h2> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="row align-items-center"> -->
<!-- 				<div class="col text-center"> -->
<!-- 					<div class="new_arrivals_sorting"> -->
<!-- 						<ul class="arrivals_grid_sorting clearfix button-group filters-button-group"> -->
<!-- 							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">Tất cả</li> -->
<!-- 							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".kho">Nam</li> -->
<!-- 							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".comChay">Nữ</li> -->
<!-- 							<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".khac">Khác</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<div class="row"> -->

<!-- 				<div class="col"> -->
<!-- 					<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'> -->

<!-- 						Product 1 -->
<!-- 						<div class="product-item {{this.maLoai}}"> -->
<!-- 							<div class="product discount product_filter"> -->
<!-- 								<div class="product_image"> -->
<!-- 									<a href="/products/{{this._id}}"> -->
<!-- 										<img href="/products/{{this._id}}" src="{{this.image}}" alt=""> -->

<!-- 									</a> -->
<!-- 								</div> -->
<!-- 								<div class="favorite favorite_left"></div> -->
<!-- 								<div class="product_info"> -->
<!-- 									<h6 class="product_name"><a href="/products/{{this._id}}"></a></h6> -->
<!-- 									<div id ="moTa" class="product_price"></div> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!--                     <input type="number" class="form-control" value="1" min="1" max="20"id="soLuong" name="soLuong" hidden> -->
<!--             		<input type="text" class="form-control" value="{{this._id}}" id="idSP" name="idSP" hidden> -->

<!-- 							<div class="red_button add_to_cart_button"><a href="/products/{{this._id}}">Xem chi tiết</a></div> -->

<!-- 						</div> -->
						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 		</div> -->
<!-- 	</div> -->



<!-- 	<!-- Best Sellers --> -->

<!-- 	<div class="best_sellers"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col text-center"> -->
<!-- 					<div class="section_title new_arrivals_title"> -->
<!-- 						<h2>Bán chạy</h2> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col"> -->
<!-- 					<div class="product_slider_container"> -->
<!-- 						<div class="owl-carousel owl-theme product_slider"> -->

<!-- 							Slide 1 -->
<!-- 							<div class="owl-item product_slider_item"> -->
<!-- 								<div class="product-item"> -->
<!-- 									<div class="product discount"> -->
<!-- 										<div class="product_image" > -->
<!-- 											<a href="/products/{{this._id}}" > -->
<!-- 												<img src="{{this.image}}" alt=""> -->
<!-- 											</a> -->
<!-- 										</div> -->
<!-- 										<div class="favorite favorite_left"></div> -->
<!-- 										<div class="product_info"> -->
<!-- 											<h6 class="product_name"><a href="/products/{{this._id}}"></a></h6> -->
<!-- 											<div id ="giaTien{{this.giaTien}}" class="product_price"></div> -->

<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->


<!-- 						</div> -->

<!-- 						Slider Navigation -->

<!-- 						<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column"> -->
<!-- 							<i class="fa fa-chevron-left" aria-hidden="true"></i> -->
<!-- 						</div> -->
<!-- 						<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column"> -->
<!-- 							<i class="fa fa-chevron-right" aria-hidden="true"></i> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!-- 	<!-- Benefit --> -->

<!-- 	<div class="benefit"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row benefit_row"> -->
<!-- 				<div class="col-lg-3 benefit_col"> -->
<!-- 					<div class="benefit_item d-flex flex-row align-items-center"> -->
<!-- 						<div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div> -->
<!-- 						<div class="benefit_content"> -->
<!-- 							<h6>Miễn Phí Giao Hàng</h6> -->
<!-- 							<p>Cho đơn hàng 300k trên</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-3 benefit_col"> -->
<!-- 					<div class="benefit_item d-flex flex-row align-items-center"> -->
<!-- 						<div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div> -->
<!-- 						<div class="benefit_content"> -->
<!-- 							<h6>Thanh toán</h6> -->
<!-- 							<p>Thanh toán khi nhận hàng hoặc thanh toán online</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-3 benefit_col"> -->
<!-- 					<div class="benefit_item d-flex flex-row align-items-center"> -->
<!-- 						<div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div> -->
<!-- 						<div class="benefit_content"> -->
<!-- 							<h6>Hoàn tiền</h6> -->
<!-- 							<p>Nếu sản phẩm bị lỗi do shop hoặc do vận chuyển</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-3 benefit_col"> -->
<!-- 					<div class="benefit_item d-flex flex-row align-items-center"> -->
<!-- 						<div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div> -->
<!-- 						<div class="benefit_content"> -->
<!-- 							<h6>Từ T2 - T7</h6> -->
<!-- 							<p>8:00 - 21:00 </p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

	

	

<!-- 	<!-- Footer --> -->

<!-- 	<footer class="footer"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-lg-6"> -->
<!-- 					<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center"> -->
<!-- 						<ul class="footer_nav"> -->
<!-- 							<li><a href="#">Blog</a></li> -->
<!-- 							<li><a href="#">FAQs</a></li> -->
<!-- 							<li><a href="contact.html">Contact us</a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-6"> -->
<!-- 					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center"> -->
<!-- 						<ul> -->
<!-- 							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li> -->
<!-- 							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li> -->
<!-- 							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li> -->
<!-- 							<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li> -->
<!-- 							<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-lg-12"> -->
<!-- 					<div class="footer_nav_container"> -->
<!-- 						<div class="cr">©2022 Copyright Shop đồ 3ae </div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->

<!-- </div> -->

<!-- <script src="/template/source/js/jquery-3.2.1.min.js"></script> -->
<!-- <script src="/template/source/styles/bootstrap4/popper.js"></script> -->
<!-- <script src="/template/source/styles/bootstrap4/bootstrap.min.js"></script> -->
<!-- <script src="/template/source/plugins/Isotope/isotope.pkgd.min.js"></script> -->
<!-- <script src="/template/source/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script> -->
<!-- <script src="/template/source/plugins/easing/easing.js"></script> -->
<!-- <script src="/template/source/js/custom.js"></script> -->
<!-- </body> -->
<!-- </html> -->
