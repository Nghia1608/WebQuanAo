package webquanao.Service;

import java.util.List;

import webquanao.DTO.CartsDTO;
import webquanao.DTO.UsersDTO;

public interface IUsersService {
	List<UsersDTO> getUsers();
	UsersDTO findByUsername(String username);
	
	void create(UsersDTO user);
	void update(UsersDTO user);
	void delete(String username);
	
		
}
