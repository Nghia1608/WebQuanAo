package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsBLL;
import webquanao.DTO.ProductsDTO;

@Repository
public class ProductsDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<ProductsDTO> GetDataSlide(){
		List<ProductsDTO> list = new ArrayList<ProductsDTO>();
		String sql = "SELECT * FROM product";
		list = jdbcTemplate.query(sql,new ProductsBLL());
		return list;

	}
	
    public int getTotal() {
        String sql = "SELECT COUNT(*) FROM product";
        int total = jdbcTemplate.queryForObject(sql, Integer.class);
        return total;
    }
}
