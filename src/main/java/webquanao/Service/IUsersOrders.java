package webquanao.Service;

import java.util.List;

import webquanao.DTO.UsersOrdersDTO;

public interface IUsersOrders {
	List<UsersOrdersDTO> getAllUsersOrders();
	List<UsersOrdersDTO> getUsersOrders(String username);
	void create(UsersOrdersDTO usersOrders);
	void update(UsersOrdersDTO usersOrders);
	void delete(String maHoaDon);
	
	
}
