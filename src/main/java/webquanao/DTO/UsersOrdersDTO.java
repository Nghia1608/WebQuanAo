package webquanao.DTO;



import java.sql.Timestamp;
import org.joda.time.DateTime;
import org.springframework.format.annotation.DateTimeFormat;

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
	public String getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public Timestamp getThoiGianDatHang() {
		return thoiGianDatHang;
	}
	public void setThoiGianDatHang(Timestamp thoiGianDatHang) {
		this.thoiGianDatHang = thoiGianDatHang;
	}
	public Timestamp getThoiGianGiaoDuKien() {
		return thoiGianGiaoDuKien;
	}
	public void setThoiGianGiaoDuKien(Timestamp thoiGianGiaoDuKien) {
		this.thoiGianGiaoDuKien = thoiGianGiaoDuKien;
	}
	
	private String username;
	private String diaChi;
	private String note;
	private String hinhThucMuaHang;
	private String tinhTrang;
	private int tongTien;
	private String maHoaDon;
	private Timestamp thoiGianDatHang;
	private Timestamp thoiGianGiaoDuKien;
}
