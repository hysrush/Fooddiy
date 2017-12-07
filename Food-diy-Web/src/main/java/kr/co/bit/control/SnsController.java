package kr.co.bit.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.event.vo.PagingVO;
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
	
	
	
	@RequestMapping(value ="/snsPage.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView paging(HttpServletRequest request
							, HttpServletResponse response
							, PagingVO paging) {
		
		
		List<SnsBoardVO> snsList = snsService.selectSns(paging);
		
		paging.setTotal(snsService.selectTotalPaging());
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("community/SNSBoard");
		
		mav.addObject("snsList" , snsList);
		
		mav.addObject("p",paging);
		
		
		return mav;
			
		
	}
	
	
	// 새글등록 폼으로 보내기
		@RequestMapping(value = "/snsWrite.do", method = RequestMethod.GET)
		public String writeForm(HttpServletRequest request, HttpServletResponse response, Model model) {

			SnsBoardVO snsVO = new SnsBoardVO();

			model.addAttribute("snsVO", snsVO);

			return "community/SnsWriteForm";

		}

		// 새글 등록 하기
		@RequestMapping(value = "/snsWrite.do", method = RequestMethod.POST)
		public String write(@Valid SnsBoardVO snsVO, BindingResult result,
				@RequestParam(value = "fileName") MultipartFile file) throws Exception {

			System.out.println("시작");

			// 1. fileName 설정 + eventVO에 fileName 저장
			//String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"
			//+ file.getOriginalFilename();
			String fileName = "C:\\Users\\user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\SNS\\"+ file.getOriginalFilename();
			
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
		    		HttpServletResponse response,
		    		@RequestParam(value="content") String content,
		    		@RequestParam(value="snsNo") int snsNo,
		    		HttpSession session) throws Exception{
		      
			  System.out.println(snsNo);
			  System.out.println(content);
		        UserVO userVO = (UserVO) session.getAttribute("loginVO");
		        String id = userVO.getId();
		        String pic = userVO.getFile();
		        
		        System.out.println(id);
		        System.out.println(pic);
		        
		        snsRepVO.setSnsNo(snsNo);
		        snsRepVO.setContent(content);
		        snsRepVO.setId(id);
		        snsRepVO.setPic(pic);
		        
		        System.out.println(snsRepVO.toString());
		        
		        repService.insertRep(snsRepVO);
		        
		        response.setContentType("text/html;charset=UTF-8");
				JSONObject jsonObj = new JSONObject();
				response.getWriter().print(jsonObj.toString());
				
		        System.out.println(snsRepVO.toString());
		        
		        
		        
		    }

		

		  
		
		
		
	
	
}
