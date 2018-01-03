package com.techdroit.quizccint.quiz.scores;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "quiz_user_scores")
public class UserScore {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "score_id")
	private long scoreId;
	
	@Column(name = "user_id")
	private long userId;
	
	@Column(name = "quiz_id")
	private long quizId;
	
	@Column(name = "status_id")
	private byte statusId;
	
	@Column(name = "total_ques")
	private int totalQuestions;
	
	@Column(name = "total_marks")
	private int totalMarks;
	
	@Column(name = "correct")
	private int numOfCorrectAnswers;
	
	@Column(name = "incorrect")
	private int numOfIncorrectAnswers;
	
	@Column(name = "marks_obtained")
	private int marksObtained;
	
	@Column(name = "percent_score")
	private int percentScore;
	
	@Column(name = "str_date")
	private Timestamp startDate;
	
	@Column(name = "end_date")
	private Timestamp endDate;

	public long getScoreId() {
		return scoreId;
	}

	public void setScoreId(long scoreId) {
		this.scoreId = scoreId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getQuizId() {
		return quizId;
	}

	public void setQuizId(long quizId) {
		this.quizId = quizId;
	}

	public byte getStatusId() {
		return statusId;
	}

	public void setStatusId(byte statusId) {
		this.statusId = statusId;
	}

	public int getTotalQuestions() {
		return totalQuestions;
	}

	public void setTotalQuestions(int totalQuestions) {
		this.totalQuestions = totalQuestions;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}

	public int getNumOfCorrectAnswers() {
		return numOfCorrectAnswers;
	}

	public void setNumOfCorrectAnswers(int numOfCorrectAnswers) {
		this.numOfCorrectAnswers = numOfCorrectAnswers;
	}

	public int getNumOfIncorrectAnswers() {
		return numOfIncorrectAnswers;
	}

	public void setNumOfIncorrectAnswers(int numOfIncorrectAnswers) {
		this.numOfIncorrectAnswers = numOfIncorrectAnswers;
	}

	public int getMarksObtained() {
		return marksObtained;
	}

	public void setMarksObtained(int marksObtained) {
		this.marksObtained = marksObtained;
	}

	public int getPercentScore() {
		return percentScore;
	}

	public void setPercentScore(int percentScore) {
		this.percentScore = percentScore;
	}

	public Timestamp getStartDate() {
		return startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
}