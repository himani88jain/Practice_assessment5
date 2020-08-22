package co.grandcircus.assessment5practice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CareerController {
	
	@RequestMapping("/")
	public String showHome() {
		return "index";
	}

	@RequestMapping("/submit-details")
	public String showDetail(Model model,@RequestParam("name") String name,@RequestParam("year") int year) {                                                                                                
	String msg = " ";
		if(year<1943|| year>2003){
		  if(year<1943)
		      msg="Sorry!!Birthyear is out of range";
		if(year>2003)
		msg="Sorry!You are too young";
		model.addAttribute("msg",msg);
		return "sorry";
		}
		char c=name.charAt(0);
		if(Character.isLowerCase(c))
		{
		msg="Your name does not follow guidelines";
		model.addAttribute("msg",msg);
		return "sorry";
		}

		return "career-selection";

	}
	
	@RequestMapping("/career")
	public String careerChoice(Model model,@RequestParam("career") String career) {
		  model.addAttribute("career",career);
		  return "career-display";
	}
	
	
	
}
