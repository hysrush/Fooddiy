package kr.co.bit.community.control;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bit.community.service.ClaimService;
import kr.co.bit.community.vo.ClaimBoardVO;

@RequestMapping("/community")
@Controller
public class ClaimController {
	
	@Autowired
	private ClaimService claimService;
	
	// <Claim 컨트롤러>
	// Claim 전체보기
	@RequestMapping("/claim.do")
	public ModelAndView listAll() {
		
		List<ClaimBoardVO> claimList = claimService.selectAllClaim();
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/claimList");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("claimList", claimList);
		
		return mav;
	}
	
	// Claim 새 글쓰기폼
	@RequestMapping(value="/claimWrite.do", method=RequestMethod.GET)
	public String writeForm(Model model) {
		
		// Form에서 가져온 Data를 ClaimBoardVO 객체 형태로 저장
		ClaimBoardVO claimVO = new ClaimBoardVO();
		
		// 공유영역에 등록
		model.addAttribute("claimVO", claimVO);
		
		return "community/claimWrite";
	}
	
	// Claim 새 글쓰기
	@RequestMapping(value="/claimWrite.do", method=RequestMethod.POST)
	public String write(@Valid ClaimBoardVO claimVO, BindingResult result,
						@RequestParam(value="file") MultipartFile file) throws Exception {
		
		System.out.println(file.getOriginalFilename());
		/*if (result.hasErrors()) {
			// 에러일때 true => writeForm으로
			return "community/claimWrite";
		}*/
		// 1. fileName 설정 + eventVO에 fileName 저장
		String fileName = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\"
				+ file.getOriginalFilename();
		String saveFileName = file.getOriginalFilename();
		
		claimVO.setFile(saveFileName);
		
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
		
		// Claim 새 글 등록
		claimService.insertClaim(claimVO);
		
		return "redirect:/community/claim.do";
	}
	
	// Claim 글 상세내용 조회 & 게시글 조회수 증가 처리
	// ex) community/claimDetail.do?no=15
	@RequestMapping(value="/claimDetail.do", method=RequestMethod.GET)
	public ModelAndView detail(@RequestParam("no") int no, HttpSession session) {
		
		// 조회수 증가
		claimService.updateViewcntClaim(no, session);
		
		ClaimBoardVO claimVO = claimService.selectOneClaim(no);
		
		ModelAndView mav = new ModelAndView();
		//setViewName : 어떤 페이지를 보여줄것인가
		mav.setViewName("community/claimDetail");
		//addObject : key 와 value 를 담아 보내는 메서드 
		mav.addObject("claimVO", claimVO);
		
		return mav;
	}
	// 클레임 타입
	@ModelAttribute("typeCode")
	public Map<String, String> getTypeCode() {
		
		Map<String, String> typeCode = new HashMap<>();
		
		typeCode.put("I", "문의");
		typeCode.put("P", "칭찬");
		typeCode.put("C", "불만");
		typeCode.put("S", "제안");
		typeCode.put("X", "기타");
		
		Iterator<String> iterator = typeCode.keySet().iterator();
	    while (iterator.hasNext()) {
	        String key = (String) iterator.next();
	        System.out.print("key="+key);
	        System.out.println(" value="+ typeCode.get(key));
	    }
		
		return typeCode;
	}
	// 이메일 도메인
	@ModelAttribute("domainCode")
	public List<String> getDomainCode() {
		
		List<String> domainCode = new ArrayList<>();
		
		domainCode.add("gmail.com");
		domainCode.add("hanmail.net");
		domainCode.add("hotmail.com");
		domainCode.add("nate.com");
		domainCode.add("naver.com");
		domainCode.add("yahoo.co.kr");
		domainCode.add("hanmir.com");
		domainCode.add("lycos.co.kr");
		domainCode.add("empal.com");
		domainCode.add("hitel.net");
		domainCode.add("freechal.com");
		
		System.out.println(domainCode.toString());
		
		return domainCode;
	}
	
}
