package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Bbs_word;
import model.User;

@Controller
public class HomeController {
	@RequestMapping(value = "/home/userentry.html", method = RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView("home/index");
		mav.addObject(new User());
		mav.addObject("BODY", "userentry.jsp");
		return mav;
	}



	@RequestMapping(value = "/home/bbs_word.html", method = RequestMethod.GET)
	public ModelAndView bbs_wordForm() {
		ModelAndView mav = new ModelAndView("home/index");
		mav.addObject(new Bbs_word());
		mav.addObject("BODY", "bbs_word.jsp");
		return mav;
	}
	
}
