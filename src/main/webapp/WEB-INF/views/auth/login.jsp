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
<link rel="stylesheet" href="<c:url value="/template/css/cssUsers/login.css"/>">

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</head>
<body>

<div class="super_container">

	<!-- Header -->


	<div class="container single_product_container">
    <div class="mt-4">
    <h3 >Đăng nhập</h3>
         <form method="post" action ="${pageContext.request.contextPath}/auth/login">

         <div class="input-box">
            <span class="details">Username</span>
            <input type="text" class="form-control" id="username" name="username" placeholder="Nhập username đã đăng ký">
          </div>
          <div class="input-box">
            <span class="details">Mật khẩu</span>
            <input class="form-control" type="password" id="password" name="password"placeholder="Nhập mật khẩu">
            <span class="show"><i class="fa fa-eye"></i></span>
          </div>
            <div class="button">
             <button id="login" type="submit" value="Login"btn btn-primary">Đăng nhập</button>
            </div>

         </form>
         <div class="signup">
    <h5 >Đăng nhập</h5>

            Chưa có tài khoản ? <a href="/WebQuanAo/auth/register">Đăng ký ngay</a>
         </div>
         <script>
         document.getElementById("login").onclick = function(){

            document.getElementById("formCheckout").hidden = false;
         }
         </script>


      <script>
         var input = document.getElementById('password');
         var show = document.querySelector('.show');
         show.addEventListener('click', active);
         function active(){
           if(input.type === "password"){
             input.type = "text";
             show.style.color = "#1DA1F2";
           }else{
             input.type = "password";
             show.style.color = "#111";
           }
         }
      </script>
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
</body>
</html>
