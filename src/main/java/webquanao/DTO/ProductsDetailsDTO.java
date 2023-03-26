package webquanao.DTO;

public class ProductsDetailsDTO {
	public ProductsDetailsDTO() {
		super();
	}
	public String getProductDetailsID() {
		return productDetailsID;
	}
	public void setProductDetailsID(String productDetailsID) {
		this.productDetailsID = productDetailsID;
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
    public ProductsDTO getProduct() {
        return product;
    }

    public void setProduct(ProductsDTO product) {
        this.product = product;
    }

	private String productDetailsID;
	private int giaTienBanRa;
	private int soLuongCon;
	private String tinhTrang;
	private String productID;
	private String size;
	private ProductsDTO product;

}
