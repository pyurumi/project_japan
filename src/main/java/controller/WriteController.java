package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.WriteCatalog;
import model.Bbs_word;
import model.User;

@Controller
public class WriteController {
	@Autowired
	private WriteCatalog writeCatalog;
	
	@RequestMapping(value="/write/bbs_wordwrite.html", method=RequestMethod.POST)
	public ModelAndView write_word(@Valid Bbs_word bbs_word, BindingResult br, HttpSession session) {
		if(br.hasErrors()) {
			ModelAndView mav = new ModelAndView("home/index");
			mav.addObject("WORD_BODY", "bbs_wordwrite.jsp");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		String id=(String)session.getAttribute("loginUser");
		ModelAndView mav = new ModelAndView("home/index");
		if(id == "admin") { //admin일때만 작성가능하게
			bbs_word.setId(id);
			writeCatalog.putBBS_word(bbs_word);
			return new ModelAndView("redirect:/read/read.html");
		}else {
			mav.addObject("RESULT","nobody");
			mav.addObject(new User());
			mav.addObject("WORD_BODY", "nologin.jsp");
			return mav;
		}
	}
	
	@RequestMapping(value="/write/bbs_wordTemplate.html", method=RequestMethod.GET)
	public ModelAndView word_Temp() {
		ModelAndView mav = new ModelAndView("home/index");
		mav.addObject(new Bbs_word());
		mav.addObject("WORD_BODY", "bbs_wordwrite.jsp");
		return mav;
	}
}
