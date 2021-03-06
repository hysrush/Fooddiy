package kr.co.bit.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.service.EventService;
import kr.co.bit.service.StoreService;
import kr.co.bit.vo.CartStoreVO;
import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.CityVO;
import kr.co.bit.vo.StoreVO;
import kr.co.bit.vo.UserVO;
import kr.co.bit.vo.locationVO;

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
	public ModelAndView findStore(HttpSession session,@Valid CartVO cartVO, Model model) {

		
		UserVO user = (UserVO)session.getAttribute("loginVO");		
		String id = user.getId();
		ModelAndView mav = new ModelAndView();
		
		session.setAttribute("sessionCartVO", cartVO);
				
		//도시정보를 불러온다.
		List<CityVO> cityList = storeService.selectCity();
		mav.addObject("cityList", cityList);
		
		mav.setViewName("store/FindStore");
				
		return mav;
	}
	
	// 장바구니 -> 지점변경
	@RequestMapping(value = "/findStore.do", method=RequestMethod.GET)
	public ModelAndView changeStore(HttpSession session) {
		List<CityVO> cityList = storeService.selectCity();
		ModelAndView mav = new ModelAndView();
		
		CartStoreVO cartStoreVO = (CartStoreVO)session.getAttribute("cartStoreVO");
	
		
		mav.setViewName("store/FindStore");
		mav.addObject("cityList", cityList);
		return mav;
	}
	
	// 로그인 없이 지점선택
	@RequestMapping(value = "/findStore2.do", method=RequestMethod.GET)
	public ModelAndView goStore(Model model) {
				
		ModelAndView mav = new ModelAndView();
						
		//도시정보를 불러온다.
		List<CityVO> cityList = storeService.selectCity();
		mav.addObject("cityList", cityList);		
		mav.setViewName("store/FindStore");
				
		return mav;		
	}
	
	
	
	
	@RequestMapping("/myStore.do")
	public ModelAndView myStorepage() {
		
		List<StoreVO> storeList = storeService.selectStoreAll();
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("store/StoreTest");
		mav.addObject("storeList", storeList);
		
		
		return mav;
		
	}
	
	
	// 시정보 ajax
		@RequestMapping(value = "/test")
		public @ResponseBody List<locationVO> chargeReqAjaxByToss(HttpServletRequest request, HttpServletResponse response,
				@RequestParam(value = "sido", defaultValue = "") String sido, Model model) throws Exception {

			/*	
			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();*/

			// 1. Select 구 군 정보
			List<locationVO> locationList = storeService.selectLocation(sido);
			
			// 2. return value parse
			/*	
			jsonObj.put("result", true);
			jsonObj.put("guList", locationList);
		 	*/
			return locationList;

		}

		// 시,도 군,구 정보 ajax
		@RequestMapping(value = "/test3")
		public @ResponseBody Map<String, Object> gugunajax(HttpServletRequest request, HttpServletResponse response,
				@RequestParam(value = "gugun", defaultValue = "") String gugun, Model model) throws Exception {
			
			/*
			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();*/
			//System.out.println(gugun);
			List<StoreVO> storeList = storeService.selectStoreList(gugun);
			String locationName = eventService.locationName(gugun);
			
			/*		
			jsonObj.put("result", true);
			jsonObj.put("storeList", storeList);
			jsonObj.put("locationName", locationName);
			*/
			
			Map<String, Object> m = new HashMap<>();
			m.put("storeList", storeList);
			m.put("locationName", locationName);
			
			return m;
		
		}
		
		@RequestMapping(value="/test4")
		public @ResponseBody List<StoreVO> eventAjax(HttpServletRequest request
									, HttpServletResponse response
									, @RequestParam(value ="store", defaultValue ="") String store
									, Model model) throws Exception {
			
			
			List<StoreVO> storeList = storeService.selectStoreAddr(store); //store = 주소 
			
			
			String addr = storeList.get(0).getStoreAddr();
			
			addr = addr.replaceAll(" ", ",");
			storeList.get(0).setStoreAddr(addr);
			
			/*response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();
			
		
			
			jsonObj.put("result", true);
			jsonObj.put("storeList", storeList);
			*/
			
			return storeList;
			
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
		
		// 매장 찾기
		@RequestMapping(value = "/findStore")
		public String find(Model model) {
					
			//도시정보를 불러온다.
			List<CityVO> cityList = storeService.selectCity();
			model.addAttribute("cityList", cityList);
			
			return "store/FindStore";
		}
		
		
		
		
		
		
		@RequestMapping(value = "findStoreU.do" ,method= {RequestMethod.POST, RequestMethod.GET} )
		public ModelAndView findStoreU() {
		
			ModelAndView mav = new ModelAndView();
			
			//도시정보를 불러온다.
			List<CityVO> cityList = storeService.selectCity();
			mav.addObject("cityList", cityList);
			mav.setViewName("store/findStoreU");
			
			return mav;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

}
