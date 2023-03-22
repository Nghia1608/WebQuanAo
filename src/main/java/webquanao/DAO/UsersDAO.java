package webquanao.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.tree.RowMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.UsersBLL;
import webquanao.DTO.UsersDTO;
import webquanao.Service.IUsersService;
@Repository
public class UsersDAO implements IUsersService{
	@Autowired
	JdbcTemplate jdbcTemplate;

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
    public void register(UsersDTO user) {
        String sql = "INSERT INTO users (username,password,email,hoTen,sdt,quyen,diaChi,trangThai) VALUES(?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, user.getUsername(),user.getPassword(),user.getEmail(),user.getHoTen(), user.getSdt(),"Khach",user.getDiaChi(),"Đang hoạt động");
    }


}
