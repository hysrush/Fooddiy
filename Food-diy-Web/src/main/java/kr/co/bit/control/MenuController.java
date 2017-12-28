package kr.co.bit.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.service.MenuService;
import kr.co.bit.service.SnsService;
import kr.co.bit.vo.CartVO;
import kr.co.bit.vo.MenuVO;
import kr.co.bit.vo.SnsBoardVO;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	@Autowired
	private SnsService snsService;	
	
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
	
	
	// menu 타입별 분류
	@RequestMapping(value="/menuList.do", method=RequestMethod.GET)
	public ModelAndView listType(@RequestParam(value="type", defaultValue="E") String type) {		
		
		List<MenuVO> menuList = null;
		
		if(type.equals("E")) {
			menuList = menuService.selectAllMenu();		
		}
		else {
			menuList = menuService.selectTypeMenu(type);			
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("menu/menuList");
		mav.addObject("menuList", menuList);
		/*mav.addObject("type", type);*/
		
		return mav;
		
	}
	
	
	
	// menu 새 글쓰기 폼
	@RequestMapping(value="/menuWrite.do", method=RequestMethod.GET)
	public String writeForm(Model model) {
		// Form에서 가져온 Data를 MenuVO 객체형태로 저장
		MenuVO menuVO = new MenuVO();
		// 공유영역에 등록
		model.addAttribute("menuVO", menuVO);
		return "menu/menuWriteForm";
	}	
	
	// menu 새 글쓰기
	@RequestMapping(value="/menuWrite.do", method=RequestMethod.POST)
	public String write(@Valid MenuVO menuVO
						, BindingResult result
						, @RequestParam(value="imgFileName") MultipartFile file
	)throws Exception {	
		
		System.out.println("시작");
		
					//1. fileName 설정 + eventVO에 fileName 저장
					String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\menu\\" + file.getOriginalFilename();
					String saveFileName = file.getOriginalFilename();
					
					menuVO.setImgFileName(saveFileName);
					
					System.out.println(fileName);
					System.out.println(saveFileName);
					
					//2. 경로에 이미지파일 저장
					byte[] bytes;
					bytes = file.getBytes();
					BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
					buffStream.write(bytes);
					buffStream.close();
					
					
					menuService.insertMenu(menuVO);
	
		// menuVO에 저장 
		return "redirect:/menu/menuAll.do";
	}	
	
	// menu 상세내용 조회
	// ex) menu/menuDetail.do?no=1&type='R'
	@RequestMapping(value="/menuDetail.do", method=RequestMethod.GET)
	public ModelAndView detail(@RequestParam("no") int no,
								@RequestParam("name") String name, HttpSession session, Model model) {
		System.out.println(name);
		MenuVO menuDetailVO = menuService.selectOneMenu(no);
		List<SnsBoardVO> hitList = snsService.selectHit(name);
		
		CartVO cartVO = new CartVO();
		/*session.setAttribute("cartVO", cartVO);*/
		model.addAttribute("cartVO", cartVO);		
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("menu/menuDetail");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("menuDetailVO", menuDetailVO);
		mav.addObject("hitList", hitList);
		
		return mav;
	}	
	
	
	// 좋아요 버튼눌렀을때 snsVO.like 값 1 씩 증가 
	@RequestMapping(value="/like")
	public void eventAjax(HttpServletRequest request
								, HttpServletResponse response
								, @RequestParam(value ="no", defaultValue ="") int no
								, Model model) throws Exception {	
		
		snsService.addLikeSns(no);
		SnsBoardVO snsVO = snsService.selectOne(no);
		
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonObj = new JSONObject();
		int like = snsVO.getLike();
	
		
		jsonObj.put("result", true);
		jsonObj.put("like", like);
		jsonObj.put("no", no);
		
		
		response.getWriter().print(jsonObj.toString());
		
	}
	
/*	// '주문하기'선택 후 매장화면으로	
	@RequestMapping(value="/findStore.do", method=RequestMethod.POST)
	public String Session(HttpSession session, String name, String price, String size, String pic) {
		
		UserVO user = (UserVO)session.getAttribute("loginVO");		
		String id = user.getId();
		
		// Form에서 가져온 Data를 CartVO 객체형태로 저장
		CartVO cartVO = new CartVO();
		
		cartVO.setName(name);
		cartVO.setPrice(price);
		cartVO.setSize(size);
		cartVO.setPic(pic);
		cartVO.setId(id);
	
		System.out.println(cartVO);
		
		
        StoreVO storeVO = (StoreVO)session.getAttribute("storeVO");
        if (storeVO == null) {  
        	return "/store/findStore";
        }
        else {
        	return "/menu/select_ingredients";
        }
		
		//ModelAndView  mav = new ModelAndView();
		//mav.setViewName("menu/select_ingredients");
		//mav.addObject("cartVO", cartVO);
		
		
		// return cartVO;				
	}
	
*/
	
	
}	

