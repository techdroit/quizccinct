package com.techdroit.quizccint.question;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class QuestionDAO implements IQuestionDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	@Override
	public List<Question> getAllQuestions() {
		String hql = "FROM Question";
		return (List<Question>) entityManager.createQuery(hql).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Question> getAllQuestionsByQuizId(long quizId){
		String hql = "FROM Question ques WHERE ques.quizId = ?";
		return (List<Question>) entityManager.createQuery(hql).setParameter(1, quizId).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Question> getAllQuestionsByQuizIdAndSection(long quizId, long sectId){
		String hql = "FROM Question ques WHERE ques.quizId = ? AND ques.sectionId = ?";
		return (List<Question>) entityManager.createQuery(hql).setParameter(1, quizId).setParameter(2, sectId).getResultList();
	}

	@Override
	public Question getQuestionById(long questionId) {
		return entityManager.find(Question.class, questionId);
	}

	@Override
	public void addQuestion(Question question) {
		entityManager.persist(question);
	}

	@Override
	public void updateQuestion(Question question) {
		Question q = getQuestionById(question.getQuestionId());
		q.setQuizId(question.getQuizId());
		q.setSectionId(question.getSectionId());
		q.setQuestionTypeId(question.getQuestionTypeId());
		q.setQuestionReference(question.getQuestionReference());
		q.setQuestionName(question.getQuestionName());
		q.setOptionA(question.getOptionA());
		q.setOptionB(question.getOptionB());
		q.setOptionC(question.getOptionC());
		q.setOptionD(question.getOptionD());
		q.setOptionE(question.getOptionE());
		q.setOptionAAnswer(question.isOptionAAnswer());
		q.setOptionBAnswer(question.isOptionBAnswer());
		q.setOptionCAnswer(question.isOptionCAnswer());
		q.setOptionDAnswer(question.isOptionDAnswer());
		q.setOptionEAnswer(question.isOptionEAnswer());
		q.setOptionValue(question.getOptionValue());
		q.setOptionCorrect(question.getOptionCorrect());
		q.setDifficultyLevelId(question.getDifficultyLevelId());
		q.setQuestionMarks(question.getQuestionMarks());
		q.setStatusId(question.isStatusId());
		entityManager.flush();
	}

	@Override
	public void deleteQuestion(long questionId) {
		entityManager.remove(getQuestionById(questionId));
	}

	@Override
	public boolean questionExists(String questionName) {
		String hql = "FROM Question as ques WHERE ques.questionName = ?";
		int count = entityManager.createQuery(hql).setParameter(1, questionName).getResultList().size();
		return count > 0 ? true : false;
	}
}