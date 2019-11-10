package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BbsWordController {
	@RequestMapping(value="/home/bbs_n5", method = RequestMethod.GET)
	public ModelAndView bbs_word(String BODY) {
		ModelAndView modelandview = new ModelAndView("home/index");
		return modelandview;
		
	}
}
