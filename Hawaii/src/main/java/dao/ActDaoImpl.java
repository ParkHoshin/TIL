package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ActVo;
import vo.HawaiiVo;

public class ActDaoImpl implements ActDao {
	
	SqlSession sqlSession;
	
	

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List selectList(int hw_idx) {
		// TODO Auto-generated method stub
		
		List<HawaiiVo> list =null;
		
		list = sqlSession.selectList("act.act_list",hw_idx);
		
		return list;
	}

	@Override
	public ActVo selectOne(int a_idx) {
		// TODO Auto-generated method stub
		
		ActVo vo = null;
		
		vo = sqlSession.selectOne("act.act_one",a_idx);
		
		return vo;
	}

}
