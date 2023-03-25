package webquanao.BLL;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webquanao.DTO.ProductsDetailsDTO;

public class ProductsDetailsBLL implements RowMapper<ProductsDetailsDTO>{

	@Override
	public ProductsDetailsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ProductsDetailsDTO ProductsDetails = new ProductsDetailsDTO();
		ProductsDetails.setProductDetailsID(rs.getString("productDetailsID"));
		ProductsDetails.setGiaTienBanRa(rs.getInt("giaTienBanRa"));
		ProductsDetails.setSoLuongCon(rs.getInt("soLuongCon"));
		ProductsDetails.setTinhTrang(rs.getNString("tinhTrang"));
		ProductsDetails.setProductID(rs.getString("productID"));
		ProductsDetails.setSize(rs.getNString("size"));
		return ProductsDetails;
	}

}
