package webquanao.BLL;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webquanao.DTO.UsersOrdersDetailsDTO;

public class UsersOrdersDetailsBLL implements RowMapper<UsersOrdersDetailsDTO>{

	@Override
	public UsersOrdersDetailsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		UsersOrdersDetailsDTO usersordersdetails = new UsersOrdersDetailsDTO();
		usersordersdetails.setUsersordersdetailsID(rs.getString("usersordersdetailsID"));
		usersordersdetails.setProductDetailsID(rs.getString("productDetailsID"));
		usersordersdetails.setSoLuong(rs.getInt("soLuong"));
		usersordersdetails.setMaHoaDon(rs.getString("maHoaDon"));
		usersordersdetails.setTenSanPham(rs.getString("tenSanPham"));
		usersordersdetails.setSize(rs.getString("size"));
		usersordersdetails.setGiaTienBanRa(rs.getInt("giaTienBanRa"));
		return usersordersdetails;
	}

}
