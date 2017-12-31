package com.techdroit.quizccint.quiz.section;

import java.util.List;

public interface IQuizSectionDAO {

	List<QuizSection> getAllQuizSections();
	List<QuizSection> getAllQuizSectionsByQuizId(long quizId);
	QuizSection getQuizSectionById(long sectionId);
	void addQuizSection(QuizSection quizSection);
	void updateQuizSection(QuizSection quizSection);
	void deleteQuizSection(long sectionId);
	boolean quizSectionExists(String sectionName);
}
