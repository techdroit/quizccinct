package com.techdroit.quizccint.dashboard;

import java.util.Map;

//import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {

	// inject via application.properties
	//@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "index";
	}
	
	/*@RequestMapping("/options")
	public String options(Map<String, Object> model) {
		model.put("message", this.message);
		return "options";
	}*/
	
	@RequestMapping("/quiz")
	public String newQuiz(Map<String, Object> model) {
		model.put("message", this.message);
		return "quiz";
	}
	
	/*@RequestMapping("/question")
	public String newQuestion(Map<String, Object> model) {
		model.put("message", this.message);
		return "question";
	}*/
	
	/*@RequestMapping("/sections")
	public String newQuizSections(Map<String, Object> model) {
		model.put("message", this.message);
		return "sections";
	}*/
	
	@RequestMapping("/quiz2")
	public String newQuiz2(Map<String, Object> model) {
		model.put("message", this.message);
		return "quiz2";
	}
}
