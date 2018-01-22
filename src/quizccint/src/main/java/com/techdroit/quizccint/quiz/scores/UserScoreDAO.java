package com.techdroit.quizccint.quiz.scores;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class UserScoreDAO implements IUserScoreDAO {

	@PersistenceContext
	private EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<UserScore> getAllUserScores() {
		// TODO Auto-generated method stub
		String hql = "FROM UserScore us ORDER BY us.endDate DESC";
		return (List<UserScore>)entityManager.createQuery(hql).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<UserScore> getAllUserScoresByUserId(long userId){
		
		String hql = "FROM UserScore us WHERE us.userId = ?";
		return (List<UserScore>) entityManager.createQuery(hql).setParameter(1, userId).getResultList();
	}
	
	@Override
	public UserScore getUserActiveScore(long userId, byte statusId) {
		
		String hql = "FROM UserScore us WHERE us.userId = ? AND us.statusId = ?";
		return (UserScore) entityManager.createQuery(hql).setParameter(1, userId).setParameter(2, statusId).getSingleResult();
	}
	
	@Override
	public void addUserScore(UserScore userScore) {
		entityManager.persist(userScore);
	}
	
	@Override
	public void updateUserScore(UserScore userScore) {
		UserScore us = getUserActiveScore(userScore.getUserId(), userScore.getStatusId());
		entityManager.flush();
	}
}