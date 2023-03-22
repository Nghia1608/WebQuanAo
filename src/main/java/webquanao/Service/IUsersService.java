package webquanao.Service;

import webquanao.DTO.UsersDTO;

public interface IUsersService {
	UsersDTO findByUsername(String username);
	void register(UsersDTO user);
}
