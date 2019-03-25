package dao;

import java.util.List;

import vo.HawaiiVo;

public interface HawaiiDao {
	
	List<HawaiiVo> selectList(int hw_idx);
	
	HawaiiVo hawaiiSelectOne(String rand_name);
	

}
