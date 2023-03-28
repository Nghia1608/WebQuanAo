package webquanao.Service;

import java.util.List;

import webquanao.DTO.CartsDTO;
import webquanao.DTO.ProductsDetailsDTO;

public interface ICartsService {
	
	void create(CartsDTO carts);
	void update(CartsDTO carts);
	void delete(String cartsID);

	List<CartsDTO> GetCarts(String username);		
}
