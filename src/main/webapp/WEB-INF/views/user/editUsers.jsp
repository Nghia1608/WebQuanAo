<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="super_container">

<div class="container single_product_container">
	<div class="mt-4">
	
    <h3>Sửa đổi thông tin tài khoản ${user.username}</h3>
	<form id="formTong"name="formTong" method="POST" action="${pageContext.request.contextPath}/user/${user.username}/editUsers?_method=POST">
    <div class="form-group">
        <label for="usersName">Tên tài khoản</label>
        <input type="text" class="form-control" value="${user.username}" id="username" name="username"placeholder="Tên tài khoản" hidden>
    </div>
        <div class="form-group">
        <label for="hoTen">Họ tên</label>
        <input type="text" class="form-control" value="${user.hoTen}" id="hoTen" name="hoTen"placeholder="Họ tên">
    </div>
        <div class="form-group">
        <label for="sdt">Số điện thoại</label>
        <input type="text" class="form-control" value="${user.sdt}" id="sdt" name="sdt"placeholder="Số điện thoại">
    </div>
    </div>
        <div class="form-group">
        <label for="email">Email</label>
        <input type="text" class="form-control" value="${user.email}" id="email" name="email"placeholder="Email">
    </div>
	    <div class="form-group">
        <label for="diaChi">Địa chỉ</label>
        <input type="text" class="form-control" value="${user.diaChi }" id="diaChi" name="diaChi"placeholder="Địa chỉ">
    </div>
    <div class="form-group">
        <label for="usersName">Mật khẩu mới</label>
        <input type="password" class="form-control" value="" id="password" name="password"placeholder="Mật khẩu">
    </div>
    <div class="form-group">
        <label for="usersName">Xác nhận mật khẩu</label>
        <input type="password" class="form-control" value="" id="confirmPassword" name="confirmPassword"placeholder="Xác nhận mật khẩu" >
    
	</div>
    <div id="q" class="form-group">
        <label for="tinhTrang">Phân quyền</label>
        <input type="combobox" class="form-control" value="${user.quyen}" id="tinhTrang"name="quyen" hidden>

        <select id="selectTinhTrang" name="selectTinhTrang" disabled>
        <option id="optTinhTrang0" value="Admin">Admin</option>
        <option id="optTinhTrang1" value="Khach">Khách hàng</option>
        </select>
    </div>

    <div id="tt" class="form-group">
        <label for="tinhTrang">Tình trạng</label>
        <input type="combobox" class="form-control" value="${user.trangThai}" id="trangThai"name="trangThai" hidden>

        <select id="selecttrangThai" name="selecttrangThai" disabled>
        <option id="opttrangThai0" value="Đang hoạt động">Đang hoạt động</option>
        <option id="opttrangThai1" value="Đang bị khóa">Đang bị khóa</option>
    </div>
    <br>
      <input type="submit"class="btn btn-primary" type="submit" value="Lưu thông tin">
    </form>
		<script>
			var lengthSelect = document.getElementById("selectTinhTrang").length;
			var temp = document.getElementById("tinhTrang").value;
			for(var i=0;i<lengthSelect;i++){
				var idOpt = "optTinhTrang"+i;
				var valueOpt = document.getElementById(idOpt).value;
				if( valueOpt ==temp){
					document.getElementById("selectTinhTrang").selectedIndex=i;
				}
			}
			var lengthSelect1 = document.getElementById("selecttrangThai").length;
			var temp = document.getElementById("trangThai").value;
			for(var i=0;i<lengthSelect1;i++){
				var idOpt = "opttrangThai"+i;
				var valueOpt = document.getElementById(idOpt).value;
				if( valueOpt ==temp){
					document.getElementById("selecttrangThai").selectedIndex=i;
				}
			}
		</script>
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
