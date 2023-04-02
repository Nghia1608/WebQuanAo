package webquanao.Service;

import java.util.List;

import webquanao.DTO.ProductsDetailsDTO;

public interface IProductDetailService {
	List<ProductsDetailsDTO> getProductsDetails(String productID);
	ProductsDetailsDTO findProductDetailByID(String productDetailsID);
	void create(ProductsDetailsDTO productDetail);
	void update(ProductsDetailsDTO productDetail);
	void delete(String productDetailID);
	void updateProductsDetailsWhenOrder(int soLuong,String productDetailsID);
}
