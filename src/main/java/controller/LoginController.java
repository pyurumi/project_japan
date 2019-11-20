package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.LoginCatalog;
import model.User;

@Controller
public class LoginController {
	@Autowired
	private LoginCatalog loginCatalog;
	@RequestMapping(value="/login/index.html", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("guest") User guest, BindingResult br, HttpSession session) {
		ModelAndView mav = new ModelAndView("home/index");
		if(br.hasErrors()) {
			mav.addObject("HEADER", "login.jsp");
			return mav;
		}
		String password = loginCatalog.getPwd(guest.getUser_id());
		if(password == null || !guest.getPassword().equals(password)) {
			mav.addObject("BODY", "loginResult.jsp");
		}else {
			session.setAttribute("loginUser", guest.getUser_id());
			mav.addObject("BODY", "loginResult.jsp");
		}
		return mav;
	}
	@RequestMapping(value="/login/login.html", method = RequestMethod.GET)
	public ModelAndView toLogin(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("home/index");
		request.setAttribute("guest", new User());
		mav.addObject(new User());
		mav.addObject("BODY", "login.jsp");
		return mav;
	}

}
