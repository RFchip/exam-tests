package ua.com.kharkov.exammvc.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "questions")
public class Questions implements Serializable {

	private Long q_id;

	private String question;

	private List<Answers> answers = new ArrayList<Answers>();

	public Questions() {
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "q_id")
	public Long getQ_id() {
		return q_id;
	}

	public void setQ_id(Long id) {
		q_id = id;
	}

	@Column(name = "question")
	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQuestion() {
		return question;
	}

	@OneToMany(mappedBy = "parent_q", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	
	public List<Answers> getAnswers() {
		return this.answers;
	}

	public void setAnswers(List<Answers> answers) {
		this.answers = answers;
	}

	public String toString() {
		return q_id.toString() + ": " + question;

	}

}
