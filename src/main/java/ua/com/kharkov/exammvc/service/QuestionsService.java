package ua.com.kharkov.exammvc.service;

import java.util.List;

import ua.com.kharkov.exammvc.domain.Questions;
import ua.com.kharkov.exammvc.domain.UserAnswersId;

public interface QuestionsService {
	
	public List<Questions> findRandomQuestions(int qq);
	public void clearUanswers();
	public void putUanswersId(UserAnswersId ua);
	public String getUaResult();

}
