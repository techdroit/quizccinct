package com.techdroit.quizccint.question;

import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import com.techdroit.quizccint.quiz.info.QuizInfo;
import com.techdroit.quizccint.quiz.section.IQuizSectionService;
import com.techdroit.quizccint.quiz.section.QuizSection;

@Controller
public class QuestionController {

	@Autowired
	private IQuestionService questionService;

	@Autowired
	private IQuizSectionService quizSectionService;

	@GetMapping("questions")
	public String showAllQuestions(Model model) {

		List<Question> questionList = questionService.getAllQuestions();
		model.addAttribute("questionList", questionList);

		return "question-list";
	}

	@RequestMapping(value = "questions/add", method = RequestMethod.GET)
	public String showAddQuestionForm(Model model) {

		Question question = new Question();
		model.addAttribute("question", question);
		populateDefaultModel(model);

		return "question-info";
	}

	@RequestMapping(value = "questions/{quizId}/{sectionId}/add", method = RequestMethod.GET)
	public String showAddQuestionForm2(@PathVariable("quizId") long quizId, @PathVariable("sectionId") long sectionId,
			Model model) {

		Question question = new Question();
		question.setQuizId(quizId);
		question.setSectionId(sectionId);
		model.addAttribute("question", question);
		populateDefaultModel(model);

		return "question-info";
	}

	// save quiz
	@RequestMapping(value = "questions/{quizId}/{sectionId}/add", method = RequestMethod.POST)
	public String saveQuizSection(@ModelAttribute("question") Question question, Model model,
			final RedirectAttributes redirectAttributes) {

		Timestamp t = new Timestamp(System.currentTimeMillis());
		question.setMakerId(1);
		question.setMakerDate(t);
		if (questionService.addQuestion(question)) {

			redirectAttributes.addFlashAttribute("msg", "Question added successfully");

		} else {

			model.addAttribute("msg", "Question already exists.");
			populateDefaultModel(model);
			return "question-info";
		}

		return "redirect:/questions";
	}

	// show update form
	@RequestMapping(value = "questions/{questionId}/update", method = RequestMethod.GET)
	public String showUpdateQuestionForm(@PathVariable("questionId") long questionId, Model model) {

		Question question = questionService.getQuestionById(questionId);
		model.addAttribute("question", question);
		populateDefaultModel(model);

		return "question-info";

	}

	// update quiz
	@RequestMapping(value = "questions/{questionId}/update", method = RequestMethod.POST)
	public String updateQuizInfo(@ModelAttribute("question") Question question,
			@PathVariable("questionId") long questionId, Model model, final RedirectAttributes redirectAttributes) {

		Timestamp t = new Timestamp(System.currentTimeMillis());
		question.setMakerId(1);
		question.setMakerDate(t);
		questionService.updateQuestion(question);
		redirectAttributes.addFlashAttribute("msg", "Question " + question.getQuestionId() + " updated successfully");

		return "redirect:/questions";
	}

	private void populateDefaultModel(Model model) {

		List<QuizSection> list = quizSectionService.getAllQuizSections();
		Map<Long, String> sectionList = new LinkedHashMap<Long, String>();
		for (QuizSection q : list) {
			sectionList.put(q.getSectionId(), q.getSectionName());
		}
		model.addAttribute("sectionList", sectionList);

		Map<Integer, String> visibility = new LinkedHashMap<Integer, String>();
		visibility.put(1, "Private");
		visibility.put(2, "Public");

		model.addAttribute("visibility", visibility);

		Map<Integer, String> display = new LinkedHashMap<Integer, String>();
		display.put(1, "Horizontal");
		display.put(2, "Vertical");

		model.addAttribute("display", display);

		Map<Integer, String> status = new LinkedHashMap<Integer, String>();
		status.put(1, "Active");
		status.put(2, "Inactive");

		model.addAttribute("status", status);

		Map<Integer, String> selection = new LinkedHashMap<Integer, String>();
		selection.put(1, "Sequential");
		selection.put(2, "Random");

		model.addAttribute("selection", selection);
	}
}