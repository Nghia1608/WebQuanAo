<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="super_container">

    <form id="restore-product-form"name="restore-product-form" method="POST">
	
	<div class="container single_product_container">

    <br>

        <h2>Giỏ hàng của bạn</h2>
    <table class="table">
      <script>
        var tempTongTienGioHang = 0;
        var tempTongTienGioHang1 = 0;
        var tongSanPhamToShowDaChon = 0;
        var tongSanPhamToShowDaChon1 = 0;

        </script>
        <thead>
            <tr>
            <th scope="col"></th>
            <th scope="col">STT</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Hình ảnh</th>
            <th scope="col">Size</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Giá tiền</th>
            <th scope="col" colspan="2">Chỉnh sửa</th>
            </tr>
        </thead>
        <tbody>
          <input type="text" class="form-control" value="" id="maHoaDon" name="maHoaDon" hidden>
    <script>
    function uuidv4() {
    	  const uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    	    const r = Math.random() * 16 | 0;
    	    const v = c == 'x' ? r : (r & 0x3 | 0x8);
    	    return v.toString(16);
    	  });
    	  return uuid.replace(/-/g, '');
    	}
    document.getElementById("maHoaDon").value = uuidv4();
  </script>
  <input type="text" class="form-control" value="" id="tongTienGioHang" name="tongTienGioHang" hidden>
  <input type="text" class="form-control" value="" id="tongSanPhamToSubmit" name="tongSanPham" hidden>
            			<input type="text" class="form-control" value="${user.username }" name="username" hidden>
		<c:forEach var="item" items="${carts}" varStatus="index">

            <tr>
                <td>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox"name="checkboxItem" value="" id="checkbox${item.cartsID}">

                  </div>
                </td>
            <th scope="row"></th>
            <td>
              <h4>${item.tenSanPham}  </h4>
              
            </td>
            <td>
                <img class="imageProduct"href="${pageContext.request.contextPath}/product/${item.productDetailsID}"  src="${item.image}" alt="">
              </td>
            <td>
                <h4 class="size"id="size${item.cartsID}"name="size" >${item.size}</h4>
            </td>
            <td>
            <input type="number" min="1" max="20"class="form-control" value="${item.soLuong}" id="soLuong${item.cartsID}" name="soLuong"placeholder="Chọn số lượng mua">
            <input type="number" min="1" max="20"class="form-control" value="${item.soLuong}" id="soLuongForUpdate${item.cartsID}" name="soLuongForUpdate${item.cartsID}"hidden>
            <td >
            <h4 class="tongGiaTien"id="tongGiaTien${item.cartsID}" name="tongGiaTien${item.cartsID}" >${item.tongTien}  </h4>
            </td>
            <td>
                <a id="btn-select"href="" class="btnUpdate btn-link" data-id="${item.cartsID}" data-toggle="modal" data-target="#exampleModalRestore">Cập nhật</a>
                <a id="btn-select"href="" class="btnDelete btn-link" data-id="${item.cartsID}" data-toggle="modal" data-target="#exampleModalDelete">Xóa</a>
            </td>
                        <input type="text" class="form-control" value="${item.productDetailsID}" id="idSP${item.cartsID}" name="productDetailsID" hidden>

<%--                         <input type="text" class="form-control" value="${item.tenSanPham}" id="tenSP${item.cartsID}" name="tenSanPham" hidden> --%>

                        <input type="text" class="form-control" value="${item.size}" id="productDetailsIDForSubmit${item.cartsID}"name="size" hidden>
                        <input type="text" class="form-control" value="${item.tongTien}" id="tongTien${item.cartsID}" name="giaTienBanRa" hidden>
                        <input type="text" class="form-control" value="${item.tongTien}" id="tongTienForUpdate${item.cartsID}" name="tongTienForUpdate${item.cartsID}" hidden>
                        <input type="text" class="form-control" value="" id="tongTienGioHang" hidden>
                        <input type="text" class="form-control" value="false" id="checked${item.cartsID}" name="checked" hidden>
                        <input type="text" class="form-control" value="${item.cartsID}" id="cartsID" name="cartsID" hidden>

            </tr>
<script >
    document.addEventListener('DOMContentLoaded',function(){

  //get ID

     tongGiaTien1${item.cartsID} = "tongGiaTien${item.cartsID}"
     tongTien1${item.cartsID} = "tongTien${item.cartsID}"
     soLuong1${item.cartsID} = "soLuong${item.cartsID}"
     //
     tongTienForUpdate${item.cartsID} = "tongTienForUpdate${item.cartsID}"
     soLuongForUpdate${item.cartsID} = "soLuongForUpdate${item.cartsID}"
     //
     tenSanPham${item.cartsID} ="tenSP${item.cartsID}"
     productDetailsIDForSubmit${item.cartsID} = "productDetailsIDForSubmit${item.cartsID}"
     productDetailsID${item.cartsID} ="productDetailsID${item.cartsID}"
     checked${item.cartsID} ="checked${item.cartsID}"
//  
  var number = ${item.tongTien}
    var giaTienSanPham${item.cartsID} = (document.getElementById(tongTien1${item.cartsID}).value / document.getElementById(soLuong1${item.cartsID}).value)
    var number = document.getElementById(tongTien1${item.cartsID}).value
    var valueproductDetailsID = document.getElementById(productDetailsIDForSubmit${item.cartsID}).value

//     document.getElementById(productDetailsID${item.cartsID}).innerHTML = valueproductDetailsID.toLocaleString() + "  g";     
    document.getElementById(tongGiaTien1${item.cartsID}).innerHTML = number.toLocaleString() + "  VND";
        var soLuongDaChon = document.getElementById(soLuong1${item.cartsID}).value 
        document.getElementById(tongGiaTien1${item.cartsID}).innerHTML =(giaTienSanPham${item.cartsID}*soLuongDaChon).toLocaleString() +"  VND";
    
    document.getElementById(soLuong1${item.cartsID}).onchange= function(){


        soLuongDaChon = document.getElementById(soLuong1${item.cartsID}).value 
        document.getElementById(soLuongForUpdate${item.cartsID}).value = soLuongDaChon;
        document.getElementById(tongGiaTien1${item.cartsID}).innerHTML =(giaTienSanPham${item.cartsID}*soLuongDaChon).toLocaleString() +"  VND";
        document.getElementById(tongTien1${item.cartsID}).value = (giaTienSanPham${item.cartsID}*soLuongDaChon);
        document.getElementById(tongTienForUpdate${item.cartsID}).value = (giaTienSanPham${item.cartsID}*soLuongDaChon);

    }
  //checkboxxxxxx
        var checkboxAll = $('#checkboxAll');
        var productsItemCheckbox = $(`input[name="checkboxItem"]`)
        document.getElementById("btnDatHang").disabled = true;
        var itemForListSP = "";
            //checkbox all change
          checkboxAll.change(function(req,res,next){
          var isCheckedAll = $(this).prop('checked');
          productsItemCheckbox.prop('checked',isCheckedAll);
          //

          // cộng dồn tổng tiền sp vào tempTongTienGioHang
          if(isCheckedAll){
            tempTongTienGioHang1 = tempTongTienGioHang1 + parseInt( number);
            tempTongTienGioHang = tempTongTienGioHang1;
            tongSanPhamToShowDaChon1 = tongSanPhamToShowDaChon1 + 1;
            tongSanPhamToShowDaChon = tongSanPhamToShowDaChon1;
            document.getElementById("btnDatHang").disabled = false;
          document.getElementById("formCheckout").hidden = true;
            document.getElementById(checked${item.cartsID}).value = "true";

            document.getElementById("tongSanPhamToShow").innerHTML = "Tổng sản phẩm : " + tongSanPhamToShowDaChon1;
            document.getElementById("tongTienGioHangText").innerHTML = "Tổng tiền :    " + tempTongTienGioHang1.toLocaleString()   +"  VNĐ";
            document.getElementById("tongTienGioHang").value = tempTongTienGioHang1;
            document.getElementById("tongSanPhamToSubmit").value = tongSanPhamToShowDaChon1;
            //add tab HTML vao itemForListSP
           //itemForListSP + document.getElementById(tenSanPham${item.cartsID}).value


          }
          else{
            document.getElementById("tongTienGioHangText").innerHTML = "Tổng tiền : 0 VNĐ";
            document.getElementById("tongSanPhamToShow").innerHTML = "Tổng sản phẩm : 0" ;
            document.getElementById(checked${item.cartsID}).value = "false";

            tempTongTienGioHang1 = 0;
            tempTongTienGioHang = 0;
            tongSanPhamToShowDaChon1 = 0;
            tongSanPhamToShowDaChon = 0;
            document.getElementById("tongTienGioHang").value = tempTongTienGioHang1;
            document.getElementById("tongSanPhamToSubmit").value = tongSanPhamToShowDaChon1;

          document.getElementById("btnDatHang").disabled = true;
          document.getElementById("formCheckout").hidden = true;


          }
          });//finish

        //One of all item checkbox change
        productsItemCheckbox.change(function(){
          var isCheckedAll = productsItemCheckbox.length === $('input[name="checkboxItem"]:checked').length;
          checkboxAll.prop('checked',isCheckedAll);
        })
 
          var idCheckboxItem = $("input[id='checkbox" + "${item.cartsID}" + "']");
          idCheckboxItem.change(function(){
          tempTongTienGioHang1 = 0;
          tongSanPhamToShowDaChon1 = 0;

          checkboxItemID = document.getElementById("checkbox${item.cartsID}").checked;

            if(checkboxItemID){
              tempTongTienGioHang = tempTongTienGioHang + parseInt(number);
            tongSanPhamToShowDaChon = tongSanPhamToShowDaChon + 1;

            document.getElementById("btnDatHang").disabled = false;
            document.getElementById(checked${item.cartsID}).value = "true";

            //document.getElementById("tongTienGioHang").value = tempTongTienGioHang;
            
            }
            else{
              tempTongTienGioHang = tempTongTienGioHang - parseInt(number);
              tongSanPhamToShowDaChon = tongSanPhamToShowDaChon - 1;
            document.getElementById(checked${item.cartsID}).value = "false";

            }
              if(tempTongTienGioHang == 0){
              document.getElementById("btnDatHang").disabled = true;
          document.getElementById("formCheckout").hidden = true;

              } 
            document.getElementById("tongTienGioHangText").innerHTML = "Tổng tiền :    " + tempTongTienGioHang.toLocaleString()   +"  VNĐ";
            document.getElementById("tongSanPhamToShow").innerHTML = "Tổng sản phẩm : " + tongSanPhamToShowDaChon;
            document.getElementById("tongTienGioHang").value = tempTongTienGioHang;
            document.getElementById("tongSanPhamToSubmit").value = tongSanPhamToShowDaChon;


          })
          })

  </script>


            </c:forEach>

        </tbody>
        

    </table>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkboxAll">
  <label class="form-check-label" for="checkboxAll">
    Chọn tất cả sản phẩm
  </label>
</div>

    <h4 class="tongTienGioHang"id="tongSanPhamToShow"> Tổng số sản phẩm :  </h4>

    <h4 class="tongTienGioHangText"id="tongTienGioHangText" name="tongTienGioHangText" > Tổng tiền :  </h4>
    <button id="btnDatHang" type="button" class="btn btn-success" disabled> Đặt hàng</button>
    
  </div>




    


<script>
  document.getElementById("btnDatHang").onclick = function(){
   temp =  document.getElementById("hoTen").value
               sessionStorage.setItem("username",temp)

    document.getElementById("formCheckout").hidden = false;
  }
  </script>

<div class="row" id="formCheckout" hidden>
  <div class="col-75">
    <div class="container">

        <div class="row">
          <div id="formUser" class="col-50">
            <label for="hoTen"><i class="fa fa-user"></i> Họ tên</label>
            <input type="text" class="textUser" id="hoTen" name="hoTen" value="${user.hoTen}" disabled>


            <br>
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text"class="textUser" id="email" name="email" value="${user.email}">
            <br>

            <label for="diaChi"><i class="fa fa-address-card-o"></i> Địa chỉ nhận hàng</label>
            <input type="text"class="textUser" id="diaChi" name="diaChi" value="${user.diaChi}">

            <label for="sdt"><i class="fa fa-address-card-o"></i> Số điện thoại</label>
            <input type="text"class="textUser" id="adr" name="sdt" value="${user.sdt}">

            <label for="adr"><i class="fa fa-address-card-o"></i> Ghi chú</label>
            <input type="text"class="textUser" id="note" name="note" placeholder="Ghi chú nếu có">
          </div>
            <input type="text" id="hinhThucMuaHang" name="hinhThucMuaHang" value="online" hidden>
            <input type="text" id="tinhTrang" name="tinhTrang" value="Đã xác nhận đơn hàng" hidden>

        </div>

<a id="btn-select"class="btn btn-success" data-toggle="modal"  data-target="#exampleModalOrder">Xác nhận đặt hàng</a>

    </div>

  </div>


</div>

    </form>

<!--Form Xóa-->

<div class="modal fade" id="exampleModalRestore" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Xác nhận cập nhật</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Bạn có chắc muốn cập nhật sản phẩm ?</p>
      </div>
      <div class="modal-footer">
        <button id="btn-restore" type="button" class="btnUpdate1 btn-link">Xác nhận</button>
        <button type="button" class="btnCancel btn-link" data-dismiss="modal">Hủy</button>
      </div>
    </div>
  </div>
</div>
<!--Confirm Delete Button -->

<div class="modal fade" id="exampleModalDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Xác nhận xóa khỏi giỏ hàng</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Bạn có chắc muốn xóa sản phẩm khỏi giỏ hàng?</p>
      </div>
      <div class="modal-footer">
        <button id="btn-delete" type="button" class="btnDelete1 btn-link">Xác nhận</button>
        <button type="button" class="btnCancel btn-link" data-dismiss="modal">Hủy</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalOrder" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Xác nhận đặt hàng</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Bạn có chắc muốn đặt hàng ?</p>
      </div>
      <div class="modal-footer">
        <button id="btn-order" type="button" class="btnUpdate1 btn-link">Xác nhận đặt hàng</button>
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
        var idRestore;
        var idOrder;
        var restoreForm = document.getElementById('restore-product-form');

        var deleteForm = document.getElementById('restore-product-form');
        var orderForm = document.getElementById('restore-product-form');

        var btnDelete = document.getElementById('btn-delete');
        var btnRestore = document.getElementById('btn-restore');
        var btnOrder = document.getElementById('btn-order');


        

//
        $('#exampleModalRestore').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        idRestore = button.data('id')

        });

        $('#exampleModalDelete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        idDelete = button.data('id')
        });

        $('#exampleModalDelete').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        idOrder = button.data('id')
        });

        btnRestore.onclick = function(){
            restoreForm.action = '${pageContext.request.contextPath}/product/'+idRestore + '/updateCart?_method=POST';
            restoreForm.submit(); 

        }
        btnDelete.onclick = function(){
            deleteForm.action = '${pageContext.request.contextPath}/product/'+idDelete + '/deleteCart?_method=DELETE';
            deleteForm.submit();
        }

          btnOrder.onclick = function(){
          orderForm.action = '${pageContext.request.contextPath}/product/addOrder?_method=POST';
          orderForm.submit();
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