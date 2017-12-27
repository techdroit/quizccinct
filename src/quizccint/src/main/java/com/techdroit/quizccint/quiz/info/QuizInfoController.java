package com.techdroit.quizccint.quiz.info;

import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class QuizInfoController {

	@Autowired
	private IQuizInfoService quizInfoService;

	@GetMapping("quizzes")
	public String showAllQuizInfo(Model model) {

		List<QuizInfo> quizList = quizInfoService.getAllQuizInfo();
		model.addAttribute("quizList", quizList);

		return "quiz-list";
	}

	@RequestMapping(value = "quizzes/add", method = RequestMethod.GET)
	public String showAddQuizForm(Model model) {

		QuizInfo quizInfo = new QuizInfo();
		model.addAttribute("quizInfo", quizInfo);
		populateDefaultModel(model);

		return "quiz-info";
	}

	// save quiz
	@RequestMapping(value = "quizzes/add", method = RequestMethod.POST)
	public String saveQuizInfo(@ModelAttribute("quizInfo") QuizInfo quizInfo, Model model,
			final RedirectAttributes redirectAttributes) {

		Timestamp t = new Timestamp(System.currentTimeMillis());
		quizInfo.setMakerId(1);
		quizInfo.setMakerDate(t);
		if (quizInfoService.addQuizInfo(quizInfo)) {

			redirectAttributes.addFlashAttribute("msg", "Quiz added successfully");

		} else {

			model.addAttribute("msg", "Quiz name \"" + quizInfo.getQuizName() + "\" already exists.");
			populateDefaultModel(model);
			return "quiz-info";
		}

		return "redirect:/quizzes";
	}

	// show update form
	@RequestMapping(value = "/quizzes/{quizId}/update", method = RequestMethod.GET)
	public String showUpdateQuizForm(@PathVariable("quizId") long quizId, Model model) {

		QuizInfo quizInfo = quizInfoService.getQuizInfoById(quizId);
		model.addAttribute("quizInfo", quizInfo);
		populateDefaultModel(model);

		return "quiz-info";

	}

	// update quiz
	@RequestMapping(value = "quizzes/update", method = RequestMethod.POST)
	public String updateQuizInfo(@ModelAttribute("quizInfo") QuizInfo quizInfo, Model model,
			final RedirectAttributes redirectAttributes) {

		Timestamp t = new Timestamp(System.currentTimeMillis());
		quizInfo.setMakerId(1);
		quizInfo.setMakerDate(t);
		quizInfoService.updateQuizInfo(quizInfo);
		redirectAttributes.addFlashAttribute("msg", "Quiz \"" +quizInfo.getQuizName() + "\" updated successfully");

		return "redirect:/quizzes";
	}

	// show update form
	@RequestMapping(value = "/quizzes/{quizId}/delete", method = RequestMethod.GET)
	public String deleteQuizInfo(@PathVariable("quizId") long quizId, Model model,
			final RedirectAttributes redirectAttributes) {

		QuizInfo quizInfo = quizInfoService.getQuizInfoById(quizId);
		quizInfoService.deleteQuizInfo(quizId);
		redirectAttributes.addFlashAttribute("msg", "Quiz \"" + quizInfo.getQuizName() + "\" deleted successfully");

		return "redirect:/quizzes";

	}

	private void populateDefaultModel(Model model) {

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