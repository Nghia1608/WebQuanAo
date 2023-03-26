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
            <tr>
            <th scope="row"></th>
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
                <a id="btn-select"href="" class="btnDelete btn-link" data-id="${item.productID}" data-toggle="modal" data-target="#exampleModal">Xóa</a>

            </td>
            </tr>
            <input type="text" class="form-control" value="${item.giaTienBanRa}" id="giaTienBanRaSP${item.giaTienBanRa}" name="giaTienBanRa${item.giaTienBanRa}" hidden>

            <script>
                //size
                    var sizeHienThi${item.giaTienBanRa} = "size"+"${item.giaTienBanRa}"
                    //document.getElementById(sizeHienThi${item.giaTienBanRa}).innerHTML = (${item.size}).toLocaleString() + "  g";     
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
</div>
<!--Confirm Delete Button -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Xác nhận xóa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Bạn có chắc muốn xóa sản phẩm ?</p>
      </div>
      <div class="modal-footer">
        <a id="count-down">Wait for Available</a>
        <button id="btn-delete" type="button" class="btnDelete1 btn-link">Xác nhận xóa</button>
        <button type="button" class="btnCancel btn-link" data-dismiss="modal">Hủy</button>
      </div>
    </div>
  </div>
</div>

<!--Form Xóa-->
    <form name="delete-product-form" method="POST">

<!--Disable Delete Button trong 10s-->
<script>
      var btnselect = document.getElementById('btn-select');
      var countdown = document.getElementById('count-down');
       btnselect.onclick =  function() {
            document.getElementById("btn-delete").disabled = true;
            setTimeout(function() {
                document.getElementById("btn-delete").disabled = false;
            }, 10000);
            document.getElementById("count-down").hidden = false;
            setTimeout(function() {
                document.getElementById("count-down").hidden = true;
            }, 10000);
        }
        
</script>


<!--Event xóa-->
<script>
    document.addEventListener('DOMContentLoaded',function(){
        var id;
        var deleteForm = document.forms['delete-product-form'];
        var btnDelete = document.getElementById('btn-delete');
        $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        id = button.data('id')
        });
        btnDelete.onclick = function(){
            deleteForm.action = '/products/'+id + '/deleteDetail?_method=DELETE';

            deleteForm.submit();
        }
    })
</script>
    
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