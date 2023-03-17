package webquanao.BLL;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webquanao.DTO.ProductsDTO;

public class ProductsBLL implements RowMapper<ProductsDTO>{

	@Override
	public ProductsDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ProductsDTO products = new ProductsDTO();
		products.setProductID(rs.getString("productID"));
		products.setTenSanPham(rs.getString("tenSanPham"));
		products.setImage(rs.getString("image"));
		products.setMoTa(rs.getNString("moTa"));
		products.setTinhTrang(rs.getNString("tinhTrang"));
		products.setSlug(rs.getNString("slug"));
		products.setMaLoai(rs.getNString("maLoai"));
		products.setImage1(rs.getNString("image1"));
		products.setImage2(rs.getNString("image2"));
		products.setImage3(rs.getNString("image3"));
		return products;
	}

}
