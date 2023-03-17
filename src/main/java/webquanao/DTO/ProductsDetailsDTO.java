package webquanao.DTO;

public class ProductsDetailsDTO {
	public String getProductsDetailsID() {
		return productsDetailsID;
	}
	public void setProductsDetailsID(String productsDetailsID) {
		this.productsDetailsID = productsDetailsID;
	}
	public int getGiaTienBanRa() {
		return giaTienBanRa;
	}
	public void setGiaTienBanRa(int giaTienBanRa) {
		this.giaTienBanRa = giaTienBanRa;
	}
	public int getSoLuongCon() {
		return soLuongCon;
	}
	public void setSoLuongCon(int soLuongCon) {
		this.soLuongCon = soLuongCon;
	}
	public String getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public ProductsDetailsDTO() {
		super();
	}
	private String productsDetailsID;
	private int giaTienBanRa;
	private int soLuongCon;
	private String tinhTrang;
	private String productID;
	private String size;

}
