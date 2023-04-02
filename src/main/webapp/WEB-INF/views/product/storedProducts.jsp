<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<div class="super_container">

	<div class="container single_product_container">
<div class="mt-4">
  <h2> 
    Danh sách sản phẩm
  </h2>
    <a href="${pageContext.request.contextPath}/product/create">Thêm sản phẩm mới</a>
    <form id="restore-product-form"name="restore-product-form" method="POST">
    <table class="table">
        <thead>
            <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Phân loại</th>
            <th scope="col" colspan="2">Tình trạng</th>
            </tr>
        </thead>
        <tbody>
		<c:forEach var="item" items="${product}" varStatus="index">
			<c:if test="${index.first}">
			</c:if>
			<c:if test="${not index.first}">							
			</c:if>
			
			<input type="hidden" name="productID" value="${item.productID}">
            <tr>
            <th scope="row">${index.index + 1}</th>
            <td>${item.tenSanPham}</td>
            <td>${item.maLoai}</td>
            <td>${item.tinhTrang}</td>
            <td>
                <a href="/WebQuanAo/product/${item.productID }/detail" class="btnUpdate btn-link">Chi tiết</a>
                <a href="/WebQuanAo/product/${item.productID }/edit" class="btnUpdate btn-link">Sửa</a>
<!-- 	            <input type="submit"class="btnDelete btn-link" type="submit" value="Xóa"> -->
                <a id="btn-select"href="" class="btnDelete btn-link" data-id="${item.productID}" data-toggle="modal" data-target="#exampleModalDelete">Xóa</a>
            </td>
            </tr>

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
            deleteForm.action = '${pageContext.request.contextPath}/product/'+idDelete + '/delete?_method=POST';
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