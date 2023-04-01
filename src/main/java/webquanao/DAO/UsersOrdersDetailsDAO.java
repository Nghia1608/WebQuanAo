package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.UsersOrdersDetailsBLL;
import webquanao.DTO.UsersOrdersDetailsDTO;
import webquanao.Service.IUsersOrdersDetails;

@Repository
public class UsersOrdersDetailsDAO implements IUsersOrdersDetails{
	@Autowired
	JdbcTemplate jdbcTemplate;
	//Get All
	@Override
	public List<UsersOrdersDetailsDTO> getUsersOrdersDetails(String maHoaDon){
		List<UsersOrdersDetailsDTO> list = new ArrayList<UsersOrdersDetailsDTO>();
		String sql = "SELECT * FROM usersordersdetails WHERE maHoaDon= ?";
		list = jdbcTemplate.query(sql,new UsersOrdersDetailsBLL());
		return list;
	}

    //Create new
    @Override
    public void create(UsersOrdersDetailsDTO ordersDetails) {
        String sql = "INSERT INTO usersordersdetails (usersordersdetailsID,productDetailsID,soLuong,maHoaDon) VALUES(?,?,?,?)";
        jdbcTemplate.update(sql, ordersDetails.getUsersordersdetailsID(),ordersDetails.getProductDetailsID(),ordersDetails.getSoLuong(),ordersDetails.getMaHoaDon());
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
