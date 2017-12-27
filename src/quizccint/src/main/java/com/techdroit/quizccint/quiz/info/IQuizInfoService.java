package com.techdroit.quizccint.quiz.info;

import java.util.List;

public interface IQuizInfoService {

	List<QuizInfo> getAllQuizInfo();
	QuizInfo getQuizInfoById(long quizId);
	boolean addQuizInfo(QuizInfo quizInfo);
	void updateQuizInfo(QuizInfo quizInfo);
	void deleteQuizInfo(long quizId);
}