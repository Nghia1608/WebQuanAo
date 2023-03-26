package webquanao.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webquanao.BLL.ProductsBLL;
import webquanao.BLL.ProductsDetailsBLL;
import webquanao.BLL.UsersBLL;
import webquanao.DTO.ProductsDTO;
import webquanao.DTO.ProductsDetailsDTO;
import webquanao.DTO.UsersDTO;
import webquanao.Service.IProductService;
import webquanao.Service.IUsersService;

@Repository
public class ProductsDAO implements IProductService{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	//Get All
	@Override
	public List<ProductsDTO> getProducts(){
		List<ProductsDTO> list = new ArrayList<ProductsDTO>();
		String sql = "SELECT * FROM product";
		list = jdbcTemplate.query(sql,new ProductsBLL());
		return list;
	}
	//Get by ID
    @Override
    public ProductsDTO findProductByID(String productID) {
        String sql = "SELECT * FROM product WHERE productID = ?";
        List<ProductsDTO> products = jdbcTemplate.query(sql, new Object[]{productID}, new ProductsBLL());
        return products.isEmpty() ? null : products.get(0);
    }
    //Create new
    @Override
    public void create(ProductsDTO product) {
        String sql = "INSERT INTO product (productID,tenSanPham,image,moTa,tinhTrang,maLoai,image1,image2,image3) VALUES(?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, product.getProductID(),product.getTenSanPham(),product.getImage(),product.getMoTa(),product.getTinhTrang(),product.getMaLoai(),product.getImage1(),product.getImage2(),product.getImage3());
    }
    //Update
    @Override
    public void update(ProductsDTO product) {
        String sql = "UPDATE product SET tenSanPham = ?, image = ?, moTa = ?, tinhTrang = ?, maLoai = ?, image1 = ?, image2 = ?, image3 = ? WHERE productID = ?";
        jdbcTemplate.update(sql, product.getTenSanPham(),product.getImage(),product.getMoTa(),product.getTinhTrang(),product.getMaLoai(),product.getImage1(),product.getImage2(),product.getImage3(),product.getProductID());
      }
    //Delete
    @Override
    public void delete(String productID) {
        String sql = "DELETE FROM product WHERE productID = ?";
        jdbcTemplate.update(sql, productID);
      }


}
