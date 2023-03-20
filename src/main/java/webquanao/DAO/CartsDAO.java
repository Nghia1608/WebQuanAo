package webquanao.DAO;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.CartsBLL;
import webquanao.DTO.CartsDTO;
public class CartsDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<CartsDTO> GetDataSlide(){
		List<CartsDTO> list = new ArrayList<CartsDTO>();
		String sql = "SELECT * FROM carts";
		list = jdbcTemplate.query(sql,new CartsBLL());
		return list;
	}
}
