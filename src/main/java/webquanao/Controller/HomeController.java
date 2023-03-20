package webquanao.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import webquanao.DAO.ProductsDAO;

@Controller
public class HomeController {
	//Admin
	@Autowired
	ProductsDAO productsDAO;
	
	@RequestMapping("/admin")
	public String IndexUser() {		
		return "admin/dashboard";
	}

	@RequestMapping("/auth/login")
	public String UserLogin() {		
		return "auth/login";
	}
	@RequestMapping("/auth/register")
	public String UserRegister() {		
		return "auth/register";
	}
	
	@RequestMapping("/")
	public ModelAndView HomeUser() {	
		ModelAndView mv =new ModelAndView("user/home");
		mv.addObject("product",productsDAO.GetDataSlide());
		return mv;
	}
}
