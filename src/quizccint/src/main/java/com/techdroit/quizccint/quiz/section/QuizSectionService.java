package com.techdroit.quizccint.quiz.section;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuizSectionService implements IQuizSectionService {

	@Autowired
	IQuizSectionDAO quizSectionDAO;

	@Override
	public List<QuizSection> getAllQuizSections() {
		return quizSectionDAO.getAllQuizSections();
	}

	@Override
	public QuizSection getQuizSectionById(long sectionId) {
		return quizSectionDAO.getQuizSectionById(sectionId);
	}

	@Override
	public boolean addQuizSection(QuizSection quizSection) {
		if (quizSectionDAO.quizSectionExists(quizSection.getSectionName())) {
			return false;
		} else {
			quizSectionDAO.addQuizSection(quizSection);
			return true;
		}
	}

	@Override
	public void updateQuizSection(QuizSection quizSection) {
		quizSectionDAO.updateQuizSection(quizSection);
	}

	@Override
	public void deleteQuizSection(long sectionId) {
		quizSectionDAO.deleteQuizSection(sectionId);

	}
}
