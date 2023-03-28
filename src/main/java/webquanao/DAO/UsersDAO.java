package webquanao.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.tree.RowMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsBLL;
import webquanao.BLL.UsersBLL;
import webquanao.DTO.ProductsDTO;
import webquanao.DTO.UsersDTO;
import webquanao.Service.IUsersService;
@Repository
public class UsersDAO implements IUsersService{
	@Autowired
	JdbcTemplate jdbcTemplate;

	//Get All
	@Override
	public List<UsersDTO> getUsers(){
		List<UsersDTO> list = new ArrayList<UsersDTO>();
		String sql = "SELECT * FROM users";
		list = jdbcTemplate.query(sql,new UsersBLL());
		return list;
	}

    @Override
    public UsersDTO findByUsername(String username) {
        String sql = "SELECT * FROM users WHERE username = ?";
        List<UsersDTO> users =  jdbcTemplate.query(sql, new Object[]{username}, new UsersBLL());
        if(users.isEmpty()) {
            return null;
          } else {
            return users.get(0);
          }
    }
    @Override
    public void create(UsersDTO user) {
        String sql = "INSERT INTO users (username,password,email,hoTen,sdt,quyen,diaChi,trangThai) VALUES(?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, user.getUsername(),user.getPassword(),user.getEmail(),user.getHoTen(), user.getSdt(),"Khach",user.getDiaChi(),"Đang hoạt động");
    }
    @Override
    public void update(UsersDTO user) {
        String sql = "UPDATE users SET password = ?, email = ?,hoTen = ?, sdt = ?, quyen = ?,diaChi = ?, trangThai = ? WHERE username = ?";
        jdbcTemplate.update(sql, user.getPassword(), user.getEmail(), user.getHoTen(),user.getSdt(),"Khach",user.getDiaChi(),user.getTrangThai(),user.getUsername());
      }
    @Override
    public void delete(String username) {
        String sql = "DELETE FROM users WHERE username = ?";
        jdbcTemplate.update(sql, username);
      }


}
