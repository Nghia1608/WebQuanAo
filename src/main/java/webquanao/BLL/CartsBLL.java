package webquanao.BLL;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webquanao.DTO.CartsDTO;

public class CartsBLL implements RowMapper<CartsDTO>{
	@Override
	public CartsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		CartsDTO carts = new CartsDTO();
		carts.setCartsID(rs.getString("cartsID"));
		carts.setProductDetailsID(rs.getString("productDetailsID"));
		carts.setSoLuong(rs.getInt("soLuong"));
		carts.setUsername(rs.getString("username"));
		carts.setTenSanPham(rs.getString("tenSanPham"));
		carts.setImage(rs.getString("image"));
		carts.setSize(rs.getString("size"));
		carts.setTongTien(rs.getInt("tongTien"));
		return carts;
	}
}
