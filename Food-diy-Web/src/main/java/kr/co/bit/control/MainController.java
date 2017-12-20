package kr.co.bit.control;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bit.sign.service.SignService;

@RequestMapping({"/main"})
@Controller
public class MainController {
	
	@Autowired
	private SignService signServiceImp;
	
	/**
	 * 
	 *   main 화면
	 * 
	 * */
	@RequestMapping("/Start") 	// RequestParam에서 required=false는 값이 있든지 없든지 상관 안 하겠다는 속성 @RequestParam(value="msg", required=false) String msg
	public String main(Model model) {
	
		Map<String, List<Object>> list = signServiceImp.main();
		
		model.addAttribute("notice", list.get("notice"));
		model.addAttribute("sns", list.get("sns"));
		model.addAttribute("event", list.get("event"));
		
		return "main/index";
	}
	
	//이용약관
	@RequestMapping("/siteT")
	public String tos() {

		return "main/Tos";
	}
	
	//개인정보취급
	@RequestMapping("/siteP")
	public String privacy() {
		return "main/Privacy";
	}

}
