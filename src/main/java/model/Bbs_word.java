package model;

import org.hibernate.validator.constraints.NotEmpty;

public class Bbs_word {

	private Integer seqno;
	@NotEmpty(message="제목을 입력")
	private String title;
	private String content;
	private Integer rank;
	private String bbs_date;

	public Integer getSeqno() {
		return seqno;
	}

	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getRank() {
		return rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

	public String getBbs_date() {
		return bbs_date;
	}

	public void setBbs_date(String bbs_date) {
		this.bbs_date = bbs_date;
	}

}
