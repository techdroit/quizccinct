package com.techdroit.quizccint.quiz.options;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techdroit.quizccint.quiz.info.IQuizInfoService;
import com.techdroit.quizccint.quiz.info.QuizInfo;
import com.techdroit.quizccint.quiz.section.IQuizSectionService;
import com.techdroit.quizccint.quiz.section.QuizSection;

@Controller
public class QuizOptionsController {

	@Autowired
	private IQuizSectionService quizSectionService;
	
	@Autowired
	private IQuizInfoService quizInfoService;
	
	@RequestMapping("/options")
	public String showQuizOptionsForm(Model model) {
		
		model.addAttribute("quizId", 0);
		populateDefaultModel(model);
		return "options";
	}
	

	@RequestMapping(value = { "options" }, method = RequestMethod.POST)
	public String showQuizOptions(@RequestParam("quizId") long quizId, Model model) {
		
		List<QuizSection> quizSectionList = quizSectionService.getAllQuizSectionsByQuizId(quizId);
		model.addAttribute("quizSectionList", quizSectionList);
		model.addAttribute("quizId", quizId);
		
		populateDefaultModel(model);
		return "options";
	}
	
	private void populateDefaultModel(Model model) {
		
		List<QuizInfo> quizInfoList = quizInfoService.getAllQuizInfo();
		//Map<Long, String> quizInfoList = new LinkedHashMap<Long, String>();
		
		//for(QuizInfo quizInfo : list) {
			//quizInfoList.put(quizInfo.getQuizId(), quizInfo.getQuizName());
		//}
		
		model.addAttribute("quizInfoList", quizInfoList);
		
	}
}