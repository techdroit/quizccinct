package com.techdroit.quizccint.quiz.scores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserScoreService implements IUserScoreService {

	@Autowired
	private IUserScoreDAO userScoreDAO;

	@Override
	public List<UserScore> getAllUserScores() {
		// TODO Auto-generated method stub
		return userScoreDAO.getAllUserScores();
	}

	@Override
	public List<UserScore> getAllUserScoresByUserId(long userId) {

		return userScoreDAO.getAllUserScoresByUserId(userId);
	}

	@Override
	public UserScore getUserActiveScore(long userId, byte statusId) {

		return userScoreDAO.getUserActiveScore(userId, statusId);
	}
	
	@Override
	public void addUserScore(UserScore userScore) {
		userScoreDAO.addUserScore(userScore);
	}
	
	@Override
	public void updateUserScore(UserScore userScore) {
		userScoreDAO.updateUserScore(userScore);
	}
}