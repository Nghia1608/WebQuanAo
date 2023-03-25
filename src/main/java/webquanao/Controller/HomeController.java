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
public class HomeController {
	//Admin
	@Autowired
	ProductsDAO productsDAO;
	@Autowired
	ProductsDetailsDAO productsDetailsDAO;
    private UsersDAO userDao;

    @Autowired
    public void setUserDao(UsersDAO userDao) {
        this.userDao = userDao;
    }

	@RequestMapping("/admin")
	public String Admin() {		
		return "admin/dashboard";
	}

    @GetMapping("/auth/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new UsersDTO());
        return "auth/login";
    }
    @PostMapping("/auth/login")
    public String login(@RequestParam String username, @RequestParam String password, HttpSession session) {
        UsersDTO user = userDao.findByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("user", user);
            System.out.println("thanh cong");
            return "redirect:/admin";
        } else {
        	System.out.println("that bai");
            return "auth/login";
        }
    }

	@RequestMapping("/auth/register")
	public String UserRegister() {		
		return "auth/register";
	}

    @PostMapping("/auth/register")
    public String register(@ModelAttribute("user") UsersDTO user,@RequestParam String username)
    		 {
        UsersDTO userExist = userDao.findByUsername(username);
        if (userExist!=null) {
            System.out.println("Trung username");
            return "redirect:/auth/register";
        } else {
            userDao.create(user);
        	System.out.println("Thanh cong");
            return "auth/login";
        }
    }
	

	@RequestMapping("/contact")
	public String Contact() {		
		return "user/contact";
	}
	//Product
	//Show san pham
	@RequestMapping(value = {"/product/{productID}"})
	public ModelAndView ShowDetailProduct(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/show");
		mv.addObject("product",productsDAO.findProductByID(productID));
		mv.addObject("productDetail",productsDetailsDAO.getProductsDetails(productID));
		return mv;		
	}
	//Danh sach san pham
	@RequestMapping("/product/storedProducts")
	public ModelAndView storedProducts() {		
		ModelAndView mv =new ModelAndView("product/storedProducts");
		mv.addObject("product",productsDAO.getProducts());
		return mv;	
	}
	//Them moi san pham
	@RequestMapping("/product/create")
	public String Create() {		
		return "/product/create";
	}
    @PostMapping("/product/create")
    public String Create(@ModelAttribute("product") ProductsDTO product,
    		@RequestParam String productID)
    		 {
        List<ProductsDTO> productExist = productsDAO.findProductByID(productID);
        if (productExist.size()!=0) {
            System.out.println("Trung ma san pham");
            return "redirect:/product/create";
        } else {
        	productsDAO.create(product);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    //Sua san pham
	@RequestMapping(value = {"/product/{productID}/edit"})
	public ModelAndView EditProduct(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/edit");
		mv.addObject("product",productsDAO.findProductByID(productID));
		return mv;		
	}
    @PostMapping(value = {"/product/{productID}/edit"})
    public String EditProduct(@ModelAttribute("product") ProductsDTO product,
    		@RequestParam String productID)
    		 {
        List<ProductsDTO> productExist = productsDAO.findProductByID(productID);
        if (productExist.size()==0) {
            System.out.println("sản phẩm k tồn tại");
            return "redirect:/product/storedProducts";
        } else {
        	productsDAO.update(product);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    //Xoa san pham
    @RequestMapping(value = "/product/{productID}/delete", method = RequestMethod.POST)
    public String DeleteProduct(@PathVariable("productID") String productID)
    		 {
        List<ProductsDTO> productExist = productsDAO.findProductByID(productID);
        if (productExist.size()==0) {
            System.out.println("sản phẩm k tồn tại");
            return "redirect:/product/storedProducts";
        } else {
        	productsDAO.delete(productID);
        	System.out.println("Thanh cong");
            return "redirect:/product/storedProducts";
        }
    }
    //Product-Detail
	//Chi tiet san pham theo san pham
	@RequestMapping(value = {"/product/{productID}/detail"})
	public ModelAndView ProductDetailList(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/detail");
		mv.addObject("product",productsDAO.findProductByID(productID));
		mv.addObject("productDetail",productsDetailsDAO.getProductsDetails(productID));
		return mv;		
	}
	//Them chi tiet san pham
	@RequestMapping(value = "/product/{productID}/createDetail", method = RequestMethod.GET)
	public ModelAndView CreateDetailProduct(@PathVariable("productID") String productID) {			
		ModelAndView mv =new ModelAndView("product/createDetail");
		mv.addObject("product",productsDAO.findProductByID(productID));
		return mv;		
	}	
    @RequestMapping(value = "/product/{productID}/createDetail", method = RequestMethod.POST)
    public String CreateDetailProduct(@ModelAttribute("product") ProductsDetailsDTO productDetail,
    		@RequestParam String productID)
    		 {
    	System.out.println("giaTienBanRa: " + productDetail.getGiaTienBanRa());
        	productsDetailsDAO.create(productDetail);
        	System.out.println("Thanh cong");
            return "redirect:/product/{productID}/detail";
    }

	@RequestMapping("/")
	public ModelAndView HomeUser() {	
		ModelAndView mv =new ModelAndView("user/home");
		mv.addObject("product",productsDAO.getProducts());
		return mv;		
	}
}
