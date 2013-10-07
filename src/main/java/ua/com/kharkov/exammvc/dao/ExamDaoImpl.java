package ua.com.kharkov.exammvc.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.com.kharkov.exammvc.dao.ExamDao;
import ua.com.kharkov.exammvc.domain.Questions;
import ua.com.kharkov.exammvc.domain.UserAnswersId;

@Repository
public class ExamDaoImpl implements ExamDao {

	
	@Autowired
	private SessionFactory sessionFactory;

	
	

	
	@SuppressWarnings("unchecked")
	public List<Questions> findRandomQuestions(int qq) {

		/**
		 * qq - quantity questions
		 * 
		 * */

		List<Questions> lq = new ArrayList<Questions>();

		/**
		 * 
		 * get max quantity questions from db
		 * 
		 * */

		String sqlMaxId = "select max(q_id) from questions";
		Short maxId = (Short) sessionFactory.getCurrentSession()
				.createSQLQuery(sqlMaxId).list().get(0);

		/**
		 * get random id question
		 */

		List<Short> combination = new ArrayList<Short>(qq);
		for (Short i = 1; i <= maxId; i++) {
			combination.add(i);
		}

		Collections.shuffle(combination, (new Random()));

		/**
		 * get random questions
		 */

		for (int i = 0; i < qq; i++) {
			Short id = combination.get(i);
			lq.addAll(sessionFactory.getCurrentSession()
					.createQuery("select q from Questions q where q_id =" + id)
					.list());
		}

		return lq;

	}
	
public void clearUanswers() {
		
		sessionFactory.getCurrentSession().createSQLQuery(
				"delete from UserAnswersId").executeUpdate();
		
	}
	
	public void putUanswersId(UserAnswersId uaId) {

		
		sessionFactory.getCurrentSession().save(uaId);

	}
	public String getUaResult() {
		
		/**
		 * sqlMaxId - quantity of questions from table "UserAnswersId"
		 */
		
//		String sqlMaxId = "select max(id) from UserAnswersId";
//		Integer maxId =  (Integer) sessionFactory.getCurrentSession()
//				.createSQLQuery(sqlMaxId).list().get(0);
		

				
		String s_ua_Id = "select au.ua_id, a.rt_a from UserAnswersId au "
				+ "inner join answers a on au.ua_id=a.a_id and a.rt_a=true";
		/**
		 * 
		 * The query, which extract quantity the right questions from table "UserAnswersId"
		 * 
		 */
		
		Integer rightResult =  sessionFactory.getCurrentSession()
				.createSQLQuery(s_ua_Id).list().size();
		
		
		return "Your result: " + rightResult + " right answers from ";// + maxId; 
		
		
	}

}