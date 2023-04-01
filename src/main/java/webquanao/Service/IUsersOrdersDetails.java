package webquanao.Service;

import java.util.List;

import webquanao.DTO.UsersOrdersDetailsDTO;

public interface IUsersOrdersDetails {
	
	List<UsersOrdersDetailsDTO> getUsersOrdersDetails(String ordersID);
	
	void create(UsersOrdersDetailsDTO ordersDetails);
	
	void update(UsersOrdersDetailsDTO ordersDetails);
	
	void delete(String ordersDetailsID);
}
