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
<link rel="stylesheet" type="text/css" href="<c:url value="/template/plugins/themify-icons/themify-icons.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/plugins/jquery-ui-1.12.1.custom/jquery-ui.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/styles/single_styles.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/styles/single_responsive.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/template/css/cssUsers/cart.css"/>">
<link rel="stylesheet" href="<c:url value="/template/css/cssUsers/register.css"/>">

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</head>


<body>

<div class="super_container">

	<div class="container single_product_container">
    <div class="mt-4">
    <h3 >Đăng ký tài khoản</h3>
    <label for="hoTen"><i class="fa fa-user"></i> Thông tin liên hệ</label>
    <div class="content">
    <form method="POST" action="${pageContext.request.contextPath}/auth/register">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Họ và tên</span>
            <input type="text" class="form-control" id="hoTen" name="hoTen" placeholder="Nhập họ và tên" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text"class="form-control" id="email" name="email" placeholder="Nhập email của bạn" required>
          </div>
          <div class="input-box">
            <span class="details">Số điện thoại</span>
            <input type="text" class="form-control" id="sdt" name="sdt"placeholder="Nhập số điện thoại" required>
          </div>
          <div class="input-box">
            <span class="details">Địa chỉ</span>
            <input type="text" class="form-control" id="diaChi" name="diaChi"placeholder="Nhập số địa chỉ" required>
          </div>
        </div>
        <label for="hoTen"><i class="fa fa-user"></i> Thông tin đăng nhập</label>
        <div class="input-box">
          <span class="details">Tên đăng nhập</span>
          <input type="text" class="form-control" id="username" name="username"placeholder="Nhập tên đăng nhập" required>
        </div>
        <div class="input-box">
          <span class="details">Mật khẩu</span>
          <input type="password" class="form-control" id="password" name="password"placeholder="Nhập mật khẩu" required>
            <span id="show"class="show"><i class="fa fa-eye"></i></span>
		</div>
        <div class="input-box">
          <span class="details">Xác nhận mật khẩu</span>
          <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"placeholder="Nhập lại mật khẩu" required>
            <span id="show1" class="show"><i class="fa fa-eye"></i></span>
		</div>
        <div class="button">
          <input type="submit" type="submit" value="Register">
        </div>
              </form>
		    <h5 >Đăng nhập</h5>

            Đã có tài khoản ? <a href="/auth/login">Đăng nhập ngay</a>
         </div>

    </div>
    </div>
<!-- 	</div> -->
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
