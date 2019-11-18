package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bbs_word;
import model.Condition;

@Repository
public class ReadDaoImpl implements ReadDao {
	@Autowired
	private SqlSession session;
	
	public List<Bbs_word> readBbs_word(Condition c) {
		return session.selectList("mapper.myMapper.getBbs_wordList", c);
	}

	public Integer getBbs_wordCount() {
		return session.selectOne("mapper.myMapper.getBbs_wordCount");
	}

	public Bbs_word getBbs_wordDetail(Integer id) {
		return session.selectOne("mapper.myMapper.getBbs_wordDetail", id);
	}

}
