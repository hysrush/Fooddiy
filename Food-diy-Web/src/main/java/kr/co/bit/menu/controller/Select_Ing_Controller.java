package kr.co.bit.menu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		
		for(int i = 0; i < ingList.size(); ++i) {
			System.out.println(i + "번 "  + ingList.get(i));
			
		}
		return mav;
	}
	
	@RequestMapping(value ="/cart.do", method = RequestMethod.POST)
	public ModelAndView Add_cart(String bread, String cheese, String topping, String vegetable, String sauce) {
		
		System.out.println(bread);
		System.out.println(cheese);
		System.out.println(topping);
		System.out.println(vegetable);
		System.out.println(sauce);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/cart");
		
		return mav;
	}
}
