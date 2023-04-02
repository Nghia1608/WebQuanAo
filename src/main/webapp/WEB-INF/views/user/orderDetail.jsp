<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="super_container">

	<div class="container single_product_container">
<div class="mt-4">
  <h3 class="free_delivery d-flex flex-row align-items-center justify-content-center"> 
    Chi tiết đơn hàng ${orders.maHoaDon}
  </h3>
<div class="row" id="formCheckout">
  <div class="col-75">
    <div class="container">

        <div class="row">
          <div id="formUser" class="col-50">
            <label for="hoTen"><i class="fa fa-user"></i> Họ tên :<i>${user.hoTen}</label>
            <label for="email"><i class="fa fa-envelope"></i> Email :<i>${user.email}</label>
            <label for="diaChi"><i class="fa fas fa-bookmark"></i> Địa chỉ nhận hàng :  <i>${orders.diaChi}</i></label>
            <label for="sdt"><i class="fa fa fa-phone"></i> Số điện thoại :<i>${user.sdt}</label>
            <label for="adr"><i class="fa fas fa-bookmark"></i> Ghi chú :<i>${orders.note}</label>
          </div>
        </div>
        <h4 id="tongTienHoaDon"><i class="fa fas fa-bookmark"></i></h4>

    </div>

  </div>


</div>
    <table class="table">
        <thead>
            <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Size</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Giá tiền bán ra</th>
            </tr>
        </thead>
        <tbody>
		<c:forEach var="item" items="${ordersDetails}" varStatus="index">
            <tr>
            <th scope="row">${index.index + 1}</th>
            <td>
                <h5 >${item.tenSanPham}</h5>
            </td>
            <td>
                <h5 class="size"id="size">${item.size}</h5>
                </td>
            <td>
            <h5  >${item.soLuong}</h5>
            </td>
			<td>
            <h5 class="giaTienBanRa"id="giaTienBanRa${item.giaTienBanRa}">${item.giaTienBanRa}</h5>
            </td>
            </tr>

            <script>   
                //soluong

                //giatien
                document.getElementById("tongTienHoaDon").innerHTML ="Tổng tiền : "+ (${orders.tongTien}).toLocaleString() + "  VND"; 
                    var giaTienBanRaHienThi${item.giaTienBanRa} = "giaTienBanRa${item.giaTienBanRa}"
                    document.getElementById(giaTienBanRaHienThi${item.giaTienBanRa}).innerHTML = (${item.giaTienBanRa}).toLocaleString() + "  VND";     
                </script>

		</c:forEach>

        </tbody>

    </table>
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
