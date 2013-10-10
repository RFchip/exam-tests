package ua.com.kharkov.exammvc.web;

import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.com.kharkov.exammvc.domain.Questions;
import ua.com.kharkov.exammvc.domain.UserAnswersId;
import ua.com.kharkov.exammvc.service.QuestionsService;

@Controller
public class QuestionsController {

	@Autowired
	private QuestionsService questionsService;

	private Short qq = 5;

	private List<Questions> list;

	

	@RequestMapping("/index")
	public String findRandomQuestions(Map<String, Object> map) {

		list = questionsService.findRandomQuestions(qq);
		map.put("questionsList", list);
		map.put("questionsList1", list.get(0));

		return "questions888";

	}

	@RequestMapping("/")
	public String home() {
		return "HomeTest";
	}

	@RequestMapping(value = "/next/{qId}", method = RequestMethod.GET)
	public String next(@PathVariable("qId") Integer qId, Map<String, Object> map) {
		map.put("q1", list.get(qId));

		return "questions777";
	}

	@RequestMapping(value = "/nextResult")
	public String putUAid(@RequestParam(value = "uA[]") Long[] uA,
			Map<String, Object> map) {
		

		questionsService.clearUanswers();

		

		int i;
		for (i = 0; i < uA.length; i++) {

			questionsService.putUanswersId(new UserAnswersId(uA[i], (i + 1)));
		}
		
		/**
		 * "i" - the quantity of answers from user, special prepared for JS timer implementation
		 */
		map.put("result", (questionsService.getUaResult() + (i)));

		return "questions777";
	}

}
