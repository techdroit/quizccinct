package com.techdroit.quizccint.question;

import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techdroit.quizccint.quiz.info.IQuizInfoService;
import com.techdroit.quizccint.quiz.info.QuizInfo;
import com.techdroit.quizccint.quiz.section.IQuizSectionService;
import com.techdroit.quizccint.quiz.section.QuizSection;

@Controller
public class QuestionController {

	@Autowired
	private IQuizInfoService quizInfoService;

	@Autowired
	private IQuizSectionService quizSectionService;

	@Autowired
	private IQuestionService questionService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showQuizForm(Model model, HttpServletRequest request) {

		// HttpSession session = request.getSession(true);
		HttpSession session = request.getSession();
		//List<Question> questionList = questionService.getAllQuestions();
		List<Question> questionList = (List<Question>)session.getAttribute("questionList");

		// Create answer sheet for the questions
		Answer[] answersArray = new Answer[questionList.size()];
		for (int i = 0; i < questionList.size(); i++) {
			Question q = questionList.get(i);
			Answer a = new Answer();
			a.setQuestionId(q.getQuestionId());
			answersArray[i] = a;
		}

		//session.setAttribute("questionList", questionList);
		session.setAttribute("answersArray", answersArray);

		Question question = questionList.get(0);

		QuizInfo quizInfo = quizInfoService.getQuizInfoById(question.getQuizId());
		// model.addAttribute("quizTitle", quizInfo.getQuizName() + ": " +
		// quizInfo.getQuizDescription());
		// session.setAttribute("quizTitle", quizInfo.getQuizName() + ": " +
		// quizInfo.getQuizDescription());

		model.addAttribute("quizTitle", quizInfo.getQuizName());
		session.setAttribute("quizTitle", quizInfo.getQuizName());

		Answer answer = getAppropiateAnswer(answersArray, question.getQuestionId());

		model.addAttribute("question", question);
		model.addAttribute("answer", answer);
		model.addAttribute("totalQuestions", questionList.size());
		model.addAttribute("currentQuestion", 1);

		QuizSection quizSection = quizSectionService.getQuizSectionById(question.getSectionId());
		model.addAttribute("questionSection",
				quizSection.getSectionName() + ": " + quizSection.getSectionDescription());

		return "index";
	}

	private Answer getAppropiateAnswer(Answer[] answersArray, long questionId) {

		Answer answer = new Answer();
		for (int i = 0; i < answersArray.length; i++) {

			Answer a = answersArray[i];

			if (a.getQuestionId() == questionId) {
				answer = a;
				break;
			}
		}
		return answer;
	}

	private Answer[] replaceAnswer(Answer[] answersArray, long questionId, Answer answer) {
		for (int i = 0; i < answersArray.length; i++) {

			Answer a = answersArray[i];
			if (a.getQuestionId() == questionId) {
				answersArray[i] = answer;
				break;
			}
		}
		return answersArray;
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String showQuizQuestions(@ModelAttribute("answer") Answer answer,
			@RequestParam("questionNavBtn") String questionNavBtn, @RequestParam("quesId") long quesId,
			@RequestParam("currQuestion") int currQuestion, @RequestParam("totQuestions") int totQuestions, Model model,
			HttpServletRequest request) {

		HttpSession session = request.getSession();
		Answer[] answersArray = (Answer[]) session.getAttribute("answersArray");
		session.setAttribute("answersArray", replaceAnswer(answersArray, answer.getQuestionId(), answer));

		if (questionNavBtn.equals("Next")) {

			if (currQuestion >= 0 && currQuestion < totQuestions) {
				currQuestion++;
			}

		} else {

			if (currQuestion > 1) {
				currQuestion--;
			}
		}

		List<Question> questionList = (List<Question>) session.getAttribute("questionList");
		Question question = questionList.get(currQuestion - 1);

		String quizTitle = (String) session.getAttribute("quizTitle");
		model.addAttribute("quizTitle", quizTitle);

		answer = getAppropiateAnswer(answersArray, question.getQuestionId());
		model.addAttribute("answer", answer);

		model.addAttribute("question", question);
		model.addAttribute("totalQuestions", questionList.size());
		model.addAttribute("currentQuestion", currQuestion);
		QuizSection quizSection = quizSectionService.getQuizSectionById(question.getSectionId());
		model.addAttribute("questionSection",
				quizSection.getSectionName() + ": " + quizSection.getSectionDescription());

		return "index";
	}

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

	private void updateNumberOfQuestions(Question question) {

		QuizSection quizSection = quizSectionService.getQuizSectionById(question.getSectionId());
		List<Question> questionsList = questionService.getAllQuestionsByQuizIdAndSection(question.getQuizId(),
				question.getSectionId());
		quizSection.setNumberOfQuestions(questionsList.size());
		quizSectionService.updateQuizSection(quizSection);
	}

	// save quiz
	@RequestMapping(value = "questions/{quizId}/{sectionId}/add", method = RequestMethod.POST)
	public String saveQuizSection(@ModelAttribute("question") Question question, Model model,
			final RedirectAttributes redirectAttributes) {

		Timestamp t = new Timestamp(System.currentTimeMillis());
		question.setMakerId(1);
		question.setMakerDate(t);
		if (questionService.addQuestion(question)) {

			updateNumberOfQuestions(question);
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