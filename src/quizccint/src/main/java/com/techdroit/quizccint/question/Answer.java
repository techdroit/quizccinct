package com.techdroit.quizccint.question;

public class Answer {

	private long questionId;
	private boolean marked;
	private boolean optionAAnswer;
	private boolean optionBAnswer;
	private boolean optionCAnswer;
	private boolean optionDAnswer;
	private boolean optionEAnswer;
	private byte optionValue;
	private byte optionCorrect;
	public long getQuestionId() {
		return questionId;
	}
	public void setQuestionId(long questionId) {
		this.questionId = questionId;
	}
	public boolean isMarked() {
		return marked;
	}
	public void setMarked(boolean marked) {
		this.marked = marked;
	}
	public boolean isOptionAAnswer() {
		return optionAAnswer;
	}
	public void setOptionAAnswer(boolean optionAAnswer) {
		this.optionAAnswer = optionAAnswer;
	}
	public boolean isOptionBAnswer() {
		return optionBAnswer;
	}
	public void setOptionBAnswer(boolean optionBAnswer) {
		this.optionBAnswer = optionBAnswer;
	}
	public boolean isOptionCAnswer() {
		return optionCAnswer;
	}
	public void setOptionCAnswer(boolean optionCAnswer) {
		this.optionCAnswer = optionCAnswer;
	}
	public boolean isOptionDAnswer() {
		return optionDAnswer;
	}
	public void setOptionDAnswer(boolean optionDAnswer) {
		this.optionDAnswer = optionDAnswer;
	}
	public boolean isOptionEAnswer() {
		return optionEAnswer;
	}
	public void setOptionEAnswer(boolean optionEAnswer) {
		this.optionEAnswer = optionEAnswer;
	}
	public byte getOptionValue() {
		return optionValue;
	}
	public void setOptionValue(byte optionValue) {
		this.optionValue = optionValue;
	}
	public byte getOptionCorrect() {
		return optionCorrect;
	}
	public void setOptionCorrect(byte optionCorrect) {
		this.optionCorrect = optionCorrect;
	}
}