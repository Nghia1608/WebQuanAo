
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">

        <div class="sidebar-brand-text mx-3">NghiaTaiShop</div>

      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item active">
        <a class="nav-link">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Bảng điều khiển</span></a>
      </li>
      <hr class="sidebar-divider">
      <div class="sidebar-heading">
        Chức năng
      </div>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap"
          aria-expanded="true" aria-controls="collapseBootstrap">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>QL Sản phẩm</span>
        </a>
        <div id="collapseBootstrap" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="products/storedProducts">Danh sách sản phẩm</a>
            <a class="collapse-item" href="products/create">Thêm mới</a>
            <a class="collapse-item" href="products/trashProducts">Sản phẩm đã xóa</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseForm" aria-expanded="true"
          aria-controls="collapseForm">
          <i class="fab fa-fw fa-wpforms"></i>
          <span>QL Hóa đơn</span>
        </a>
        <div id="collapseForm" class="collapse" aria-labelledby="headingForm" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="users/purchase">Danh sách hóa đơn</a>
            <a class="collapse-item" href="users/canceledPurchase">Hóa đơn đã hủy</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTable" aria-expanded="true"
          aria-controls="collapseTable">
          <i class="fas fa-fw fa-table"></i>
          <span>QL Tài khoản</span>
        </a>
        <div id="collapseTable" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="users/storedUsers">Danh sách tài khoản</a>
          </div>
        </div>
      </li>
      {{!-- <li class="nav-item">
        <a class="nav-link" href="ui-colors.html">
          <i class="fas fa-fw fa-palette"></i>
          <span>UI Colors</span>
        </a>
      </li> --}}
      <hr class="sidebar-divider">
      <div class="sidebar-heading">
        
        {{!-- Examples
      </div>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage" aria-expanded="true"
          aria-controls="collapsePage">
          <i class="fas fa-fw fa-columns"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePage" class="collapse" aria-labelledby="headingPage" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Example Pages</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span>
        </a>
      </li>
      <hr class="sidebar-divider">
      <div class="version" id="version-ruangadmin"></div> --}}
    </ul>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <!-- Topbar -->

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">

          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Bảng điều khiển</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a id="logout"href="#">Đăng xuất</a></li>

            </ol>
          </div>
                      <script>
											    document.getElementById("logout").onclick = function(){
                          sessionStorage.removeItem("username");

													var formDashboard = document.forms['formDashboard'];

													formDashboard.action = '/auth/logout?_method=POST';
													formDashboard.submit();
											}
										</script>
          <div class="row mb-3">
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Thu nhập (Tháng)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" 
                      id="thuNhapThang">
                      {{#each doanhThuTheo2ThangGanNhat}}{{#if @first}}{{this.tongTien}}{{/if}}{{/each}}
                      </div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span class="text-success mr-2"><i  id="percent"></i> </span>
                        <br>
                        <span id="hienThiPhanTram">Thu nhập tăng so với tháng trước</span>
                        <span id="thangTruoc"></span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-primary"></i>
                    </div>
                  </div>
                </div>
              </div>
                <input type="text" class="form-control" 
                  value="{{#each doanhThuTheo2ThangGanNhat}}{{#if @last}}{{this.tongTien}}{{/if}}{{/each}}" 
                  id="tienThangTruoc" hidden>
                <script>
                  var tienThangTruoc = document.getElementById("tienThangTruoc").value
                  var tienThangNay =  document.getElementById("thuNhapThang").innerHTML
                  var percent = Math.round(tienThangNay/tienThangTruoc*100)

                  document.getElementById("percent").innerHTML ="+" +(percent-100) + " %";
                  document.getElementById("thangTruoc").innerHTML = Number(tienThangTruoc).toLocaleString() + " VND";

                  if(percent<100){
                  document.getElementById("hienThiPhanTram").innerHTML = "Thu nhập giảm so với tháng trước";
                  document.getElementById("percent").innerHTML ="-"+ (percent-100) + " %";
                  }
                  document.getElementById("thuNhapThang").innerHTML = Number(document.getElementById("thuNhapThang").innerHTML).toLocaleString() + "   VND"

                </script>
            </div>
            <!-- Earnings (Annual) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Tổng đơn hàng (tháng)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" 
                        id="tongDonHang">
                      {{#each soHoaDon2ThangGanNhat}}{{#if @first}}{{this.maHoaDon.length}}{{/if}}{{/each}}
                        
                      </div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span class="text-success mr-2"><i  id="percent1"></i> </span>
                        <br>
                        <span id="hienThiPhanTram1">Số hóa đơn tăng so với tháng trước</span>
                        <span id="thangTruoc1"></span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-shopping-cart fa-2x text-success"></i>
                    </div>
                  </div>
                </div>
              </div>
                  <input type="text" class="form-control" 
                  value="{{#each soHoaDon2ThangGanNhat}}{{#if @last}}{{this.maHoaDon.length}}{{/if}}{{/each}}" 
                  id="soHoaDonThangTruoc1" hidden>
                <script>
                  var tienThangTruoc1 = document.getElementById("soHoaDonThangTruoc1").value
                  var tienThangNay1 =  document.getElementById("tongDonHang").innerHTML
                  var percent1 = Math.round(tienThangNay1/tienThangTruoc1*100)

                  document.getElementById("percent1").innerHTML ="+" +(percent1-100) + " %";
                  document.getElementById("thangTruoc1").innerHTML = Number(tienThangTruoc1).toLocaleString() + " đơn hàng";

                  if(percent1<100){
                  document.getElementById("hienThiPhanTram1").innerHTML = "Giảm so với tháng trước";
                  document.getElementById("percent1").innerHTML ="-"+ (percent1-100) + " %";
                  }
                  document.getElementById("tongDonHang").innerHTML = Number(document.getElementById("tongDonHang").innerHTML).toLocaleString() + "   đơn hàng"

                </script>
            </div>
            <!-- New User Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Khách đăng kí mới</div>
                      <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"id="newUser">366</div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>
                        <span>So với tháng trước</span>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-info"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-uppercase mb-1">Tổng sản phẩm</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        {{!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                        <span>Since yesterday</span> --}}
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-cubes fa-2x text-warning"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Area Chart -->
            <div class="col-xl-12 col-lg-7"> 
                  <input type="text" class="form-control" 
                  value="{{doanhThuCacThangTrongNam}}" 
                  id="tienTheoCacThang" hidden>
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Doanh thu theo tháng</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="false">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                      aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Sản phẩm bán chạy</h6>
                  <div class="dropdown no-arrow">

									<div class="dropdown">
									<a class="dropdown-toggle btn btn-primary btn-sm" href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
										Tháng<i class="fas fa-chevron-down"></i>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    

										<li><a class="dropdown-item" href="/products/storedProducts">Hôm nay</a></li>
										<li><a class="dropdown-item" href="/users/storedUsers">Quý</a></li>
										<li><a class="dropdown-item" href="#">Năm</a></li>
										<li><a class="dropdown-item" href="#">Tùy chọn <input type="date" id="Test_DatetimeLocal" name="thoiGianDatHang"> Đến <input type="date1" id="Test_DatetimeLocal1"></a></li>
									</ul>
									</div>
                  </div>
                </div>

                <div class="card-body">
                      {{#each soLuongSanPham}}

                  <div class="mb-3">
                    <div class="small text-gray-500">{{this._id}}
                      <div class="small float-right"><b>{{this.tongSoLuong}}</b></div>
                    </div>

                  </div>
                    {{/each}}

                </div>
                <div class="card-footer text-center">
                  <a class="m-0 small text-primary card-link" href="products/storedProducts">Xem thêm <i
                      class="fas fa-chevron-right"></i></a>
                </div>
              </div>

              <script>
                
                    document.getElementById("Test_DatetimeLocal").onchange = function(){


                    var formDashboard = document.forms['formDashboard'];
                    formDashboard.action = '/admin1?_method=GET';
                    formDashboard.submit();
                }
              </script>
            </div>
            <!-- Invoice Example -->
            <div class="col-xl-8 col-lg-7 mb-4">
              <div class="card">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Hóa đơn</h6>
                  <a class="m-0 float-right btn btn-danger btn-sm" href="users/purchase">Xem thêm... <i
                      class="fas fa-chevron-right"></i></a>
                </div>
                <div class="table-responsive">
                  <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                      <tr>
                        <th>Mã hóa đơn</th>
                        <th>Tổng tiền</th>
                        <th>Trạng thái</th>
                        <th>Chi tiết</th>
                      </tr>
                    </thead>
                    <tbody>
                      {{#each danhSachHoaDonGanNhat}}
                      <tr>
                        <td>{{this._id}}</td>
                        <td>            <h6 class="giaTienBanRa"id="giaTienBanRa{{this._id}}" name="giaTienBanRa{{this._id}}" >{{this.tongTien}}</h6></td>
                        <td>{{this.tinhTrang}}</td>
                        <td><a href="/users/{{this._id}}/purchaseDetail" class="btn btn-sm btn-primary">Chi tiết</a></td>
                      </tr>
                    <script>
        					    var giaTienBanRaHienThi{{this._id}} = "giaTienBanRa"+{{this._id}}
                      document.getElementById(giaTienBanRaHienThi{{this._id}}).innerHTML = ({{this.tongTien}}).toLocaleString() + "  VND"; 

                    </script>
                    {{/each}}

                    </tbody>
                  </table>

                </div>
                <div class="card-footer"></div>
              </div>
            </div>

          </div>
<form id="formDashboard"name="formDashboard" method="POST">

        </div>
        <!---Container Fluid-->
      </div>
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; <script> document.write(new Date().getFullYear()); </script>
             {{!-- - developed by --}}
              <b><a href="https://indrijunanda.gitlab.io/" target="_blank">NghiaTaiShop</a></b>
            </span>
          </div>
        </div>

      </footer>
      <!-- Footer -->
    </div>
  </div>

  <!-- Scroll to top -->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <script  src="<c:url value='/template/plugins/jquery/jquery.min.js'/>"></script>
  <script  src="<c:url value='/template/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
  <script  src="<c:url value='/template/plugins/jquery-easing/jquery.easing.min.js'/>"></script>
  <script  src="<c:url value='/template/js/ruang-admin.min.js'/>"></script>
  <script  src="<c:url value='/template/plugins/chart.js/Chart.min.js'/>"></script>
  <script  src="<c:url value='/template/js/demo/chart-area-demo.js'/>"></script>  
