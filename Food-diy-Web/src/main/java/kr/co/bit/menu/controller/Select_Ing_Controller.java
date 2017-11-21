package kr.co.bit.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.menu.service.Select_Ing_Service;
import kr.co.bit.menu.vo.IngredientsVO;


@RequestMapping("/menu")
@Controller
public class Select_Ing_Controller {
	
	@Autowired
	private Select_Ing_Service service;
	
	
	@RequestMapping(value ="/select_ingredients.do", method = RequestMethod.GET)
	public ModelAndView Ing_listAll() {
		
		List<IngredientsVO> ingList = service.selectAllIng();
		
		
		
		
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("menu/select_ingredients");
		mav.addObject("ingList", ingList);
		
		System.out.println("됐당");
		
		for(int i = 0; i < ingList.size(); ++i) {
			System.out.println(i + "번 "  + ingList.get(i));
			
		}
		return mav;
	}
	
	@RequestMapping(value ="/select_ingredients.do", method = RequestMethod.POST)
	public ModelAndView Ing_cart() {
		
		return null;
	}
}
