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
	public int getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	private String usersordersdetailsID;
	private String productDetailsID;
	private int soLuong;
	private int maHoaDon;
}
