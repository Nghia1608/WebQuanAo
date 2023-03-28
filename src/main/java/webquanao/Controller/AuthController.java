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
@RequestMapping("/auth")
public class AuthController {
	@Autowired
	ProductsDAO productsDAO;
	@Autowired
	ProductsDetailsDAO productsDetailsDAO;
    private UsersDAO userDao;

    @Autowired
    public void setUserDao(UsersDAO userDao) {
        this.userDao = userDao;
    }
    
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new UsersDTO());
        return "auth/login";
    }
    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, HttpSession session) {
        UsersDTO user = userDao.findByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
        	session.setAttribute("user", user);
            System.out.println("thanh cong");
            return "redirect:/";
        } else {
        	System.out.println("that bai");
            return "auth/login";
        }
    }

	@RequestMapping("/register")
	public String UserRegister() {		
		return "auth/register";
	}

    @PostMapping("/register")
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
    
    @PostMapping("/logout")
    public String logout(@RequestParam("user") String user, HttpSession session) {
        if (user != null) {
        	session.removeAttribute(user);
            return "redirect:/";
        } else {
        	System.out.println("that bai");
            return "auth/login";
        }
    }

}
