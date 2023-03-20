package webquanao.DTO;

public class UsersOrdersDTO {
	public UsersOrdersDTO() {
		super();
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getHinhThucMuaHang() {
		return hinhThucMuaHang;
	}
	public void setHinhThucMuaHang(String hinhThucMuaHang) {
		this.hinhThucMuaHang = hinhThucMuaHang;
	}
	public String getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}
	public int getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public String getThoiGianDatHang() {
		return thoiGianDatHang;
	}
	public void setThoiGianDatHang(String thoiGianDatHang) {
		this.thoiGianDatHang = thoiGianDatHang;
	}
	public String getThoiGianGiaoHangDuKien() {
		return thoiGianGiaoHangDuKien;
	}
	public void setThoiGianGiaoHangDuKien(String thoiGianGiaoHangDuKien) {
		this.thoiGianGiaoHangDuKien = thoiGianGiaoHangDuKien;
	}
	private String username;
	private String diaChi;
	private String note;
	private String hinhThucMuaHang;
	private String tinhTrang;
	private int tongTien;
	private int maHoaDon;
	private String thoiGianDatHang;
	private String thoiGianGiaoHangDuKien;
}
