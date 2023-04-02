<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<div class="super_container">

	<div class="container single_product_container">
<div class="mt-4">
	  <h3 class="free_delivery d-flex flex-row align-items-center justify-content-center"> 
	    Chi tiết sản phẩm ${product.tenSanPham}
	  </h3>
      <a href="${pageContext.request.contextPath}/product/${product.productID}/createDetail">Thêm chi tiết sản phẩm</a>


    <form id="restore-product-form"name="restore-product-form" method="POST">
    <table class="table">
        <thead>
            <tr>
            <th scope="col">STT</th>
            <th scope="col">Size</th>
            <th scope="col">Số lượng còn</th>
            <th scope="col">Giá tiền bán ra</th>
            <th scope="col" colspan="2">Tình trạng</th>
            </tr>
        </thead>
        <tbody>
						<c:forEach var="item" items="${productDetail}" varStatus="index">
							<c:if test="${index.first}">

							</c:if>
							<c:if test="${not index.first}">
							
							</c:if>
			<input type="hidden" name="productDetailsID" value="${item.productDetailsID}">
            <tr>
            <th scope="row">${index.index + 1}</th>
            <td>
                <h5 class="size"id="size${item.giaTienBanRa}" name="size${item.giaTienBanRa}" >${item.size}</h5>
            </td>
            <td>
                <h5 class="soLuongCon"id="soLuongCon${item.giaTienBanRa}" name="size${item.giaTienBanRa}" >${item.soLuongCon}</h5>
                </td>
            <td>
            <h5 class="giaTienBanRa"id="giaTienBanRa${item.giaTienBanRa}" name="giaTienBanRa${item.giaTienBanRa}" >${item.giaTienBanRa}</h5>
            </td>
			<td>
            <h5 class="tinhTrang"id="tinhTrang${item.giaTienBanRa}" name="giaTienBanRa${item.giaTienBanRa}" >${item.tinhTrang}</h5>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/product/${item.productDetailsID}/editDetail" class="btnUpdate btn-link">Sửa</a>
                <a id="btn-select"href="" class="btnDelete btn-link" data-id="${item.productDetailsID}" data-toggle="modal" data-target="#exampleModalDelete">Xóa</a>

            </td>
            </tr>
            <input type="text" class="form-control" value="${item.giaTienBanRa}" id="giaTienBanRaSP${item.giaTienBanRa}" name="giaTienBanRa${item.giaTienBanRa}" hidden>

            <script>
                //size
                    var sizeHienThi${item.giaTienBanRa} = "size"+"${item.giaTienBanRa}"    
                //soluong
                    var soLuongConHienThi${item.giaTienBanRa} = "soLuongCon"+${item.giaTienBanRa}
                    document.getElementById(soLuongConHienThi${item.giaTienBanRa}).innerHTML = (${item.soLuongCon}).toLocaleString();   
                //giatien
            var giaTienBanRaHienThi${item.giaTienBanRa} = "giaTienBanRa"+${item.giaTienBanRa}
            document.getElementById(giaTienBanRaHienThi${item.giaTienBanRa}).innerHTML = (${item.giaTienBanRa}).toLocaleString() + "  VND";     
                </script>

						</c:forEach>

        </tbody>

    </table>
	</form>
</div>
<div class="modal fade" id="exampleModalDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Xác nhận xóa </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Bạn có chắc muốn xóa sản phẩm ?</p>
      </div>
      <div class="modal-footer">
        <button id="btn-delete" type="button" class="btnDelete1 btn-link">Xác nhận</button>
        <button type="button" class="btnCancel btn-link" data-dismiss="modal">Hủy</button>
      </div>
    </div>
  </div>
</div>
</div>
<!--Event xóa-->
<script>
    document.addEventListener('DOMContentLoaded',function(){
        var idDelete;
        var deleteForm = document.getElementById('restore-product-form');
        var btnDelete = document.getElementById('btn-delete');
        $('#exampleModalDelete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        idDelete = button.data('id')
        });
        btnDelete.onclick = function(){
            deleteForm.action = '${pageContext.request.contextPath}/product/'+idDelete + '/deleteDetail?_method=POST';
            deleteForm.submit();
        }
    })


</script>
<script src="<c:url value='/template/js/jquery-3.2.1.min.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/popper.js'/>"></script>
<script src="<c:url value='/template/styles/bootstrap4/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/plugins/Isotope/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/template/plugins/OwlCarousel2-2.2.1/owl.carousel.js'/>"></script>
<script src="<c:url value='/template/plugins/easing/easing.js'/>"></script>
<script src="<c:url value='/template/plugins/jquery-ui-1.12.1.custom/jquery-ui.js'/>"></script>
<script src="<c:url value='/template/js/single_custom.js'/>"></script>