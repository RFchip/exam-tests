package ua.com.kharkov.exammvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.com.kharkov.exammvc.dao.ExamDao;
import ua.com.kharkov.exammvc.domain.Questions;
import ua.com.kharkov.exammvc.domain.UserAnswersId;

@Service
public class QuestionsServiceImpl implements QuestionsService {
	
	@Autowired
	private ExamDao examDao;
	
	@Transactional
	public List<Questions> findRandomQuestions(int qq) {
		
		return examDao.findRandomQuestions(qq);
	}
	
	@Transactional
	public void clearUanswers(){
		
		examDao.clearUanswers();
		
	}
	
	@Transactional
	public void putUanswersId(UserAnswersId ua){
		
		examDao.putUanswersId(ua);
		
	}
	
	@Transactional
	public String getUaResult(){
		
		return examDao.getUaResult();
		
	}

}
