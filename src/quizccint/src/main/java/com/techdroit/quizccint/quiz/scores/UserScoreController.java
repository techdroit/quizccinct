package com.techdroit.quizccint.quiz.scores;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techdroit.quizccint.question.Answer;
import com.techdroit.quizccint.question.Question;

@Controller
public class UserScoreController {

	@Autowired
	private IUserScoreService userScoreService;

	@GetMapping("user/scores")
	public ResponseEntity<List<UserScore>> getAllUserScores() {
		List<UserScore> list = userScoreService.getAllUserScores();
		return new ResponseEntity<List<UserScore>>(list, HttpStatus.OK);
	}

	@RequestMapping(value = { "score" }, method = RequestMethod.GET)
	public String showScore(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession(false);

		List<Question> questionList = (List<Question>) session.getAttribute("questionList");
		Answer[] answersArray = (Answer[]) session.getAttribute("answersArray");

		List<Answer> answerList = new ArrayList<Answer>();
		for (Question question : questionList) {

			for (int i = 0; i < answersArray.length; i++) {

				if (question.getQuestionId() == answersArray[i].getQuestionId()) {
					answerList.add(answersArray[i]);
					break;
				}
			}
		}

		session.setAttribute("answerList", answerList);

		model.addAttribute("questionList", questionList);
		model.addAttribute("answerList", answerList);

		return "score-info";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = { "result" }, method = RequestMethod.GET)
	public String showResult(Model model, HttpServletRequest request) {

		int correctAnswer = 0;
		int incorrectAnswer = 0;
		int marksObtained = 0;
		int percentageScore = 0;

		HttpSession session = request.getSession(false);
		List<Question> questionList = (List<Question>) session.getAttribute("questionList");
		List<Answer> answerList = (List<Answer>) session.getAttribute("answerList");
		UserScore userScore = (UserScore) session.getAttribute("userScore");

		for (Question question : questionList) {

			for (Answer answer : answerList) {

				if (question.getQuestionId() == answer.getQuestionId()) {

					if (question.getQuestionTypeId() == 1) {

						if (question.getOptionValue() == answer.getOptionValue()) {
							correctAnswer++;
							marksObtained += question.getQuestionMarks();
						} else {
							incorrectAnswer++;
						}

					} else if (question.getQuestionTypeId() == 2) {

						int hasOptions = 0;
					    int correctlyChecked = 0;
					    //int wronglyChecked = 0;
						
						if (question.getOptionA() != null && question.getOptionA().length() > 0) {

							hasOptions++;
							
							if (question.isOptionAAnswer() == answer.isOptionAAnswer()) {
								correctlyChecked++;
							}
						}
						if (question.getOptionB() != null && question.getOptionB().length() > 0) {

							hasOptions++;
							
							if (question.isOptionBAnswer() == answer.isOptionBAnswer()) {
								correctlyChecked++;
							}
						}
						if (question.getOptionC() != null && question.getOptionC().length() > 0) {

							hasOptions++;
							
							if (question.isOptionCAnswer() == answer.isOptionCAnswer()) {
								correctlyChecked++;
							}
						}
						if (question.getOptionD() != null && question.getOptionD().length() > 0) {

							hasOptions++;
							
							if (question.isOptionDAnswer() == answer.isOptionDAnswer()) {
								correctlyChecked++;
							}
						}
						if (question.getOptionE() != null && question.getOptionE().length() > 0) {

							hasOptions++;
							
							if (question.isOptionEAnswer() == answer.isOptionEAnswer()) {
								correctlyChecked++;
							}
						}
						
						if(hasOptions == correctlyChecked) {
							correctAnswer++;
							marksObtained += question.getQuestionMarks();
						}	
						else {
							incorrectAnswer++;
						}

					} else {

						if (question.getOptionCorrect() == answer.getOptionCorrect()) {

							correctAnswer++;
							marksObtained += question.getQuestionMarks();

						} else {

							incorrectAnswer++;
						}
					}
				}
			}
		}

		userScore.setNumOfCorrectAnswers(correctAnswer);
		userScore.setNumOfIncorrectAnswers(incorrectAnswer);
		userScore.setMarksObtained(marksObtained);
		userScore.setPercentScore((marksObtained * 100)/userScore.getTotalMarks());
		Timestamp t = new Timestamp(System.currentTimeMillis());
		userScore.setEndDate(t);

		userScoreService.addUserScore(userScore);

		List<UserScore> userScoreList = userScoreService.getAllUserScores();
		model.addAttribute("userScoreList", userScoreList);

		return "result-info";
	}
}