package webquanao.DTO;

public class CartsDTO {
	public CartsDTO() {
		super();
	}
	public String getCartsID() {
		return cartsID;
	}
	public void setCartsID(String cartsID) {
		this.cartsID = cartsID;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getProductDetailsID() {
		return productDetailsID;
	}
	public void setProductDetailsID(String productDetailsID) {
		this.productDetailsID = productDetailsID;
	}
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}
    public void setProductDetails(ProductsDetailsDTO productDetail) {
        this.productDetail = productDetail;
    }
	private int tongTien;
	private String cartsID;
	private int soLuong;

	private String username;
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	private String tenSanPham;
	private String image;
	private String productDetailsID;
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	private String size;
	private ProductsDetailsDTO productDetail;
	
}
