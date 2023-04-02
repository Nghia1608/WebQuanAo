<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="super_container">

    <form id="restore-product-form"name="restore-product-form" method="POST">
	
	<div class="container single_product_container">

    <br>

        <h2>Đơn hàng đã mua</h2>
    <table class="table">

        <thead>
            <tr>
            <th scope="col">STT</th>
            <th scope="col">Hình thức mua</th>
            <th scope="col">Tổng tiền</th>
            <th scope="col">Ngày đặt hàng</th>
            <th scope="col">Tình trạng</th>
            <th scope="col">Thời gian giao dự kiến</th>
            <th scope="col" colspan="1">Chỉnh sửa</th>
            </tr>
        </thead>
        <tbody>
		<c:forEach var="item" items="${orders}" varStatus="index">

            <tr>
            <th scope="row"></th>
            <td>
              <h5>${item.hinhThucMuaHang}  </h5>
            </td>
            <td>
            <h5 class="giaTienBanRa"id="giaTienBanRa${item.maHoaDon}" name="giaTienBanRa${item.tongTien}" >${item.tongTien}</h5>
            </td>
            <td>
              <h5 id="createdAt${item.maHoaDon}">${item.thoiGianDatHang}</h5>
            </td>
            <td>
              <h5>${item.tinhTrang}  </h5>
            </td>
			<td>
              <h5>${item.thoiGianGiaoDuKien}  </h5>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/user/${item.maHoaDon}/orderDetail" class="btnUpdate btn-link">Chi tiết</a>
				<a id="btn-select${item.maHoaDon}"href="" class="btnDelete btn-link" data-id="${item.maHoaDon}" data-toggle="modal" data-target="#exampleModalRestore" hidden>Hủy đơn hàng</a>

			</td>
            </tr>
            <script>

                var tempID${item.maHoaDon} = "createdAt${item.maHoaDon}"
                var tempDate${item.maHoaDon} = document.getElementById(tempID${item.maHoaDon}).innerHTML
				var tempBtnHuy${item.maHoaDon} ="btn-select${item.maHoaDon}"

					var giaTienBanRaHienThi${item.maHoaDon} = "giaTienBanRa${item.maHoaDon}"
                    document.getElementById(giaTienBanRaHienThi${item.maHoaDon}).innerHTML = (${item.tongTien}).toLocaleString() + "  VND"; 
                </script>
            </c:forEach>

        </tbody>
        

    </table>
  </div>





    </form>

<!--Form Xóa-->

<div class="modal fade" id="exampleModalRestore" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Xác nhận hủy</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Bạn có chắc muốn hủy đơn hàng ?</p>
      </div>
      <div class="modal-footer">
        <button id="btn-restore" type="button" class="btnDelete1 btn-link">Xác nhận</button>
        <button type="button" class="btnCancel btn-link" data-dismiss="modal">Hủy</button>
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
