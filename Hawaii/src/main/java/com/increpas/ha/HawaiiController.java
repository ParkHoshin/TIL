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
		
		//������ �����Ͽ��� �� map�� �����Ͽ� ���ǿ� �����Ѵ�
		if(id != null) {
			if(name != null) {
				
				Map map = new HashMap();
				map.put("id", id);
				map.put("name", name);
				
				HttpSession session = request.getSession();
				session.setAttribute("user", map);
			}
		
		}
		
		//���� �������� �ʰų� ó�� �����Ͽ����� ��������
		if(land_name == null || land_name.isEmpty())
			land_name = "main";
		
		if(land_name != "main") {
			//������ ���� ����(������,Ȱ��,��ȭ)�� �����´�
			Map map = hawaiiService.selectMap(land_name);
			
			//request binding
			model.addAttribute("map", map);
		}
		
		
		
		//forward
		return VIEW_PATH + "hawaii.jsp";
	}
	
	//�α�����
	@RequestMapping("/hawaii/login_form.do")
	public String login_form() {

		return VIEW_PATH + "login_form.jsp";
	}
	
	//���̹��α��ν� �ʿ��� �ݹ�
	@RequestMapping("/hawaii/callback.do")
	public String callBack() {

		return VIEW_PATH  + "callback.jsp";
	}
	
	//�α׾ƿ�
	@RequestMapping("/hawaii/logout.do")
	public String logout() {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("user");

		return "redirect:list.do";
	}
	
}
