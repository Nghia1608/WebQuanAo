package webquanao.Service;

import java.util.List;

import webquanao.DTO.ProductsDTO;
import webquanao.DTO.ProductsDetailsDTO;

public interface IProductService {
//	ProductsDTO findByID(String productID);
	public List<ProductsDTO> findByID(String productID);
	public List<ProductsDetailsDTO> GetDataDetailSlide(String productID);
//	void save(ProductsDTO product);
//	void update(ProductsDTO product);
//	void delete(String productID);

}
