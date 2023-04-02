package webquanao.DAO;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsDetailsBLL;
import webquanao.BLL.UsersOrdersBLL;
import webquanao.DAO.CartsDAO.RandomIDGenerator;
import webquanao.DTO.CartsDTO;
import webquanao.DTO.ProductsDetailsDTO;
import webquanao.DTO.UsersOrdersDTO;
import webquanao.Service.IUsersOrders;

@Repository
public class UsersOrdersDAO implements IUsersOrders{
	@Autowired
	JdbcTemplate jdbcTemplate;
	//Get All
	@Override
	public List<UsersOrdersDTO> getAllUsersOrders(){
		List<UsersOrdersDTO> list = new ArrayList<UsersOrdersDTO>();
		String sql = "SELECT * FROM usersorders";
		list = jdbcTemplate.query(sql,new UsersOrdersBLL());
		return list;
	}
	//Get by username
    @Override
    public List<UsersOrdersDTO> getUsersOrders(String username) {
        String sql = "SELECT * FROM usersorders WHERE username = ?";
        List<UsersOrdersDTO> orders = jdbcTemplate.query(sql, new Object[]{username}, new UsersOrdersBLL());
		return orders;
    }
	//Get by maHoaDon
    @Override
    public List<UsersOrdersDTO> getUsersOrdersByMaHoaDon(String maHoaDon) {
        String sql = "SELECT * FROM usersorders WHERE maHoaDon = ?";
        List<UsersOrdersDTO> orders = jdbcTemplate.query(sql, new Object[]{maHoaDon}, new UsersOrdersBLL());
		return orders;
    }
    //Create new
    @Override
    public void createOrder(String username,String diaChi,String note,String hinhThucMuaHang,
			String tinhTrang,int tongTien,String maHoaDon,Timestamp thoiGianDatHang,Timestamp thoiGianGiaoDuKien) {
        String sql = "INSERT INTO usersorders (username,diaChi,note,hinhThucMuaHang,tinhTrang,tongTien,maHoaDon,thoiGianDatHang,thoiGianGiaoDuKien) VALUES(?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql,username,diaChi,note,hinhThucMuaHang,tinhTrang,tongTien,maHoaDon,thoiGianDatHang,thoiGianGiaoDuKien);
      }
    //Update
    @Override
    public void update(UsersOrdersDTO orders) {
        String sql = "UPDATE usersorders SET username = ?, diaChi = ?, note = ?, hinhThucMuaHang = ?, tinhTrang = ?, tongTien = ?, thoiGianDatHang = ?, thoiGianGiaoDuKien = ? WHERE maHoaDon = ?";
        jdbcTemplate.update(sql, orders.getUsername(),orders.getDiaChi(),orders.getNote(),orders.getHinhThucMuaHang(),orders.getTinhTrang(),orders.getTongTien(),orders.getThoiGianDatHang(),orders.getThoiGianGiaoDuKien(),orders.getMaHoaDon());
      }
    //Delete

    public class RandomIDGenerator {
  	   public static String generateUniqueID() {
  	       UUID uuid = UUID.randomUUID();
  	       return (uuid.toString()).replace("-", "");
  	   }
  	}


}
