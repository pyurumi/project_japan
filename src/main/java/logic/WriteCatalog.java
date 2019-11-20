package logic;

import model.Bbs_word;

public interface WriteCatalog {
	Integer getMaxBbsId();
	void putBBS_word(Bbs_word bbs_word);
}
