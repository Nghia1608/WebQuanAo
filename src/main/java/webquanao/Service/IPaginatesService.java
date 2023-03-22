package webquanao.Service;

import org.springframework.stereotype.Service;
import webquanao.DTO.PaginatesDTO;
@Service
public interface IPaginatesService {
	public PaginatesDTO GetInfoPaginates(int totalData,int limit, int currentPage); 
}
