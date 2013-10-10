package ua.com.kharkov;

import java.util.List;

import org.springframework.context.support.GenericXmlApplicationContext;

import ua.com.kharkov.exammvc.dao.ExamDao;
import ua.com.kharkov.exammvc.domain.Answers;
import ua.com.kharkov.exammvc.domain.Questions;

public class ExamDaoSample {

	public static void main(String[] args) {

		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath:root-context.xml");
		ctx.refresh();

		ExamDao examDao = ctx.getBean("examDao", ExamDao.class);
		
		int qq = 5; // qq - quantity questions

		List<Questions> questions = examDao.findRandomQuestions(qq);
		System.out.println();
		for (Questions question : questions) {
			System.out.println(question);
			System.out
					.println("**********************************************************");
			if (question.getAnswers() != null) {
				for (Answers answer : question.getAnswers()) {
					System.out.println("---" + answer);
				}
			}
			System.out.println();
		}

	}

}
