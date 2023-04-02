package webquanao.Service;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import webquanao.DTO.UsersOrdersDTO;

public interface IUsersOrders {
	List<UsersOrdersDTO> getAllUsersOrders();
	List<UsersOrdersDTO> getUsersOrders(String username);
	void update(UsersOrdersDTO usersOrders);

	void createOrder(String username,String diaChi,String note,String hinhThucMuaHang,
			String tinhTrang,int tongTien,String maHoaDon,Timestamp thoiGianDatHang,Timestamp thoiGianGiaoDuKien);
	List<UsersOrdersDTO> getUsersOrdersByMaHoaDon(String maHoaDon);
	
}
