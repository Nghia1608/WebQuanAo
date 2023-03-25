<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/styles/bootstrap4/bootstrap.min.css"/>">
<link href="<c:url value="/template/plugins/font-awesome-4.7.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/plugins/OwlCarousel2-2.2.1/owl.carousel.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/plugins/OwlCarousel2-2.2.1/animate.css"/>">
<link rel="stylesheet" href="<c:url value="/template/plugins/themify-icons/themify-icons.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/plugins/jquery-ui-1.12.1.custom/jquery-ui.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/styles/single_styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/styles/single_responsive.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/css/cssUsers/cart.css"/>">
<link rel="stylesheet" href="<c:url value="/template/css/cssUsers/showProduct.css"/>">

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</head>
<body>
<!-- header -->
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


										<li id="changePassword"hidden><a><i class="fa fa-sign-in" aria-hidden="true"></i>Thông tin tài khoản</a></li>
										<li id="purchase"hidden><a href="/WebQuanAo/users/purchase"><i class="fa fa-sign-in" aria-hidden="true"></i>Lịch sử mua hàng</a></li>

										<li id="login" hidden><a  href="/auth/login"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a></li>
										
										<li id="logOut"hidden>
											<a id="logout"href="#"><i class="fa fa-user-plus" aria-hidden="true">
											</i>Đăng xuất</a>
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
							<a href="/WebQuanAo">Shop<span>3ea</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="/WebQuanAo">Trang chủ</a></li>
								<li><a href="/WebQuanAo/contact">Liên hệ</a></li>

							</ul>
							<ul class="navbar_user">

								<li class="checkout">
									<a href="/WebQuanAo/users/cart">
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
<!-- header -->
<!-- header -->
<%@include file = "/WEB-INF/views/layouts/user/header.jsp" %>
<!-- header -->

<decorator:body/>

<!-- footer -->
<%@include file = "/WEB-INF/views/layouts/user/footer.jsp" %>
<!-- footer -->



</body>
</html>