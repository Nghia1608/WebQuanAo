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


import webquanao.DAO.*;
import webquanao.DTO.*;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UsersOrdersDAO usersOrdersDAO;
	@Autowired
	UsersOrdersDetailsDAO usersOrdersDetailsDAO;
    private UsersDAO userDao;
    private CartsDAO cartsDao;
    private ProductsDetailsDAO productsDetailsDao;
    private ProductsDAO productsDao;
    
    @Autowired
    public void setUserDao(UsersDAO userDao) {
        this.userDao = userDao;
    }
    @Autowired
    public void setCartsDao(CartsDAO cartsDao) {
        this.cartsDao = cartsDao;
    }
    @Autowired
    public void setProductsDetaisDao(ProductsDetailsDAO productsDetailsDao) {
        this.productsDetailsDao = productsDetailsDao;
    }
    @Autowired
    public void setProductsDao(ProductsDAO productsDao) {
        this.productsDao = productsDao;
    }
	//Danh sach user
	@RequestMapping("/storedUsers")
	public ModelAndView ListUsers() {		
		ModelAndView mv =new ModelAndView("user/storedUsers");
		mv.addObject("user",userDao.getUsers());
		return mv;	
	}
	//Sua user
	@RequestMapping(value = {"/{username}/editUsers"})
	public ModelAndView EditUser(@PathVariable String username) {	
		
		ModelAndView mv =new ModelAndView("user/editUsers");
		mv.addObject("user",userDao.findByUsername(username));
		return mv;		
	}
    @PostMapping(value = {"/{username}/editUsers"})
    public String EditUser(@ModelAttribute("User") UsersDTO user,
    		@RequestParam String username)
    		 {
        UsersDTO UserExist = userDao.findByUsername(username);
        if (UserExist==null) {
            System.out.println("user k tồn tại");
            return "redirect:/user/storedUsers";
        } else {
        	userDao.update(user);
        	System.out.println("Thanh cong");
            return "redirect:/user/storedUsers";
        }
    }
	//Xoa user
    @RequestMapping(value = "/{username}/deleteUser", method = RequestMethod.POST)
    public String DeleteUser(@PathVariable("username") String username)
    		 {
        UsersDTO userExist = userDao.findByUsername(username);
        if (userExist==null) {
            System.out.println("user k tồn tại");
            return "redirect:/user/storedUsers";
        } else {
        	userDao.delete(username);
        	System.out.println("Thanh cong");
            return "redirect:/user/storedUsers";
        }
    }
    // Cart
	@RequestMapping("/{username}/cart")
	public ModelAndView ShowCart(@PathVariable String username) {		
		ModelAndView mv =new ModelAndView("user/cart");
		mv.addObject("carts",cartsDao.GetCarts(username));
		return mv;	
	}
	//Show order by user
	@RequestMapping(value = {"/{username}/order"})
	public ModelAndView ProductDetailList(@PathVariable String username) {	
		
		ModelAndView mv =new ModelAndView("user/order");
		mv.addObject("orders",usersOrdersDAO.getUsersOrders(username));
		return mv;		
	}

	//Show order detail by user
	@RequestMapping(value = {"/{maHoaDon}/orderDetail"})
	public ModelAndView OrderDetail(@PathVariable String maHoaDon) {	
		
		ModelAndView mv =new ModelAndView("user/orderDetail");
		mv.addObject("orders",usersOrdersDAO.getUsersOrdersByMaHoaDon(maHoaDon));
		mv.addObject("ordersDetails",usersOrdersDetailsDAO.getUsersOrdersDetails(maHoaDon));
		return mv;		
	}

}

