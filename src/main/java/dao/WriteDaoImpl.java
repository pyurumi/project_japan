package dao;

import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bbs_word;

@Repository
public class WriteDaoImpl implements WriteDao {
	@Autowired
	private SqlSession session;

	public Integer getMaxBbsId() {

		return session.selectOne("mapper.myMapper.getMaxBbsId");
	}

	public void putBBS_word(Bbs_word bbs_word) {

		Integer seqno = this.getMaxBbsId();
		if (seqno == null) {
			seqno = 0;
		}
		bbs_word.setSeqno(seqno + 1); // 글번호

		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		int date = today.get(Calendar.DATE);

		String bbsDate = year + "/" + month + "/" + date;
		
		bbs_word.setBbs_date(bbsDate);
		
		session.insert("mapper.myMapper.putBBS_word", bbs_word);

	}

}
