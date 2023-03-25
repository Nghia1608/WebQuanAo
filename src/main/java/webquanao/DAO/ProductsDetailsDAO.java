package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsDetailsBLL;
import webquanao.DTO.ProductsDTO;
import webquanao.DTO.ProductsDetailsDTO;
import webquanao.Service.IProductDetailService;

@Repository
public class ProductsDetailsDAO implements IProductDetailService{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	//Get Product Detail By ProductID
    @Override
	public List<ProductsDetailsDTO> getProductsDetails(String productDetailID){
		String sql = "SELECT * FROM productdetails WHERE productID = ?";
        List<ProductsDetailsDTO> products =  jdbcTemplate.query(sql, new Object[]{productDetailID}, new ProductsDetailsBLL());
		return products;
	}
    //Create new
    @Override
    public void create(ProductsDetailsDTO productDetail) {
        String sql = "INSERT INTO productdetails (productDetailsID,giaTienBanRa,soLuongCon,tinhTrang,productID,size) VALUES(?,?,?,?,?,?)";
        jdbcTemplate.update(sql, productDetail.getProductDetailsID(),productDetail.getGiaTienBanRa(),productDetail.getSoLuongCon(),productDetail.getTinhTrang(),productDetail.getProductID(),productDetail.getSize());
    }
    //Update
    @Override
    public void update(ProductsDetailsDTO productDetail) {
        String sql = "UPDATE productdetails SET productDetailsID = ?,giaTienBanRa = ?,soLuongCon = ?,tinhTrang = ?,productID = ?,size = ? WHERE productID = ?";
        jdbcTemplate.update(sql, productDetail.getProductDetailsID(),productDetail.getGiaTienBanRa(),productDetail.getSoLuongCon(),productDetail.getTinhTrang(),productDetail.getProductID(),productDetail.getSize());
      }
    //Delete
    @Override
    public void delete(String productDetailID) {
        String sql = "DELETE FROM productdetails WHERE productDetailsID = ?";
        jdbcTemplate.update(sql, productDetailID);
      }	
}
