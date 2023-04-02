package webquanao.DTO;

public class UsersOrdersDetailsDTO {
	public UsersOrdersDetailsDTO() {
		super();
	}
	public String getUsersordersdetailsID() {
		return usersordersdetailsID;
	}
	public void setUsersordersdetailsID(String usersordersdetailsID) {
		this.usersordersdetailsID = usersordersdetailsID;
	}
	public String getProductDetailsID() {
		return productDetailsID;
	}
	public void setProductDetailsID(String productDetailsID) {
		this.productDetailsID = productDetailsID;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	private String usersordersdetailsID;
	private String productDetailsID;
	private int soLuong;
	private String maHoaDon;
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getGiaTienBanRa() {
		return giaTienBanRa;
	}
	public void setGiaTienBanRa(int giaTienBanRa) {
		this.giaTienBanRa = giaTienBanRa;
	}
	private String tenSanPham;
	private String size;
	private int giaTienBanRa;
}
