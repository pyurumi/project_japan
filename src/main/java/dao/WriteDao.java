package dao;

import model.Bbs_word;

public interface WriteDao {
	Integer getMaxBbsId();
	void putBBS_word(Bbs_word bbs_word);
}
