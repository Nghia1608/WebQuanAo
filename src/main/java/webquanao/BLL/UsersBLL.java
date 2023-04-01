package webquanao.BLL;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webquanao.DTO.UsersDTO;

public class UsersBLL implements RowMapper<UsersDTO>{

	@Override
	public UsersDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		UsersDTO Users = new UsersDTO();
		Users.setUsername(rs.getNString("username"));
		Users.setPassword(rs.getString("password"));
		Users.setEmail(rs.getString("email"));
		Users.setHoTen(rs.getNString("hoTen"));
		Users.setSdt(rs.getNString("sdt"));
		Users.setQuyen(rs.getNString("quyen"));
		Users.setDiaChi(rs.getNString("diaChi"));
		Users.setTrangThai(rs.getNString("trangThai"));
		return Users;
	}

}
