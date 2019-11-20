package logic;

import java.util.List;

import model.Bbs_word;
import model.Condition;

public interface ReadCatalog {
	List<Bbs_word> readBbs_word(Condition c);
	Integer getBbs_wordCount();
	Bbs_word getBbs_wordDetail(Integer id);
}
