package com.increpas.ha;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.HawaiiService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HawaiiController {
	
	public static final String VIEW_PATH = "/WEB-INF/views/hawaii/";
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HawaiiService hawaiiService;
	
	@RequestMapping("/hawaii/list.do")
	public String list(Model model, String name, String id, String land_name) {
		
		//유저가 접속하였을 시 map로 포장하여 세션에 저장한다
		if(id != null) {
			if(name != null) {
				
				Map map = new HashMap();
				map.put("id", id);
				map.put("name", name);
				
				HttpSession session = request.getSession();
				session.setAttribute("user", map);
			}
		
		}
		
		//섬을 선택하지 않거나 처음 실행하였을때 메인으로
		if(land_name == null || land_name.isEmpty())
			land_name = "main";
		
		if(land_name != "main") {
			//선택한 섬의 정보(음식점,활동,문화)를 가져온다
			Map map = hawaiiService.selectMap(land_name);
			
			//request binding
			model.addAttribute("map", map);
		}
		
		
		
		//forward
		return VIEW_PATH + "hawaii.jsp";
	}
	
	//로그인폼
	@RequestMapping("/hawaii/login_form.do")
	public String login_form() {

		return VIEW_PATH + "login_form.jsp";
	}
	
	//네이버로그인시 필요한 콜백
	@RequestMapping("/hawaii/callback.do")
	public String callBack() {

		return VIEW_PATH  + "callback.jsp";
	}
	
	//로그아웃
	@RequestMapping("/hawaii/logout.do")
	public String logout() {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("user");

		return "redirect:list.do";
	}
	
}
