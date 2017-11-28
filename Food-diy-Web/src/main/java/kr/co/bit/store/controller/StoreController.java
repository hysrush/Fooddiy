package kr.co.bit.store.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.vo.CityVO;
import kr.co.bit.event.vo.EventBoardVO;
import kr.co.bit.event.vo.StoreVO;
import kr.co.bit.service.StoreService;

@RequestMapping("/store")
@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	
	
	@RequestMapping("findStore.do")
	public ModelAndView list() {
		List<CityVO> cityList = storeService.selectCity();
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("store/FindStore");
		mav.addObject("cityList", cityList);
		
		System.out.println(cityList);
		
		return mav;
		
			
	}
	
	
	
	
	@RequestMapping("myStore.do")
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
			List locationList = storeService.selectLocation(sido);

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

			List<StoreVO> storeList = storeService.selectStoreList(gugun);

			for (int i = 0; i < storeList.size(); i++) {
				System.out.println(storeList.get(i).toString());
			}

			jsonObj.put("result", true);
			jsonObj.put("storeList", storeList);

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
		
	
	

}
