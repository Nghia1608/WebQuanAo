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
	private String cartsID;
	private int soLuong;
	private String username;
	private String productDetailsID;
	
}
