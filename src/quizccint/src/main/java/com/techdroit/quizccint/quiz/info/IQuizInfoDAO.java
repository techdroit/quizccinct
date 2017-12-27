package com.techdroit.quizccint.quiz.info;

import java.util.List;

public interface IQuizInfoDAO {

	List<QuizInfo> getAllQuizInfo();
	QuizInfo getQuizInfoById(long quizId);
	void addQuizInfo(QuizInfo quizInfo);
	void updateQuizInfo(QuizInfo quizInfo);
	void deleteQuizInfo(long quizId);
	boolean quizExists(String quizName);
}