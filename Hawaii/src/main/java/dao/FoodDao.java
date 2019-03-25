package dao;

import java.util.List;

import vo.FoodVo;

public interface FoodDao {
	
	List selectList(int hw_idx);
	
	FoodVo selectOne(int hf_idx);

}
