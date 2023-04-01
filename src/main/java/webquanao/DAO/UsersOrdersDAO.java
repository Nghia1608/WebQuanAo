package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.UsersOrdersBLL;
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
	//Get by ID
    @Override
    public List<UsersOrdersDTO> getUsersOrders(String username) {
        String sql = "SELECT * FROM usersorders WHERE username = ?";
        List<UsersOrdersDTO> orders = jdbcTemplate.query(sql, new Object[]{username}, new UsersOrdersBLL());
		return orders;
    }
    //Create new
    @Override
    public void create(UsersOrdersDTO orders) {
        String sql = "INSERT INTO usersorders (username,diaChi,note,hinhThucMuaHang,tinhTrang,tongTien,maHoaDon,thoiGianDatHang,thoiGianGiaoDuKien) VALUES(?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, orders.getUsername(),orders.getDiaChi(),orders.getNote(),orders.getHinhThucMuaHang(),orders.getTinhTrang(),orders.getTongTien(),orders.getMaHoaDon(),orders.getThoiGianDatHang(),orders.getThoiGianGiaoHangDuKien());
    }
    //Update
    @Override
    public void update(UsersOrdersDTO orders) {
        String sql = "UPDATE orders SET username = ?, diaChi = ?, note = ?, hinhThucMuaHang = ?, tinhTrang = ?, tongTien = ?, thoiGianDatHang = ?, thoiGianGiaoDuKien = ? WHERE maHoaDon = ?";
        jdbcTemplate.update(sql, orders.getUsername(),orders.getDiaChi(),orders.getNote(),orders.getHinhThucMuaHang(),orders.getTinhTrang(),orders.getTongTien(),orders.getThoiGianDatHang(),orders.getThoiGianGiaoHangDuKien(),orders.getMaHoaDon());
      }
    //Delete
    @Override
    public void delete(String maHoaDon) {
        String sql = "DELETE FROM orders WHERE maHoaDon = ?";
        jdbcTemplate.update(sql, maHoaDon);
      }

}
