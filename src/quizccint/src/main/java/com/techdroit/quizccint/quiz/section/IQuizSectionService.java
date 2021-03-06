package com.techdroit.quizccint.quiz.section;

import java.util.List;

public interface IQuizSectionService {

	List<QuizSection> getAllQuizSections();
	List<QuizSection> getAllQuizSectionsByQuizId(long quizId);
	QuizSection getQuizSectionById(long sectionId);
	boolean addQuizSection(QuizSection quizSection);
	void updateQuizSection(QuizSection quizSection);
	void deleteQuizSection(long sectionId);
}
