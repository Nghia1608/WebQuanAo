package webquanao.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import webquanao.DTO.ProductsDTO;

@Service
public interface IHomeService {
	@Autowired
	public List<ProductsDTO> GetDataSlide();

}
