package webquanao.Service;

import java.util.List;

import webquanao.DTO.UsersOrdersDetailsDTO;

public interface IUsersOrdersDetails {
	
	List<UsersOrdersDetailsDTO> getUsersOrdersDetails(String ordersID);
	
	void create(String usersordersdetailsID,String productDetailsID,int soLuong,String maHoaDon);
	
	void update(UsersOrdersDetailsDTO ordersDetails);
	
	void delete(String ordersDetailsID);
}
