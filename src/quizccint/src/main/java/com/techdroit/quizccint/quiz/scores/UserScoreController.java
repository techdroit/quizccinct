package com.techdroit.quizccint.quiz.scores;

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

		model.addAttribute("questionList", questionList);
		model.addAttribute("answerList", answerList);

		return "score-info";
	}

	@RequestMapping(value = { "result" }, method = RequestMethod.GET)
	public String showResult(Model model, HttpServletRequest request) {

		// HttpSession session = request.getSession(false);
		// List<Question> questionList = (List<Question>)
		// session.getAttribute("questionList");
		// List<Answer> answerList = (List<Answer>) session.getAttribute("answerList");
		
		List<UserScore> userScoreList = userScoreService.getAllUserScores();
		model.addAttribute("userScoreList", userScoreList);

		return "result-info";
	}
}