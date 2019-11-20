package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.WriteDao;
import model.Bbs_word;

@Service
public class WriteCatalogImpl implements WriteCatalog {
	@Autowired
	private WriteDao writeDao;
	
	public Integer getMaxBbsId() {
	
		return writeDao.getMaxBbsId();
	}

	public void putBBS_word(Bbs_word bbs_word) {
		writeDao.putBBS_word(bbs_word);

	}

}
