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
	

	@RequestMapping("/contact")
	public String Contact() {		
		return "user/contact";
	}


    //
	@RequestMapping("/")
	public ModelAndView HomeUser() {	
		ModelAndView mv =new ModelAndView("user/home");
		mv.addObject("product",productsDAO.getProducts());
		return mv;		
	}
}
