package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.User;

@Controller
public class HomeController {
	@RequestMapping(value="/home/userentry.html", method=RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView("home/index");
		mav.addObject(new User());
		mav.addObject("BODY", "userentry.jsp");
		return mav;
	}
	@RequestMapping(value="/home/login.html", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView("home/index");
		mav.addObject(new User());
		mav.addObject("BODY", "login.jsp");
		return mav;
	}
}
