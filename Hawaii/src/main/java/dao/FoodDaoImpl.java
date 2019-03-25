package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.FoodVo;
import vo.HawaiiVo;

public class FoodDaoImpl implements FoodDao {
	
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public List selectList(int hw_idx) {
		// TODO Auto-generated method stub
		
		List<HawaiiVo> list = null;
		
		list = sqlSession.selectList("food.food_list", hw_idx);
		
		return list;
	}

	@Override
	public FoodVo selectOne(int hf_idx) {
		// TODO Auto-generated method stub
		
		FoodVo vo = null;
		
		vo = sqlSession.selectOne("Food.food_one",hf_idx);
		
		return vo;
	}

	

}
