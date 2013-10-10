package ua.com.kharkov.exammvc.dao;

import java.util.List;

import ua.com.kharkov.exammvc.domain.Questions;
import ua.com.kharkov.exammvc.domain.UserAnswersId;

public interface ExamDao {

	/**
	 * This method extracts "qq"-quantity random questions from db
	 */
	public List<Questions> findRandomQuestions(int qq);

	/**
	 * Clearing table UserAnswerId
	 * 
	 * Warning!!! For use this method uncheck "Safe Updates" in MySql DB!!!
	 * 
	 */
	public void clearUanswers();

	/**
	 * Putting user's answers Id's in the table UserAnswersId
	 */
	public void putUanswersId(UserAnswersId ua);

	/**
	 * Getting quantity right answers from table UserAnswersId
	 */
	public String getUaResult();

}
