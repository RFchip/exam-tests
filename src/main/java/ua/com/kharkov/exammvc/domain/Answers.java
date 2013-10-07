package ua.com.kharkov.exammvc.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name = "answers")
public class Answers implements Serializable {

	private Long a_id;

	private String answer;

	private Long parent_q;

	private Boolean rt_a; // *************The id of write answer***************

	public Answers() {
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "a_id")
	public Long getA_id() {
		return a_id;
	}

	public void setA_id(Long id) {
		a_id = id;
	}

	@Column(name = "answer")
	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswer() {
		return answer;
	}

	@ManyToOne
	@JoinColumn(name = "parent_q", referencedColumnName = "q_id")
	public void setParent_q(Long parent_q) {
		this.parent_q = parent_q;
	}

	public Long getParent_q() {
		return parent_q;
	}

	@Column(name = "rt_a")
	public void setRt_a(Boolean rt_a) {
		this.rt_a = rt_a;
	}

	public Boolean getRt_a() {
		return rt_a;
	}

	public String toString() {
		return answer.toString();

	}

}
