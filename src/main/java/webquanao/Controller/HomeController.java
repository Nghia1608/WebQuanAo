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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webquanao.DAO.ProductsDAO;
import webquanao.DAO.UsersDAO;
import webquanao.DTO.ProductsDTO;
import webquanao.DTO.UsersDTO;

@Controller
public class HomeController {
	//Admin
	@Autowired
	ProductsDAO productsDAO;	
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
            userDao.register(user);
        	System.out.println("Thanh cong");
            return "auth/login";
        }
    }
	
	@RequestMapping("/")
	public ModelAndView HomeUser() {	
		ModelAndView mv =new ModelAndView("user/home");
		mv.addObject("product",productsDAO.GetDataSlide());
		return mv;		
	}
	@RequestMapping("/contact")
	public String Contact() {		
		return "user/contact";
	}
	//Product
	@RequestMapping(value = {"/product/{productID}"})
	public ModelAndView ProductDetail(@PathVariable String productID) {	
		
		ModelAndView mv =new ModelAndView("product/productDetail");
		mv.addObject("product",productsDAO.findByID(productID));
		mv.addObject("productDetail",productsDAO.GetDataDetailSlide(productID));
		return mv;		
	}

}
