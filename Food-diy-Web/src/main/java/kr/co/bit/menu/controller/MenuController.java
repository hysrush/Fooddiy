package kr.co.bit.menu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.community.vo.NoticeBoardVO;
import kr.co.bit.menu.service.MenuService;
import kr.co.bit.menu.vo.MenuVO;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	// <menu 컨트롤러>
	// menu 전체보기
	@RequestMapping("/menuAll.do")
	public ModelAndView listAll() {
		
		List<MenuVO> menuList = menuService.selectAllMenu();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("menu/menuList");
		//addObject : key와 value를 담아 보내는 메서드
		mav.addObject("menuList", menuList);
		
		return mav;		
	}
	// menu 새 글쓰기 폼
	@RequestMapping(value="/menuWrite.do", method=RequestMethod.GET)
	public String writeForm(Model model) {
		// Form에서 가져온 Data를 MenuVO 객체형태로 저장
		MenuVO menuVO = new MenuVO();
		// 공유영역에 등록
		model.addAttribute("manuVO", menuVO);
		return "menu/menuWrite";
	}
	// menu 새 글쓰기
	@RequestMapping(value="/menuWrite.do", method=RequestMethod.POST)
	public String write(@Valid MenuVO menuVO, BindingResult result) {
		if(result.hasErrors()) {
			// 에러일때 true => writeForm으로
			return "menu/menuWrite";
		}
		// menu 새 글 등록
		menuService.insertMenu(menuVO);
		
		return "redirect:/menu/menuList";
	}
	// menu 상세내용 조회
	// ex) menu/menuDetail.do?no=1
	@RequestMapping(value="/menuDetail.do", method=RequestMethod.GET)
	public ModelAndView detail(@RequestParam("no") int no, HttpSession session) {		
		
		MenuVO menuDetailVO = menuService.selectOneMenu(no);
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("menu/menuDetail");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("menuDetailVO", menuDetailVO);
		
		return mav;
	}
	
}
