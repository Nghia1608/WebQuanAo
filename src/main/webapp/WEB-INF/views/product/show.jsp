<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
    <div class="super_container">
	<div class="container single_product_container">

        <form method="POST" action="/products/{{products._id}}?_method=POST">

		<br>
		<div class="row">

			<div class="col-lg-7">
				<div class="single_product_pics">
					<c:forEach var="item" items="${product}" varStatus="index">
					<div class="row">
						<div class="col-lg-3 thumbnails_col order-lg-1 order-2">
							<div class="single_product_thumbnails">

								<ul>
									<li><img src="${item.image1}" alt="" data-image="${item.image1}"></li>
									<li class="active"><img src="${item.image2}" alt="" data-image="${item.image2}"></li>
									<li><img src="${item.image3}" alt="" data-image="${item.image3}"></li>
								</ul>
								
							</div>
						</div>
						<div class="col-lg-9 image_col order-lg-2 order-1">
							<div class="single_product_image">
								<div class="single_product_image_background" style="background-image:url(${item.image})"></div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="product_details">
					<div class="product_details_title">
						<c:forEach var="item" items="${product}" varStatus="index">
							<h2>${item.tenSanPham }</h2>
						</c:forEach>		
					</div>
					<div class="free_delivery d-flex flex-row align-items-center justify-content-center">
						<span class="ti-truck"></span><span>Giao hàng TP.HCM</span>
					</div>
					<br>
					<div>
						<h3 id="giaTienForShow">Giá tiền : </h3>
						<input type="text" class="form-control" value="" id="giaTienSizeDaChon"hidden>
						<input type="text" class="form-control" value="" id="size" name="size" hidden>
					</div>
					<br>

					<ul class="star_rating">
						<table class="table">
						<thead>
							<tr>
							<th scope="col">Size</th>
							<th scope="col">Số lượng còn</th>

							</tr>
						</thead>
						<tbody>
							<script>
								var idgiaTienSizeDaChon = "giaTienSizeDaChon";
								var giaTienSizeDaChonTag = document.getElementById("giaTienSizeDaChon");
								var idSize = "size";
								var giaTriSize = document.getElementById("size");
							</script>

						<c:forEach var="item" items="${productDetail}" varStatus="index">
							<c:if test="${index.first}">

							</c:if>
							<c:if test="${not index.first}">
							
							</c:if>

							<tr >
							<td><button id="buttonSize${item.size}" type="button" class="btn btnSelectSize">${item.size}</button></td>
							<td>
								<h5 class="d-flex flex-row align-items-center justify-content-center"> 
									${item.soLuongCon }
								</h5>
            					<input type="text" class="form-control" value="${item.giaTienBanRa }" id="giaTienSize${item.size }"  hidden>
            					<input type="text" class="form-control" value="${item.size }" id="giaSize${item.size }"  hidden>
            					<input type="text" class="form-control" value="${item.soLuongCon }" id="soLuongCon${item.size }"  hidden>
            					<input type="text" class="form-control" value="" id="maxSLToSelect"  hidden>

							</td>
							</tr>
							<script>


								var sizeIdSelected${item.size} = "buttonSize"+"${item.size}";
								var ValueMoneySizeSelected${item.size} = "giaTienSize"+"${item.size}";
								var ValueSizeSelected${item.size} = "giaSize"+"${item.size}";
								var AmoutOfSizeSelected${item.size} = "soLuongCon"+"${item.size}";
								
								if(document.getElementById(AmoutOfSizeSelected${item.size}).value==0){
									document.getElementById(sizeIdSelected${item.size}).disabled  = true;
								}

								document.getElementById(sizeIdSelected${item.size}).onclick = function(){

									document.getElementById("soLuong").value = 1;

									giaTienSizeDaChonTag.value = document.getElementById(ValueMoneySizeSelected${item.size}).value;
									giaTriSize.value =  document.getElementById(ValueSizeSelected${item.size}).value;

									document.getElementById("giaTienForShow").innerHTML = "Giá tiền : " + Number(giaTienSizeDaChonTag.value).toLocaleString() + "  VND";
									document.getElementById("giaTienSizeDaChon").value = Number(giaTienSizeDaChonTag.value);
									var max = document.getElementById(AmoutOfSizeSelected${item.size}).value;
									var input = document.getElementById("soLuong");
									input.setAttribute("max",max); // set a new value;
									soLuongDaChon = document.getElementById("soLuong").value 
									document.getElementById("tongGiaTien").innerHTML =(giaTienSizeDaChonTag.value*soLuongDaChon).toLocaleString() +"  VND";
									document.getElementById("tongTien").value = (giaTienSizeDaChonTag.value*soLuongDaChon);
									document.getElementById("btn-add").disabled = false;

								}
							</script>
						</c:forEach>

						</tbody>
						</table>
					</ul>

					<div class="quantity d-flex flex-column flex-sm-row align-items-sm-center">

                    <h4 for="soLuong">Chọn số lượng</h4>
                    <input type="number" class="form-control" value="1" min="1" max="20"id="soLuong" name="soLuong"style="width: 7em">
					</div>
				</div>
                <br>
                <h4 >Tổng tiền :  <h3 id="tongGiaTien" name="tongGiaTien"> </h3> </h4>
			
            <input type="text" class="form-control" value="0" id="tongTien" name="tongTien" hidden>
            <input type="text" class="form-control" value="${item.productID }" id="idSP" name="idSP" hidden>
            <input type="text" class="form-control" value="{{products.tenSanPham}}" id="tenSanPham" name="tenSanPham" hidden>
            <input type="text" class="form-control" value="{{products.image}}" id="image" name="image" hidden>

			<button id="btn-add" type="submit" class="btnUpdate1 btn-link" disabled>Thêm vào giỏ hàng</button>

			<script>

				document.getElementById("soLuong").onchange= function(){
					soLuongDaChon = document.getElementById("soLuong").value 
					document.getElementById("tongGiaTien").innerHTML =(giaTienSizeDaChonTag.value*soLuongDaChon).toLocaleString() +"  VND";
					document.getElementById("tongTien").value = (giaTienSizeDaChonTag.value*soLuongDaChon);
					console.log("tong tien ne"+document.getElementById("tongTien").value)

				}

			</script>
			</div>
		</div>
        </form>

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