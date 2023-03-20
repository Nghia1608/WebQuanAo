package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsDetailsBLL;
import webquanao.DTO.ProductsDetailsDTO;

@Repository
public class ProductsDetailsDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<ProductsDetailsDTO> GetDataSlide(){
		List<ProductsDetailsDTO> list = new ArrayList<ProductsDetailsDTO>();
		String sql = "SELECT * FROM productdetails";
		list = jdbcTemplate.query(sql,new ProductsDetailsBLL());
		return list;
	}
}
