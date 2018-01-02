package com.techdroit.quizccint.quiz.options;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techdroit.quizccint.question.IQuestionService;
import com.techdroit.quizccint.question.Question;
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
	
	@Autowired
	private IQuestionService questionService;

	@RequestMapping("/options")
	public String showQuizOptionsForm(Model model) {

		model.addAttribute("quizId", 0);
		populateDefaultModel(model);
		return "options";
	}

	@RequestMapping(value = { "options" }, method = RequestMethod.POST)
	public String showQuizOptions(@RequestParam("quizId") long quizId, @RequestParam("optionsBtn") String optionsBtn,
			@RequestParam(value = "quizSections", required = false) String quizSections,
			@RequestParam(value = "quizSectionsSelected", required = false) String quizSectionsSelected, Model model,
			HttpServletRequest request) {

		if (optionsBtn.equals("loadSections")) {

			List<QuizSection> quizSectionList = quizSectionService.getAllQuizSectionsByQuizId(quizId);
			model.addAttribute("quizSectionList", quizSectionList);
			model.addAttribute("quizId", quizId);

			populateDefaultModel(model);

		} else {

			System.out.println(quizId);
			System.out.println(quizSections);
			System.out.println(quizSectionsSelected);
			
			List<Question> questionList = new ArrayList<Question>();
			
			String[] quizSectionsArray = quizSections.split(",");
			String[] quizSectionsSelectedArray = quizSectionsSelected.split(",");
			for(int i = 0; i < quizSectionsSelectedArray.length; i++) {
				//System.out.println(quizSectionsSelectedArray[i]);
				if(quizSectionsSelectedArray[i].equals("1")) {
					
					//System.out.println("Enter here");
					
					long sectionId = Long.parseLong(quizSectionsArray[i]);
					List<Question> list = questionService.getAllQuestionsByQuizIdAndSection(quizId, sectionId);
					//System.out.println(list.size());
					
					for(Question q : list) {
						questionList.add(q);
					}
				}
			}
			HttpSession session = request.getSession(true);
			session.setAttribute("questionList", questionList);
			System.out.println(questionList.size());
			
			return "redirect:/";
		}
		return "options";
	}

	private void populateDefaultModel(Model model) {

		List<QuizInfo> quizInfoList = quizInfoService.getAllQuizInfo();
		// Map<Long, String> quizInfoList = new LinkedHashMap<Long, String>();

		// for(QuizInfo quizInfo : list) {
		// quizInfoList.put(quizInfo.getQuizId(), quizInfo.getQuizName());
		// }

		model.addAttribute("quizInfoList", quizInfoList);

	}
}