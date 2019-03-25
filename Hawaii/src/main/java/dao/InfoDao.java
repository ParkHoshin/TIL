package dao;

import java.util.List;

import vo.InfoVo;

public interface InfoDao {
	
	List selectList(int hw_idx);
	
	InfoVo selectOne(int in_idx);

}
