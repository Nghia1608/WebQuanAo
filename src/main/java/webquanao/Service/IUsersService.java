package webquanao.Service;

import java.util.List;

import webquanao.DTO.UsersDTO;

public interface IUsersService {
	
	UsersDTO findByUsername(String username);
	void register(UsersDTO user);
	void update(UsersDTO user);
	void delete(String username);
	
	List<UsersDTO> findAll();			
}
