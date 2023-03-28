package webquanao.DAO;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.CartsBLL;
import webquanao.DTO.CartsDTO;
import webquanao.Service.ICartsService;
@Repository
public class CartsDAO implements ICartsService{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	//Get Cart by username
	@Override
	public List<CartsDTO> GetCarts(String username){
		String sql = "SELECT * FROM carts WHERE username = ?";
        List<CartsDTO> carts =  jdbcTemplate.query(sql, new Object[]{username}, new CartsBLL());
		return carts;
	}

    @Override
    public void create(CartsDTO carts) {
        String sql = "INSERT INTO carts (cartsID,soLuong,username,productDetailsID,tongTien) VALUES(?,?,?,?,?)";
        jdbcTemplate.update(sql,RandomIDGenerator.generateUniqueID(),carts.getSoLuong(),carts.getUsername(),carts.getProductDetailsID(),carts.getTongTien());
    }
    //Update
    @Override
    public void update(CartsDTO carts) {
        String sql = "UPDATE carts SET soLuong = ?,username = ?,productDetailsID = ? ,tongTien=? WHERE cartsID = ?";
        jdbcTemplate.update(sql,carts.getSoLuong(),carts.getUsername(),carts.getProductDetailsID(),carts.getTongTien(),carts.getCartsID());
      }
    //Delete
    @Override
    public void delete(String cartsID) {
        String sql = "DELETE FROM carts WHERE cartsID = ?";
        jdbcTemplate.update(sql, cartsID);
      }	
    public class RandomIDGenerator {
 	   public static String generateUniqueID() {
 	       UUID uuid = UUID.randomUUID();
 	       return (uuid.toString()).replace("-", "");
 	   }
 	}

}
