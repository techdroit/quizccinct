package com.techdroit.quizccint.misc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.techdroit.quizccint.question.IQuestionService;
import com.techdroit.quizccint.question.Question;
import com.techdroit.quizccint.quiz.section.IQuizSectionService;
import com.techdroit.quizccint.quiz.section.QuizSection;

public class QuestionMisc {

	@Autowired
	private static IQuizSectionService quizSectionService;
	
	@Autowired
	private static IQuestionService questionService;
	
	public static void updateNumberOfQuestions(Question question) {

		QuizSection quizSection = quizSectionService.getQuizSectionById(question.getSectionId());
		List<Question> questionsList = questionService.getAllQuestionsByQuizIdAndSection(question.getQuizId(),
				question.getSectionId());
		quizSection.setNumberOfQuestions(questionsList.size());
		quizSectionService.updateQuizSection(quizSection);
	}
}