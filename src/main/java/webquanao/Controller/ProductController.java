package webquanao.Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import webquanao.DAO.*;
import webquanao.DAO.CartsDAO.RandomIDGenerator;
import webquanao.DTO.*;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductsDAO productsDAO;
	@Autowired
	ProductsDetailsDAO productsDetailsDAO;
	@Autowired
	UsersOrdersDAO usersOrdersDAO;
	@Autowired
	UsersOrdersDetailsDAO usersOrdersDetailsDAO;
	@Autowired
	CartsDAO cartsDAO;
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
    
    //Product to Cart
    //Add product to cart
    @RequestMapping(value = "/{username}/addCart", method = RequestMethod.POST)
    public String AddProductToCart(@ModelAttribute("cart") CartsDTO carts,
    		
    		@RequestParam String username,@RequestParam String productDetailsID,@RequestParam int soLuong
    		,@RequestParam int tongTien)
    		 {
    	CartsDTO productExitsInCart = cartsDAO.checkProductInCart(username,productDetailsID);
    	if(productExitsInCart!=null) {
    		cartsDAO.updateCartWhenAddProduct(username,productDetailsID,soLuong,tongTien);
        	System.out.println("Thanh cong");
            return "redirect:/user/{username}/cart";
    	}
    	else {
    		cartsDAO.create(carts);
        	System.out.println("Thanh cong");
            return "redirect:/user/{username}/cart";
    	}
    }
    //UPdate so luong - tong tien in cart
    @RequestMapping(value = "/{cartsID}/updateCart", method = RequestMethod.POST)
    public String UpdateProductToCart(@ModelAttribute("cart") CartsDTO carts,
            @PathVariable("cartsID") String cartsID,
            @ModelAttribute("username") String username,
            @RequestParam Map<String, String> params
            ) {
        int newSoLuongForUpdate = Integer.parseInt(params.get("soLuongForUpdate"+cartsID));
        int newTongTienForUpdate = Integer.parseInt(params.get("tongTienForUpdate" + cartsID));
        carts.setSoLuongForUpdate(newSoLuongForUpdate);
        carts.setTongTienForUpdate(newTongTienForUpdate);
        System.out.println(""+newSoLuongForUpdate+""+newTongTienForUpdate+""+cartsID);
		cartsDAO.updateCartInCartPage(cartsID,newSoLuongForUpdate,newTongTienForUpdate);
        
        return "redirect:/user/{username}/cart";
    }
    //xoa gio hang
    @RequestMapping(value = "/{cartsID}/deleteCart", method = RequestMethod.POST)
    public String DeleteProductCart(@ModelAttribute("cart") CartsDTO carts,
            @PathVariable("cartsID") String cartsID,@ModelAttribute("username") String username)
    		 {
    	cartsDAO.delete(cartsID);
    	return "redirect:/user/{username}/cart";

    }
    
    //Product to Order
    //Add product to order and order detail
    @RequestMapping(value = "/addOrder", method = RequestMethod.POST)
    public String AddProductToCart(
    		@ModelAttribute("cart") CartsDTO carts,
    		@ModelAttribute("usersorders") UsersOrdersDTO usersorders,
    		@ModelAttribute("usersordersdetails") UsersOrdersDetailsDTO usersordersdetails,
    		//
    		@RequestParam String username,
    		@RequestParam String diaChi,
    		@RequestParam String note,
    		@RequestParam String hinhThucMuaHang,
    		@RequestParam String tinhTrang,
    		@RequestParam int tongTienGioHang,
    		@RequestParam String maHoaDon,
    		@RequestParam String productDetailsID,
    		@RequestParam String checked,
    		@RequestParam String cartsID,
    		@RequestParam String soLuong)  {
    	//Get current date  time
    	Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    	//Get 3 day later
        Calendar cal = Calendar.getInstance();
        cal.setTime(timestamp);
        cal.add(Calendar.DAY_OF_MONTH, 3);
        Timestamp newTimestamp = new Timestamp(cal.getTimeInMillis());
        //add data to usersorders table
    	usersOrdersDAO.createOrder(username,diaChi,note,hinhThucMuaHang,tinhTrang,tongTienGioHang,maHoaDon,timestamp,newTimestamp);

        String[] ArrayProductDetailsID = productDetailsID.split(",");
        String[] ArrayChecked = checked.split(",");
        String[] ArraySoLuong = soLuong.split(",");
        String[] ArrayCartsID = cartsID.split(",");

        for (int i = 0; i < ArrayProductDetailsID.length; i++) {
        	if(ArrayChecked[i].equals("true")) {

            	//add data to usersordersdetails table
        		usersOrdersDetailsDAO.create(RandomIDGenerator.generateUniqueID(),ArrayProductDetailsID[i],Integer.parseInt(ArraySoLuong[i]),maHoaDon);
        		//delete data in cart
        		cartsDAO.delete(ArrayCartsID[i]);
        		//thay doi so luong con lai product detail
        		productsDetailsDAO.updateProductsDetailsWhenOrder(Integer.parseInt(ArraySoLuong[i]),ArrayProductDetailsID[i]);        		
        	}

        }
        return "redirect:/user/{username}/order";
    }
    public class RandomIDGenerator {
  	   public static String generateUniqueID() {
  	       UUID uuid = UUID.randomUUID();
  	       return (uuid.toString()).replace("-", "");
  	   }
  	}
}
