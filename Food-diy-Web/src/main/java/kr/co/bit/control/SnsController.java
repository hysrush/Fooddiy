package kr.co.bit.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedList;
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

import kr.co.bit.event.vo.PagingVO;
import kr.co.bit.member.service.MemberOrderService;
import kr.co.bit.member.vo.DetailOrderVO;
import kr.co.bit.member.vo.MemberOrderVO;
import kr.co.bit.service.RepService;
import kr.co.bit.service.SnsService;
import kr.co.bit.user.vo.UserVO;
import kr.co.bit.vo.SnsBoardVO;
import kr.co.bit.vo.SnsRepVO;


@RequestMapping("/community")
//@RestController
@Controller
public class SnsController {

	@Autowired
	private SnsService snsService;
	@Autowired
	private RepService repService;
	@Autowired
	private MemberOrderService service;
	
	
	@RequestMapping(value ="/snsPage.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView paging(HttpServletRequest request
							, HttpServletResponse response
							, PagingVO paging) {
		
		
		List<SnsBoardVO> snsList = snsService.selectSns(paging);
		List<SnsBoardVO> hitList = snsService.selectHit();
		
		paging.setTotal(snsService.selectTotalPaging());
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("community/SNSBoard");
		
		mav.addObject("snsList" , snsList);
		mav.addObject("hitList" , hitList);
		
		mav.addObject("p",paging);
		
		
		return mav;
			
		
	}
	
	
	// 새글등록 폼으로 보내기
		@RequestMapping(value = "/snsWrite.do", method = RequestMethod.GET)
		public String writeForm(String id, HttpServletRequest request, HttpServletResponse response, Model model) {

			SnsBoardVO snsVO = new SnsBoardVO();
			List<MemberOrderVO> todayOrderList = service.selectAll(id);	
			
			for(int i = 0 ; i < todayOrderList.size(); ++i) {

				List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
				String menu = todayOrderList.get(i).getMenu();
				String [] menus = menu.split("\\/\\/");
				
				
				System.out.println("menus.length =  " + menus.length);
				
				for(int j = 0; j < menus.length; ++j) {
					DetailOrderVO vo = new DetailOrderVO();
					String [] oneMenu = menus[j].split("\\*");

					vo.setName(oneMenu[0]);
					vo.setBread(oneMenu[1]);
					vo.setCheese(oneMenu[2]);
					vo.setTopping(oneMenu[3]);
					vo.setVegetable(oneMenu[4]);
					vo.setSauce(oneMenu[5]);
					list.add(vo);
				}
				todayOrderList.get(i).setDetailOrderList(list);
				System.out.println(todayOrderList.get(i).getDetailOrderList());
			}	
			
			model.addAttribute("snsVO", snsVO);
			model.addAttribute("todayOrder", todayOrderList);

			return "community/SnsWriteForm";

		}

		// 새글 등록 하기
		@RequestMapping(value = "/snsWrite.do", method = RequestMethod.POST)
		public String write(@Valid SnsBoardVO snsVO, BindingResult result,
				@RequestParam(value = "fileName") MultipartFile file) throws Exception {

			System.out.println("시작");

			// 1. fileName 설정 + eventVO에 fileName 저장
			String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"
			+ file.getOriginalFilename();
			//String fileName = "C:\\Users\\user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"+ file.getOriginalFilename();
			
			String saveFileName = file.getOriginalFilename();

			
			snsVO.setFileName(saveFileName);

			System.out.println(fileName);
			System.out.println(saveFileName);
			System.out.println("들어가나");

			// 2. 경로에 이미지파일 저장
			byte[] bytes;
			bytes = file.getBytes();
			BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
			buffStream.write(bytes);
			buffStream.close();

			System.out.println("들어가나 2");

			// eventVO에 저장
			snsService.insert(snsVO);

			return "redirect:/community/snsPage.do";

		}
	
		@RequestMapping(value="/snsDetail.do", method=RequestMethod.GET)
		public ModelAndView detail(@RequestParam("no") int no
				, HttpSession session
				, PagingVO paging) {		
			
			SnsBoardVO snsVO = snsService.selectOne(no);
			paging.setNo(no);
			
			List<SnsRepVO> repList = repService.list(paging);
			
			ModelAndView mav = new ModelAndView();
			//setViewName : 어떤 페이지를 보여줄것인가
			mav.setViewName("community/SNSBoard-Modal");
			//addObject : key 와 value 를 담아 보내는 메서드 
			mav.addObject("snsVO", snsVO);
			mav.addObject("repList", repList);
			mav.addObject("p",paging);
			System.out.println(repList);
			//mav.addObject("repList", repList);
			
			return mav;
		}
		
		@RequestMapping(value="/snsModifyForm.do", method=RequestMethod.GET)
		public String ModifyForm(@RequestParam("no")int no, Model model) {

			
			SnsBoardVO snsVO = snsService.selectOne(no);

			model.addAttribute("snsVO", snsVO);

			System.out.println("1 : " + snsVO.toString());
			return "community/SnsEditForm";

		}
		
		
		
		// 수정 
				@RequestMapping(value="/snsModifyForm.do" , method=RequestMethod.POST)
				public String reWrite(@Valid SnsBoardVO snsVO, BindingResult result,
						@RequestParam(value = "fileName") MultipartFile file)throws Exception {
				
					
					String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"
							+ file.getOriginalFilename();
							//String fileName = "C:\\Users\\user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"+ file.getOriginalFilename();
							
							String saveFileName = file.getOriginalFilename();

							
							snsVO.setFileName(saveFileName);

							System.out.println(fileName);
							System.out.println(saveFileName);
							System.out.println("들어가나");

							// 2. 경로에 이미지파일 저장
							byte[] bytes;
							bytes = file.getBytes();
							BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
							buffStream.write(bytes);
							buffStream.close();
					
					
					
					
					
					//새 글로 수정
					System.out.println("2 : " + snsVO.toString());
					
					
					
					
					
					snsService.update(snsVO);
					System.out.println("3 : " + snsVO.toString());
					
					return "redirect:/community/snsPage.do";
			
					
				}
				
				
				
				
				@RequestMapping(value="/deleteSns.do")
				public String deleteEvent(@RequestParam("no")int no) {
					
					snsService.delete(no);
					
					
					return "redirect:/community/snsPage.do";
					
				}
				
				
				
				

		
		// 좋아요 버튼눌렀을때 snsVO.like 값 1 씩 증가 
		@RequestMapping(value="/like")
		public void eventAjax(HttpServletRequest request
									, HttpServletResponse response
									, @RequestParam(value ="no", defaultValue ="") int no
									, Model model) throws Exception {
			
			System.out.println(no);
			
			
			snsService.addLikeSns(no);
			SnsBoardVO snsVO = snsService.selectOne(no);
			
			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonObj = new JSONObject();
			int like = snsVO.getLike();
		
			
			jsonObj.put("result", true);
			jsonObj.put("like", like);
			
			System.out.println(snsVO);
			
			response.getWriter().print(jsonObj.toString());
			
		}
		
			//댓글 입력 
		  @RequestMapping(value="/insertRep", method=RequestMethod.POST)
		    public void insertRep(@Valid SnsRepVO snsRepVO,
		    		HttpServletRequest request,
		    		HttpServletResponse response,
		    		@RequestParam(value="content") String content,
		    		@RequestParam(value="snsNo") int snsNo,
		    		HttpSession session) throws Exception{
			  
			  response.setContentType("text/html;charset=UTF-8");
			  JSONObject jsonObj = new JSONObject();
			  response.getWriter().print(jsonObj.toString());
		   
		        UserVO userVO = (UserVO) session.getAttribute("loginVO");
		        String id = userVO.getId();
		        String pic = userVO.getFile();
		    
		        
		        snsRepVO.setSnsNo(snsNo);
		        snsRepVO.setContent(content);
		        snsRepVO.setId(id);
		        snsRepVO.setPic(pic);
		        
		        System.out.println(snsRepVO.toString());
		        
		        repService.insertRep(snsRepVO);
				
				
		        System.out.println(snsRepVO.toString());
		        
		        jsonObj.put("result", true);
				jsonObj.put("snsRepVO", snsRepVO);
				
				System.out.println(snsRepVO.toString());
		        
		    }

		

		  
		
		
		
	
	
}
