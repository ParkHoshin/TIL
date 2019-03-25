package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import dao.ActDao;
import dao.FoodDao;
import dao.HawaiiDao;
import dao.InfoDao;
import dao.TourDao;
import vo.HawaiiVo;

public class HawaiiServiceImpl implements HawaiiService {
	
	
	@Autowired
	ActDao actDao;
	@Autowired
	FoodDao foodDao;
	@Autowired
	HawaiiDao hawaiiDao;
	@Autowired
	InfoDao infoDao;
	@Autowired
	TourDao tourDao;

	public void setActDao(ActDao actDao) {
		this.actDao = actDao;
	}

	public void setFoodDao(FoodDao foodDao) {
		this.foodDao = foodDao;
	}

	public void setHawaiiDao(HawaiiDao hawaiiDao) {
		this.hawaiiDao = hawaiiDao;
	}

	public void setInfoDao(InfoDao infoDao) {
		this.infoDao = infoDao;
	}

	public void setTourDao(TourDao tourDao) {
		this.tourDao = tourDao;
	}

	@Override
	public Map selectMap(String rand_name) {
		// TODO Auto-generated method stub

		// ���� ���� ������ ������ map
		Map map = new HashMap();

		// ������ �� 1���� ������ ���´�
		HawaiiVo vo = hawaiiDao.hawaiiSelectOne(rand_name);

		// ������,Ȱ��,��ȭ,�������� ������ ���� idx��
		int ha_idx = vo.getHw_idx();

		// ���� ����������
		List food_list = foodDao.selectList(ha_idx);

		// ���� Ȱ������
		List act_list = actDao.selectList(ha_idx);

		// ���� ��ȭ����
		List tour_list = tourDao.selectList(ha_idx);
		
		// ���� ������
		List info_list = infoDao.selectList(ha_idx);

		// map���� �����Ͽ� controller�� return
		map.put("food_list", food_list);
		map.put("act_list", act_list);
		map.put("tour_list", tour_list);

		return map;
	}

}
