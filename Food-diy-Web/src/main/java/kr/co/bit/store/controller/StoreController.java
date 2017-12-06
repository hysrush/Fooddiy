package kr.co.bit.store.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.service.EventService;
import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.event.vo.locationVO;
import kr.co.bit.menu.vo.CartVO;
import kr.co.bit.service.StoreService;
import kr.co.bit.user.vo.UserVO;

@RequestMapping("/store")
@SessionAttributes("cartVO")
@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private EventService eventService;
	
	
	//메뉴선택 -> 지점선택
	@RequestMapping(value = "/findStore.do", method=RequestMethod.POST)
	public ModelAndView findStore(HttpSession session, String name, String price, String size, String pic) {

		UserVO user = (UserVO)session.getAttribute("loginVO");		
		String id = user.getId();
		ModelAndView mav = new ModelAndView();
		
		
		//메뉴선택 단계에서 받아온 정보를 cartVO에 담아준다.
		CartVO cartVO = new CartVO();
		cartVO.setName(name);
		cartVO.setPrice(price);
		cartVO.setSize(size);
		cartVO.setPic(pic);
		cartVO.setId(id);

		//SessionAttributes 통해 세션에 등록
		mav.addObject("cartVO", cartVO);
				
		//도시정보를 불러온다.
		List<CityVO> cityList = storeService.selectCity();
		mav.addObject("cityList", cityList);
		
		mav.setViewName("store/FindStore");
				
		return mav;
	}
	
	// 장바구니 -> 지점변경
	@RequestMapping(value = "/findStore.do", method=RequestMethod.GET)
	public ModelAndView changeStore() {
		List<CityVO> cityList = storeService.selectCity();
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("store/FindStore");
		mav.addObject("cityList", cityList);
		return mav;
	}
	
	
	
	
	@RequestMapping("/myStore.do")
	public ModelAndView myStorepage() {
		
		List<StoreVO> storeList = storeService.selectStoreAll();
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("store/MyStore");
		mav.addObject("storeList", storeList);
		
		System.out.println(storeList);
		
		return mav;
				
		
		
	}
	
	
	// 시정보 ajax
		@RequestMapping(value = "/test")
		public void chargeReqAjaxByToss(HttpServletRequest request, HttpServletResponse response,
				@RequestParam(value = "sido", defaultValue = "") String sido, Model model) throws Exception {

			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();

			// 1. Select 구 군 정보
			List<locationVO> locationList = storeService.selectLocation(sido);

			// 2. return value parse
			jsonObj.put("result", true);
			jsonObj.put("guList", locationList);

			response.getWriter().print(jsonObj.toString());

		}

		// 시,도 군,구 정보 ajax
		@RequestMapping(value = "/test3")
		public void gugunajax(HttpServletRequest request, HttpServletResponse response,
				@RequestParam(value = "gugun", defaultValue = "") String gugun, Model model) throws Exception {

			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();
			System.out.println(gugun);
			List<StoreVO> storeList = storeService.selectStoreList(gugun);
			String locationName = eventService.locationName(gugun);
			for (int i = 0; i < storeList.size(); i++) {
				System.out.println(storeList.get(i).toString());
			}
				
			jsonObj.put("result", true);
			jsonObj.put("storeList", storeList);
			jsonObj.put("locationName", locationName);
			response.getWriter().print(jsonObj.toString());
		}
		
		@RequestMapping(value="/test4")
		public void eventAjax(HttpServletRequest request
									, HttpServletResponse response
									, @RequestParam(value ="store", defaultValue ="") String store
									, Model model) throws Exception {
			
			System.out.println(store);
			List<StoreVO> storeList = storeService.selectStoreAddr(store); //store = 주소 
			
			System.out.println(storeList.toString());
			
			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();
			
		
			
			jsonObj.put("result", true);
			jsonObj.put("storeList", storeList);
			
			response.getWriter().print(jsonObj.toString());
			
		}
		
		@RequestMapping(value = "메뉴선택.do", method = RequestMethod.POST)
		public ModelAndView Session(HttpSession session, String storeName ) {

			UserVO user = (UserVO) session.getAttribute("loginVO");
			String id = null;
			if (user == null) {
				System.out.println("session은 널이다");
			} else {
				id = user.getId();
			}
			System.out.println(id);

			

			// Form에서 가져온 Data를 CartVO 객체형태로 저장
			StoreVO storeVO = new StoreVO();

			storeVO.setStoreName(storeName);
			
			session.setAttribute("storeVO", storeVO);

			

			ModelAndView mav = new ModelAndView();
			mav.setViewName("menu/select_ingredients");
			

			return mav;
		}

}
