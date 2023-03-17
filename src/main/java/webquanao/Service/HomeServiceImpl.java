package webquanao.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webquanao.DAO.*;
import webquanao.DTO.*;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private ProductsDAO ProductsDAO;
	
	public List<ProductsDTO> GetDataSlide() {
		return ProductsDAO.GetDataSlide();
	}
}
