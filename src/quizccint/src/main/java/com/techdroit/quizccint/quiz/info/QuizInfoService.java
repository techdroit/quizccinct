package com.techdroit.quizccint.quiz.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuizInfoService implements IQuizInfoService {

	@Autowired
	private IQuizInfoDAO quizInfoDAO;
	
	@Override
	public List<QuizInfo> getAllQuizInfo() {
		// TODO Auto-generated method stub
		return quizInfoDAO.getAllQuizInfo();
	}
	
	@Override
	public QuizInfo getQuizInfoById(long quizId) {
		return quizInfoDAO.getQuizInfoById(quizId);
	}
	
	public synchronized boolean addQuizInfo(QuizInfo quizInfo) {
		if(quizInfoDAO.quizExists(quizInfo.getQuizName())) {
			return false;
		}else {
			quizInfoDAO.addQuizInfo(quizInfo);
			return true;
		}
	}
	
	@Override
	public void updateQuizInfo(QuizInfo quizInfo) {
		quizInfoDAO.updateQuizInfo(quizInfo);
	}
	
	@Override
	public void deleteQuizInfo(long quizId) {
		quizInfoDAO.deleteQuizInfo(quizId);
	}
}