package com.techdroit.quizccint.quiz.scores;

import java.util.List;

public interface IUserScoreService {

	List<UserScore> getAllUserScores();
	List<UserScore> getAllUserScoresByUserId(long userId);
	UserScore getUserActiveScore(long userId, byte statusId);
	void addUserScore(UserScore userScore);
	void updateUserScore(UserScore userScore);
}