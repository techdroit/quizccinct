package com.techdroit.quizccint.quiz.section;

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

import com.techdroit.quizccint.question.IQuestionService;
import com.techdroit.quizccint.quiz.info.IQuizInfoService;
import com.techdroit.quizccint.quiz.info.QuizInfo;

@Controller
public class QuizSectionController {

	@Autowired
	private IQuizSectionService quizSectionService;

	@Autowired
	private IQuizInfoService quizInfoService;
	
	@Autowired
	private IQuestionService questionService;

	@GetMapping("sections/{quizId}")
	public ResponseEntity<List<QuizSection>> getAllQuizSections(@PathVariable("quizId") long quizId){
		List<QuizSection> list = quizSectionService.getAllQuizSectionsByQuizId(quizId);
		return new ResponseEntity<List<QuizSection>>(list, HttpStatus.OK);
	}
	
	@RequestMapping(value = { "sections" }, method = RequestMethod.GET)
	public String showAllQuizSections(Model model) {

		List<QuizSection> quizSectionList = quizSectionService.getAllQuizSections();
		model.addAttribute("quizSectionList", quizSectionList);
		return "sections-list";
	}

	@RequestMapping(value = "sections/add", method = RequestMethod.GET)
	public String showAddQuizSectionForm(Model model) {

		QuizSection quizSection = new QuizSection();
		model.addAttribute("quizSection", quizSection);
		populateDefaultModel(model);

		return "sections-info";
	}

	@RequestMapping(value = "sections/{quizId}/add", method = RequestMethod.GET)
	public String showAddQuizSectionForm2(@PathVariable("quizId") long quizId, Model model) {

		QuizSection quizSection = new QuizSection();
		quizSection.setQuizId(quizId);
		model.addAttribute("quizSection", quizSection);
		populateDefaultModel(model);

		return "sections-info";
	}

	// save quiz section
	@RequestMapping(value = "sections/add", method = RequestMethod.POST)
	public String saveQuizSection(@ModelAttribute("quizSection") QuizSection quizSection, Model model,
			final RedirectAttributes redirectAttributes) {
		
		Timestamp t = new Timestamp(System.currentTimeMillis());
		quizSection.setMakerId(1);
		quizSection.setMakerDate(t);
		if (quizSectionService.addQuizSection(quizSection)) {
			
			redirectAttributes.addFlashAttribute("msg", "Section added successfully");

		} else {

			model.addAttribute("msg", "Section name \"" + quizSection.getSectionName() + "\" already exists.");
			populateDefaultModel(model);
			return "sections-info";
		}

		return "redirect:/sections";
	}

	// show update form
	@RequestMapping(value = "/sections/{sectionId}/update", method = RequestMethod.GET)
	public String showUpdateQuizSectionForm(@PathVariable("sectionId") long sectionId, Model model) {

		QuizSection quizSection = quizSectionService.getQuizSectionById(sectionId);
		model.addAttribute("quizSection", quizSection);
		populateDefaultModel(model);

		return "sections-info";
	}

	// update quiz sections
	@RequestMapping(value = "sections/update", method = RequestMethod.POST)
	public String updateQuizSection(@ModelAttribute("quizSection") QuizSection quizSection, Model model,
			final RedirectAttributes redirectAttributes) {

		Timestamp t = new Timestamp(System.currentTimeMillis());
		quizSection.setMakerId(1);
		quizSection.setMakerDate(t);
		quizSectionService.updateQuizSection(quizSection);
		redirectAttributes.addFlashAttribute("msg",
				"Section \"" + quizSection.getSectionName() + "\" updated successfully");

		return "redirect:/sections";
	}

	// show update form
	@RequestMapping(value = "/sections/{sectionId}/delete", method = RequestMethod.GET)
	public String deleteQuizInfo(@PathVariable("sectionId") long sectionId, Model model,
			final RedirectAttributes redirectAttributes) {

		QuizSection quizSection = quizSectionService.getQuizSectionById(sectionId);
		quizSectionService.deleteQuizSection(sectionId);
		redirectAttributes.addFlashAttribute("msg",
				"Section \"" + quizSection.getSectionName() + "\" deleted successfully");

		return "redirect:/sections";

	}

	private void populateDefaultModel(Model model) {

		List<QuizInfo> list = quizInfoService.getAllQuizInfo();
		Map<Long, String> quizList = new LinkedHashMap<Long, String>();
		for (QuizInfo q : list) {
			quizList.put(q.getQuizId(), q.getQuizName());
		}
		model.addAttribute("quizList", quizList);
	}

}