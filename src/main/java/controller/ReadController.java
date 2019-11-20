package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.ReadCatalog;
import model.Bbs_word;
import model.Condition;

@Controller
public class ReadController {
	@Autowired
	private ReadCatalog readCatalog;
	
	@RequestMapping(value="/read/readDetail.html", method=RequestMethod.GET)
	public ModelAndView readBbs_wordDetail(Integer SEQNO){
		ModelAndView mav = new ModelAndView("/home/index");
		Bbs_word bbs_word = readCatalog.getBbs_wordDetail(SEQNO);
		mav.addObject("BBS_WORDDETAIL", bbs_word);
		mav.addObject("WORD_BODY","bbs_wordDetailView.jsp");
		return mav;
	}
	@RequestMapping(value="/read/read.html", method=RequestMethod.GET)
	public ModelAndView readBbs_word(Integer pageNo) {
		ModelAndView mav = new ModelAndView("home/index");
		Integer cnt = readCatalog.getBbs_wordCount();
		if(cnt == null) {
			cnt = 0;
		}
		int startRow=0;
		int endRow=0;
		int pageCnt=0;
		int currentPage=0;
		
		if(pageNo == null) {
			currentPage = 1;
		}else currentPage = pageNo;
		
		if(cnt > 0) {
			pageCnt = cnt / 10;
			if(cnt %10 >0) {
				pageCnt++;
				}
				startRow = (currentPage - 1) * 10 + 1;
				endRow = currentPage * 10;
				if(endRow > cnt) {
					endRow = cnt;
				}
			}
			Condition c = new Condition();
			c.setStartRow(startRow);
			c.setEndRow(endRow);
			List<Bbs_word> bbs_wordList = readCatalog.readBbs_word(c);
			mav.addObject("BBS_WORDLIST", bbs_wordList);
			mav.addObject("COUNT", pageCnt);
			mav.addObject("WORD_BODY", "bbs_wordListView.jsp");
			return mav;
		}
	}
