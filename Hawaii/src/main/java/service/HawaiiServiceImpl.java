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

		// 섬에 대한 정보를 저장할 map
		Map map = new HashMap();

		// 선택한 섬 1개의 정보를 얻어온다
		HawaiiVo vo = hawaiiDao.hawaiiSelectOne(rand_name);

		// 음식점,활동,문화,상세정보를 가져올 섬의 idx값
		int ha_idx = vo.getHw_idx();

		// 섬의 음식점정보
		List food_list = foodDao.selectList(ha_idx);

		// 섬의 활동정보
		List act_list = actDao.selectList(ha_idx);

		// 섬의 문화정보
		List tour_list = tourDao.selectList(ha_idx);
		
		// 섬의 상세정보
		List info_list = infoDao.selectList(ha_idx);

		// map으로 포장하여 controller로 return
		map.put("food_list", food_list);
		map.put("act_list", act_list);
		map.put("tour_list", tour_list);

		return map;
	}

}
