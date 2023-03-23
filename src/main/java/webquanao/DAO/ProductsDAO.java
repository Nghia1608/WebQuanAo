package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsBLL;
import webquanao.BLL.ProductsDetailsBLL;
import webquanao.BLL.UsersBLL;
import webquanao.DTO.ProductsDTO;
import webquanao.DTO.ProductsDetailsDTO;
import webquanao.DTO.UsersDTO;
import webquanao.Service.IProductService;
import webquanao.Service.IUsersService;

@Repository
public class ProductsDAO implements IProductService{
	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<ProductsDTO> GetDataSlide(){
		List<ProductsDTO> list = new ArrayList<ProductsDTO>();
		String sql = "SELECT * FROM product";
		list = jdbcTemplate.query(sql,new ProductsBLL());
		return list;
	}
    @Override
	public List<ProductsDTO> findByID(String productID){
		String sql = "SELECT * FROM product WHERE productID = ?";
        List<ProductsDTO> products =  jdbcTemplate.query(sql, new Object[]{productID}, new ProductsBLL());
		return products;
	}
//    @Override
//    public ProductsDTO findByID(String productID) {
//        String sql = "SELECT * FROM product WHERE productID = ?";
//        List<ProductsDTO> products =  jdbcTemplate.query(sql, new Object[]{productID}, new ProductsBLL());
//        if(products.isEmpty()) {
//            return null;
//          } else {
//            return products.get(0);
//          }
//    }
    @Override
	public List<ProductsDetailsDTO> GetDataDetailSlide(String productID){
		String sql = "SELECT * FROM productdetails WHERE productID = ?";
        List<ProductsDetailsDTO> products =  jdbcTemplate.query(sql, new Object[]{productID}, new ProductsDetailsBLL());
		return products;
	}

}
