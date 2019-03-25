package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.HawaiiVo;
import vo.InfoVo;

public class InfoDaoImpl implements InfoDao {
	
	SqlSession sqlSession;
	
	

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List selectList(int hw_idx) {
		// TODO Auto-generated method stub
		
		List<HawaiiVo> list = null;
		
		list = sqlSession.selectList("info.info_list", hw_idx);
		
		return list;
	}

	@Override
	public InfoVo selectOne(int in_idx) {
		// TODO Auto-generated method stub
		
		InfoVo vo = null;
		
		vo = sqlSession.selectOne("info.info_one",in_idx);
		
		return vo;
	}

}
