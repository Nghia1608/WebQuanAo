package webquanao.Service;

import java.util.List;

import webquanao.DTO.CartsDTO;
import webquanao.DTO.ProductsDetailsDTO;

public interface ICartsService {
	
	void create(CartsDTO carts);
	void update(CartsDTO carts);
	void delete(String cartsID);

	List<CartsDTO> GetCarts(String username);
	CartsDTO checkProductInCart(String username,String productdetails);		
	void updateCartWhenAddProduct(String username,String productDetailsID,int soLuong,int tongTien);	
	void updateCartInCartPage(String cartsID,int soLuong,int tongTien);
	CartsDTO getCartsByID(String cartsID);
	void deleteFromOrder(String username, String productDetailsID);
}
