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

import kr.co.bit.service.MemberOrderService;
import kr.co.bit.service.RepService;
import kr.co.bit.service.SnsService;
import kr.co.bit.vo.DetailOrderVO;
import kr.co.bit.vo.MemberOrderVO;
import kr.co.bit.vo.PagingVO;
import kr.co.bit.vo.SnsBoardVO;
import kr.co.bit.vo.SnsRepVO;
import kr.co.bit.vo.UserVO;


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
			List<MemberOrderVO> todayOrderList = service.selectFavoriteMenu(id);	
			
			for(int i = 0 ; i < todayOrderList.size(); ++i) {

				List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
				String menu = todayOrderList.get(i).getMenu();
				String [] menus = menu.split("\\/\\/");
				
				
			
				
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
			}	
			
			model.addAttribute("snsVO", snsVO);
			model.addAttribute("todayOrder", todayOrderList);

			return "community/SnsWriteForm";

		}

		// 새글 등록 하기
		@RequestMapping(value = "/snsWrite.do", method = RequestMethod.POST)
		public String write(@Valid SnsBoardVO snsVO, BindingResult result,
				@RequestParam(value = "fileName") MultipartFile file) throws Exception {

			

			// 1. fileName 설정 + eventVO에 fileName 저장
			String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"
			+ file.getOriginalFilename();
			/*String fileName = "../upload/SNS/"
					+ file.getOriginalFilename();
			*/
			
			//String fileName = "C:\\Users\\user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"+ file.getOriginalFilename();
			String uFileName = "C:\\Users\\bit-user\\git\\Fooddiy-manager\\Food-manager-Web\\src\\main\\webapp\\upload\\SNS\\"
			+ file.getOriginalFilename();
			/*String uFileName = "../upload/SNS/"
					+ file.getOriginalFilename();*/
					
			String saveFileName = file.getOriginalFilename();
				
			
			snsVO.setFileName(saveFileName);

		

			// 2. 경로에 이미지파일 저장
			byte[] bytes;
			bytes = file.getBytes();
			BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
			buffStream.write(bytes);
			buffStream.close();
			//관리자 경로에 파일 저장
			byte[] ubyte;
			ubyte = file.getBytes();
			BufferedOutputStream buffStreams = new BufferedOutputStream(new FileOutputStream(new File(uFileName)));
			buffStreams.write(ubyte);
			buffStreams.close();
			
		
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
			mav.setViewName("community/SNSBoard-Modal2");
			//addObject : key 와 value 를 담아 보내는 메서드 
			mav.addObject("snsVO", snsVO);
			mav.addObject("repList", repList);
			mav.addObject("p",paging);
			//mav.addObject("repList", repList);
			
			return mav;
		}
		
		@RequestMapping(value="/snsModifyForm.do", method=RequestMethod.GET)
		public String ModifyForm(String id, @RequestParam("no")int no, Model model) {

			
			SnsBoardVO snsVO = snsService.selectOne(no);
			List<MemberOrderVO> todayOrderList = service.selectFavoriteMenu(id);	
			
			for(int i = 0 ; i < todayOrderList.size(); ++i) {

				List<DetailOrderVO> list = new LinkedList<DetailOrderVO>();
				String menu = todayOrderList.get(i).getMenu();
				String [] menus = menu.split("\\/\\/");
				
				
			
				
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
				
			}	

			model.addAttribute("snsVO", snsVO);
			model.addAttribute("todayOrder", todayOrderList);

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
					String uFileName = "C:\\Users\\bit-user\\git\\Fooddiy-manager\\Food-manager-Web\\src\\main\\webapp\\upload\\SNS\\"
							+ file.getOriginalFilename();			
							
							snsVO.setFileName(saveFileName);

							// 2. 경로에 이미지파일 저장
							byte[] bytes;
							bytes = file.getBytes();
							BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(fileName)));
							buffStream.write(bytes);
							buffStream.close();
							byte[] ubyte;
							ubyte = file.getBytes();
							BufferedOutputStream buffStreams = new BufferedOutputStream(new FileOutputStream(new File(uFileName)));
							buffStreams.write(ubyte);
							buffStreams.close();
							
					
					
					
					
				
					
					
					snsService.update(snsVO);
				
					
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
		
			//댓글 입력 
		  @RequestMapping(value="/insertRep", method=RequestMethod.POST)
		    public void insertRep(@Valid SnsRepVO snsRepVO,
		    		HttpServletRequest request,
		    		HttpServletResponse response,
		    		@RequestParam(value="content") String content,
		    		@RequestParam(value="snsNo") int snsNo,
		    		HttpSession session,
		    		PagingVO paging) throws Exception{
			  
			  response.setContentType("text/html;charset=UTF-8");
			  JSONObject jsonObj = new JSONObject();
			
		   
		        UserVO userVO = (UserVO) session.getAttribute("loginVO");
		        String id = userVO.getId();
		        String pic = userVO.getFile();
		    
		        
		        snsRepVO.setSnsNo(snsNo);
		        snsRepVO.setContent(content);
		        snsRepVO.setId(id);
		        snsRepVO.setPic(pic);
		    
		        
		        repService.insertRep(snsRepVO);
				
		        paging.setNo(snsNo);
				
				List<SnsRepVO> repList = repService.list(paging);
		        
			
		        jsonObj.put("result", true);
				jsonObj.put("snsRepVO", snsRepVO);
				jsonObj.put("repList", repList);
				
				System.out.println(repList);
				
				response.getWriter().print(jsonObj.toString());
		    }

		  @RequestMapping(value="/deleteRep")
		  public String deleteRep(@RequestParam("no")int no) {
		  
			  repService.deleteRep(no);
		
		  return "redirect:/community/snsPage.do";
		  
		  }
		  	
				
			
	
}
