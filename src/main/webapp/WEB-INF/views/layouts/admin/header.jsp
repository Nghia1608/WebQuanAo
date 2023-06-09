<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
										Tài khoản 
										<i class="fa fa-angle-down"></i>
									</a>
									<ul class="account_selection">

										<li id="changePassword"hidden><a href="/users/${user.username}/edit"><i class="fa fa-sign-in" aria-hidden="true"></i>Thông tin tài khoản</a></li>
										<li id="purchase"hidden><a href="/users/purchase"><i class="fa fa-sign-in" aria-hidden="true"></i>Lịch sử mua hàng</a></li>

										<li id="login" hidden><a  href="${pageContext.request.contextPath}/auth/login"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a></li>
										<li id="login" hidden><a  href="${pageContext.request.contextPath}/auth/register"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng ký</a></li>
										
										<form name="logoutForm" method="POST">
										<li hidden id="logOut">
											<a id="logout"href="#"><i class="fa fa-user-plus" aria-hidden="true">
											</i>Đăng xuất</a>
										</li>
										<input type="text" class="form-control" value="${user.username}" id="showUsername" hidden>
										<input type="text" class="form-control" value="${user}" id="user" name="user" hidden>
										<script>
											document.getElementById("logout").onclick = function(){
													var logoutForm = document.forms['logoutForm'];
													logoutForm.action = "${pageContext.request.contextPath}/auth/logout?_method=POST";
													logoutForm.submit();
											}
										</script>
										<script>
											document.getElementById("login").hidden =false;
											if(document.getElementById("showUsername").value){
												document.getElementById("username").innerHTML ="Xin chào  " + document.getElementById("showUsername").value;
												document.getElementById("changePassword").hidden =false;
												document.getElementById("purchase").hidden =false;
												document.getElementById("logOut").hidden =false;
												document.getElementById("login").hidden =true;
											}
											</script>
											</form>
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
							<a href="/WebQuanAo">Shop đồ <span>3ae</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="/WebQuanAo">Trang chủ</a></li>
								<li><a href="/WebQuanAo/contact">Liên hệ</a></li>
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
