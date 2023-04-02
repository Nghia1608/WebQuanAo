package webquanao.BLL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import org.springframework.jdbc.core.RowMapper;

import webquanao.DTO.UsersOrdersDTO;

public class UsersOrdersBLL implements RowMapper<UsersOrdersDTO>{

	@Override
	public UsersOrdersDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		UsersOrdersDTO usersorders = new UsersOrdersDTO();
		usersorders.setUsername(rs.getString("username"));
		usersorders.setDiaChi(rs.getString("diaChi"));
		usersorders.setNote(rs.getString("note"));
		usersorders.setHinhThucMuaHang(rs.getNString("hinhThucMuaHang"));
		usersorders.setTinhTrang(rs.getNString("tinhTrang"));
		usersorders.setTongTien(rs.getInt("tongTien"));
		usersorders.setMaHoaDon(rs.getNString("maHoaDon"));
		usersorders.setThoiGianDatHang(rs.getTimestamp("thoiGianDatHang"));
		usersorders.setThoiGianGiaoDuKien(rs.getTimestamp("thoiGianGiaoDuKien"));
		return usersorders;
	}

}
