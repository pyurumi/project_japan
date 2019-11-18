package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReadDao;
import model.Bbs_word;
import model.Condition;

@Service
public class ReadCatalogImpl implements ReadCatalog {
	@Autowired
	private ReadDao readDao;
	
	public List<Bbs_word> readBbs(Condition c) {
		return readDao.readBbs_word(c);
	}

	public Integer getBbs_wordCount() {
		return readDao.getBbs_wordCount();
	}

	public Bbs_word getBbs_wordDetail(Integer id) {
		// TODO Auto-generated method stub
		return readDao.getBbs_wordDetail(id);
	}

}
