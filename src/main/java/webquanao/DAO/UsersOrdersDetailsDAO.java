package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.CartsBLL;
import webquanao.BLL.UsersOrdersDetailsBLL;
import webquanao.DTO.CartsDTO;
import webquanao.DTO.UsersOrdersDetailsDTO;
import webquanao.Service.IUsersOrdersDetails;

@Repository
public class UsersOrdersDetailsDAO implements IUsersOrdersDetails{
	@Autowired
	JdbcTemplate jdbcTemplate;
	//Get All
	@Override
	public List<UsersOrdersDetailsDTO> getUsersOrdersDetails(String maHoaDon){
//		String sql = "SELECT DISTINCT p.tenSanPham,pd.size,pd.giaTienBanRa,uod.soLuong,uod.usersordersdetailsID,uod.productDetailsID,uod.maHoaDon\r\n"
//				+ "FROM product p,productdetails pd,usersordersdetails uod\r\n"
//				+ "WHERE uod.maHoaDon = ? AND p.productID = pd.productID AND pd.productDetailsID = uod.productDetailsID\r\n"
//				+ "GROUP BY p.tenSanPham,pd.size,pd.giaTienBanRa,uod.soLuong,uod.usersordersdetailsID,uod.productDetailsID";
//		List<UsersOrdersDetailsDTO> list = jdbcTemplate.query(sql, new Object[]{maHoaDon}, new UsersOrdersDetailsBLL());
//		list = jdbcTemplate.query(sql,new UsersOrdersDetailsBLL());
//		return list;
		String sql = "SELECT DISTINCT p.tenSanPham,pd.size,pd.giaTienBanRa,uod.soLuong,uod.usersordersdetailsID,uod.productDetailsID,uod.maHoaDon\r\n"
				+ "FROM product p,productdetails pd,usersordersdetails uod\r\n"
				+ "WHERE uod.maHoaDon = ? AND p.productID = pd.productID AND pd.productDetailsID = uod.productDetailsID\r\n"
				+ "GROUP BY p.tenSanPham,pd.size,pd.giaTienBanRa,uod.soLuong,uod.usersordersdetailsID,uod.productDetailsID";
			List<UsersOrdersDetailsDTO> list = jdbcTemplate.query(sql, new Object[]{maHoaDon}, new UsersOrdersDetailsBLL());
			return list;

	}

    //Create new
    @Override
    public void create(String usersordersdetailsID,String productDetailsID,int soLuong,String maHoaDon) {
        String sql = "INSERT INTO usersordersdetails (usersordersdetailsID,productDetailsID,soLuong,maHoaDon) VALUES(?,?,?,?)";
        jdbcTemplate.update(sql, usersordersdetailsID,productDetailsID,soLuong,maHoaDon);
    }
    //Update
    @Override
    public void update(UsersOrdersDetailsDTO ordersDetails) {
        String sql = "UPDATE usersordersdetails SET productDetailsID = ?, soLuong = ?, maHoaDon = ? WHERE usersordersdetailsID = ?";
        jdbcTemplate.update(sql, ordersDetails.getProductDetailsID(),ordersDetails.getSoLuong(),ordersDetails.getMaHoaDon(),ordersDetails.getUsersordersdetailsID());
      }
    //Delete
    @Override
    public void delete(String ordersDetailsID) {
        String sql = "DELETE FROM usersordersdetails WHERE maHoaDon = ?";
        jdbcTemplate.update(sql, ordersDetailsID);
      }
}
