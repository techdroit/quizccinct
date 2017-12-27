package com.techdroit.quizccint.quiz.info;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class QuizInfoDAO implements IQuizInfoDAO {

	@PersistenceContext
	private EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<QuizInfo> getAllQuizInfo() {
		// TODO Auto-generated method stub
		String hql = "FROM QuizInfo";
		return (List<QuizInfo>)entityManager.createQuery(hql).getResultList();
	}
	
	@Override
	public QuizInfo getQuizInfoById(long quizId) {
		return entityManager.find(QuizInfo.class, quizId);
	}
	
	@Override
	public void addQuizInfo(QuizInfo quizInfo) {
		
		entityManager.persist(quizInfo);
	}
	
	@Override
	public void updateQuizInfo(QuizInfo quizInfo) {
		QuizInfo q = getQuizInfoById(quizInfo.getQuizId());
		q.setQuizName(quizInfo.getQuizName());
		q.setQuizDescription(quizInfo.getQuizDescription());
		q.setVisibilityModeId(quizInfo.getVisibilityModeId());
		q.setDisplayModeId(quizInfo.getDisplayModeId());
		q.setStatusId(quizInfo.getStatusId());
		q.setSelectionModeId(quizInfo.getSelectionModeId());
		q.setStartDate(quizInfo.getStartDate());
		q.setEndDate(quizInfo.getEndDate());
		entityManager.flush();
	}
	
	@Override
	public void deleteQuizInfo(long quizId) {
		entityManager.remove(getQuizInfoById(quizId));
	}
	
	@Override
	public boolean quizExists(String quizName) {
		String hql = "FROM QuizInfo as qInfo WHERE qInfo.quizName = ?";
		int count = entityManager.createQuery(hql).setParameter(1, quizName).getResultList().size();
		return count > 0 ? true : false;
	}
}