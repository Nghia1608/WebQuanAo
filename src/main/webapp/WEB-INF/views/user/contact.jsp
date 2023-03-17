<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<body>

<div class="super_container">

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
										
										<li id="logOut"hidden>
											<a id="logout"href="#"><i class="fa fa-user-plus" aria-hidden="true">
											</i>Đăng xuất</a>
    									{{!-- <button type="submit" class="btn btn-primary">Đăng xuất</button> --}}
										</li>

										<script>
											document.getElementById("logout").onclick = function(){
    												sessionStorage.removeItem("username");

													var logoutForm = document.forms['restore-product-form'];

													logoutForm.action = '/auth/logout?_method=POST';
													logoutForm.submit();
											}
										</script>
										<script>
											document.getElementById("login").hidden =false;
											if(
												sessionStorage.getItem("username")
											){
												document.getElementById("username").innerHTML ="Xin chào  " + 
													sessionStorage.getItem("username");
												document.getElementById("changePassword").hidden =false;
												document.getElementById("purchase").hidden =false;
												document.getElementById("logOut").hidden =false;
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

	<div class="fs_menu_overlay"></div>


<div class="container contact_container">
		<div class="row">
			<div class="col">

				<!-- Breadcrumbs -->

				<div class="breadcrumbs d-flex flex-row align-items-center">
					<ul>
						<li><a href="/">Home</a></li>
						<li class="active"><a href="/contact"><i class="fa fa-angle-right" aria-hidden="true"></i>Liên hệ</a></li>
					</ul>
				</div>

			</div>
		</div>

		<!-- Map Container -->

		<div class="row">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4206639905988!2d106.78291401458975!3d10.855574792267845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276e7ea103df%3A0xb6cf10bb7d719327!2zSHV0ZWNoIEtodSBFIC0gVHJ1bmcgVMOibSDEkMOgbyBU4bqhbyBOaMOibiBM4buxYyBDaOG6pXQgTMaw4bujbmcgQ2Fv!5e0!3m2!1svi!2s!4v1669362281307!5m2!1svi!2s" width="1200" height="1000" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>

		<!-- Contact Us -->

		<div class="row">

			<div class="col-lg-6 contact_col">
				<div class="contact_contents">
					<h1>Liên hệ với chúng tôi</h1>
					<p>Hãy liên hệ với chúng tôi về các vấn đề liên quan đến đồ ăn vặt. Mọi góp ý hãy gửi theo thông tin bên dưới. Chân thành cảm ơn quý khách.</p>
					<div>
						<p>0396 - 999 - 999</p>
						<p>nghiataishop@gmail.com</p>
					</div>

					<div>
						<p>Giờ mở cửa: 8:00 - 21:00 từ Thứ 2 - Thứ 7</p>
						<p>Chủ nhật: Nghỉ</p>
					</div>
				</div>

				<!-- Follow Us -->

				<div class="follow_us_contents">
					<h1>Follow Us</h1>
					<ul class="social d-flex flex-row">
						<li><a href="#" style="background-color: #3a61c9"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" style="background-color: #41a1f6"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" style="background-color: #fb4343"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li><a href="#" style="background-color: #8f6247"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>

			</div>

			{{!-- <div class="col-lg-6 get_in_touch_col">
				<div class="get_in_touch_contents">
					<h1>Get In Touch With Us!</h1>
					<p>Fill out the form below to recieve a free and confidential.</p>
					<form action="post">
						<div>
							<input id="input_name" class="form_input input_name input_ph" type="text" name="name" placeholder="Name" required="required" data-error="Name is required.">
							<input id="input_email" class="form_input input_email input_ph" type="email" name="email" placeholder="Email" required="required" data-error="Valid email is required.">
							<input id="input_website" class="form_input input_website input_ph" type="url" name="name" placeholder="Website" required="required" data-error="Name is required.">
							<textarea id="input_message" class="input_ph input_message" name="message"  placeholder="Message" rows="3" required data-error="Please, write us a message."></textarea>
						</div>
						<div>
							<button id="review_submit" type="submit" class="red_button message_submit_btn trans_300" value="Submit">send message</button>
						</div>
					</form>
				</div>
			</div> --}}

		</div>
	</div>


</div>

<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/styles/bootstrap4/popper.js"></script>
<script src="/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/plugins/easing/easing.js"></script>
<script src="/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="/js/contact_custom.js"></script>
</body>