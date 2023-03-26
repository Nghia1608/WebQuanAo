package webquanao.Service;

import java.util.List;

import webquanao.DTO.ProductsDTO;

public interface IProductService {
	List<ProductsDTO> getProducts();
	ProductsDTO findProductByID(String productID);
	void create(ProductsDTO product);
	void update(ProductsDTO product);
	void delete(String productID);
	
	
}
