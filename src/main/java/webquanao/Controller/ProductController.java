package webquanao.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webquanao.DAO.ProductsDAO;
import webquanao.DAO.ProductsDetailsDAO;
import webquanao.DAO.UsersDAO;
import webquanao.DTO.ProductsDTO;
import webquanao.DTO.ProductsDetailsDTO;
import webquanao.DTO.UsersDTO;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductsDAO productsDAO;
	@Autowired
	ProductsDetailsDAO productsDetailsDAO;
    private UsersDAO userDao;

    @Autowired
    public void setUserDao(UsersDAO userDao) {
        this.userDao = userDao;
    }

	//Product
	//Show san pham
	@RequestMapping(value = {"/{productID}"})
	public ModelAndView ShowDetailProduct(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/show");
		mv.addObject("product",productsDAO.findProductByID(productID));
		mv.addObject("productDetail",productsDetailsDAO.getProductsDetails(productID));
		return mv;		
	}
	//Danh sach san pham
	@RequestMapping("/storedProducts")
	public ModelAndView storedProducts() {		
		ModelAndView mv =new ModelAndView("product/storedProducts");
		mv.addObject("product",productsDAO.getProducts());
		return mv;	
	}
	//Them moi san pham
	@RequestMapping("/create")
	public String Create() {		
		return "/product/create";
	}
    @PostMapping("/create")
    public String Create(@ModelAttribute("product") ProductsDTO product,
    		@RequestParam String productID)
    		 {
        ProductsDTO productExist = productsDAO.findProductByID(productID);
        if (productExist!=null) {
            System.out.println("Trung ma san pham");
            return "redirect:/product/create";
        } else {
        	productsDAO.create(product);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    //Sua san pham
	@RequestMapping(value = {"/{productID}/edit"})
	public ModelAndView EditProduct(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/edit");
		mv.addObject("product",productsDAO.findProductByID(productID));
		return mv;		
	}
    @PostMapping(value = {"/{productID}/edit"})
    public String EditProduct(@ModelAttribute("product") ProductsDTO product,
    		@RequestParam String productID)
    		 {
        ProductsDTO productExist = productsDAO.findProductByID(productID);
        if (productExist==null) {
            System.out.println("sản phẩm k tồn tại");
            return "redirect:/product/storedProducts";
        } else {
        	productsDAO.update(product);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    //Xoa san pham
    @RequestMapping(value = "/{productID}/delete", method = RequestMethod.POST)
    public String DeleteProduct(@PathVariable("productID") String productID)
    		 {
        ProductsDTO productExist = productsDAO.findProductByID(productID);
        if (productExist==null) {
            System.out.println("sản phẩm k tồn tại");
            return "redirect:/product/storedProducts";
        } else {
        	productsDAO.delete(productID);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }

    //Product-Detail  

	//Show danh sach chi tiet san pham theo san pham
	@RequestMapping(value = {"/{productID}/detail"})
	public ModelAndView ProductDetailList(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/detail");
		mv.addObject("product",productsDAO.findProductByID(productID));
		mv.addObject("productDetail",productsDetailsDAO.getProductsDetails(productID));
		return mv;		
	}
	//Them chi tiet san pham
	@RequestMapping(value = "/{productID}/createDetail", method = RequestMethod.GET)
	public ModelAndView CreateDetailProduct(@PathVariable("productID") String productID) {			
		ModelAndView mv =new ModelAndView("product/createDetail");
		mv.addObject("product",productsDAO.findProductByID(productID));
		return mv;		
	}	
    @RequestMapping(value = "/{productID}/createDetail", method = RequestMethod.POST)
    public String CreateDetailProduct(@ModelAttribute("product") ProductsDetailsDTO productDetail,
    		@RequestParam String productID)
    		 {
    	System.out.println("giaTienBanRa: " + productDetail.getGiaTienBanRa());
        	productsDetailsDAO.create(productDetail);
        	System.out.println("Thanh cong");
            return "redirect:/product/{productID}/detail";
    }
    //Sua chi tiet san pham
    @RequestMapping(value = "/{productDetailsID}/editDetail")
    public ModelAndView editProductDetail(@PathVariable String productDetailsID) {     
        ModelAndView mv = new ModelAndView("product/editDetail");
        ProductsDetailsDTO productDetail = productsDetailsDAO.findProductDetailByID(productDetailsID);
        ProductsDTO product = productsDAO.findProductByID(productDetail.getProductID());
        productDetail.setProduct(product);
        mv.addObject("productDetail", productDetail);
        return mv;
    }
    @PostMapping(value = {"/{productDetailID}/editDetail"})
    public String EditProductDetail(@ModelAttribute("productsDetail") ProductsDetailsDTO productDetail,
    		@RequestParam String productDetailsID)
    		 {
        ProductsDetailsDTO productExist = productsDetailsDAO.findProductDetailByID(productDetailsID);
        if (productExist==null) {
            System.out.println("sản phẩm k tồn tại");
            return "redirect:/product/storedProducts";
        } else {
        	productsDetailsDAO.update(productDetail);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    //Xoa chi tiet san pham
    @RequestMapping(value = "/{productDetailsID}/deleteDetail", method = RequestMethod.POST)
    public String DeleteProductDetail(@PathVariable("productDetailsID") String productDetailsID)
    		 {
        ProductsDetailsDTO productExist = productsDetailsDAO.findProductDetailByID(productDetailsID);
        if (productExist==null) {
            System.out.println("sản phẩm k tồn tại");
            return "redirect:/product/storedProducts";
        } else {
        	productsDetailsDAO.delete(productDetailsID);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    
}
