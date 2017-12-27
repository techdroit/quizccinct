package com.techdroit.quizccint.quiz.section;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class QuizSectionDAO implements IQuizSectionDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<QuizSection> getAllQuizSections() {
		String hql = "FROM QuizSection";
		return (List<QuizSection>) entityManager.createQuery(hql).getResultList();
	}

	@Override
	public QuizSection getQuizSectionById(long sectionId) {
		return entityManager.find(QuizSection.class, sectionId);
	}

	@Override
	public void addQuizSection(QuizSection quizSection) {
		entityManager.persist(quizSection);
	}

	@Override
	public void updateQuizSection(QuizSection quizSection) {
		System.out.println(quizSection.getSectionId());
		QuizSection qs = getQuizSectionById(quizSection.getSectionId());
		qs.setQuizId(quizSection.getQuizId());
		qs.setSectionName(quizSection.getSectionName());
		qs.setSectionDescription(quizSection.getSectionDescription());
		qs.setMakerComment(quizSection.getMakerComment());
		entityManager.flush();
	}

	@Override
	public void deleteQuizSection(long sectionId) {
		entityManager.remove(getQuizSectionById(sectionId));
	}

	@Override
	public boolean quizSectionExists(String sectionName) {
		String hql = "FROM QuizSection qs WHERE qs.sectionName = ?";
		int count = entityManager.createQuery(hql).setParameter(1, sectionName).getResultList().size();
		return count > 0 ? true : false;
	}
}
