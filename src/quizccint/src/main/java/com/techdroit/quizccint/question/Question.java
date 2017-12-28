package com.techdroit.quizccint.question;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="quiz_ques")
public class Question implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ques_id")
	private long questionId;
	
	@Column(name="quiz_id")
	private long quizId;
	
	@Column(name="sect_id")
	private long sectionId;
	
	@Column(name="ques_name")
	private String questionName;
	
	@Column(name="ques_desc")
	private String questionDescription;
	
	@Column(name="status_id")
	private boolean statusId;
	
	@Column(name="ques_type_id")
	private byte questionTypeId;
	
	@Column(name="diff_level_id")
	private byte difficultyLevelId;
	
	@Column(name="option_a")
	private String optionA;
	
	@Column(name="option_b")
	private String optionB;
	
	@Column(name="option_c")
	private String optionC;
	
	@Column(name="option_d")
	private String optionD;
	
	@Column(name="option_e")
	private String optionE;
	
	@Column(name="option_a_valid")
	private boolean optionAStatus;
	
	@Column(name="option_b_valid")
	private boolean optionBStatus;
	
	@Column(name="option_c_valid")
	private boolean optionCStatus;
	
	@Column(name="option_d_valid")
	private boolean optionDStatus;
	
	@Column(name="option_e_valid")
	private boolean optionEStatus;
	
	@Column(name="option_index")
	private byte optionIndex;
	
	@Column(name="mk_id")
	private long makerId;
	
	@Column(name="mk_date")
	private Timestamp makerDate;
	
	@Column(name="mk_comment")
	private String makerComment;

	public long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(long questionId) {
		this.questionId = questionId;
	}

	public long getQuizId() {
		return quizId;
	}

	public void setQuizId(long quizId) {
		this.quizId = quizId;
	}

	public long getSectionId() {
		return sectionId;
	}

	public void setSectionId(long sectionId) {
		this.sectionId = sectionId;
	}

	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	public String getQuestionDescription() {
		return questionDescription;
	}

	public void setQuestionDescription(String questionDescription) {
		this.questionDescription = questionDescription;
	}

	public boolean isStatusId() {
		return statusId;
	}

	public void setStatusId(boolean statusId) {
		this.statusId = statusId;
	}

	public byte getQuestionTypeId() {
		return questionTypeId;
	}

	public void setQuestionTypeId(byte questionTypeId) {
		this.questionTypeId = questionTypeId;
	}

	public byte getDifficultyLevelId() {
		return difficultyLevelId;
	}

	public void setDifficultyLevelId(byte difficultyLevelId) {
		this.difficultyLevelId = difficultyLevelId;
	}

	public String getOptionA() {
		return optionA;
	}

	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}

	public String getOptionB() {
		return optionB;
	}

	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}

	public String getOptionC() {
		return optionC;
	}

	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}

	public String getOptionD() {
		return optionD;
	}

	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}

	public String getOptionE() {
		return optionE;
	}

	public void setOptionE(String optionE) {
		this.optionE = optionE;
	}

	public boolean isOptionAStatus() {
		return optionAStatus;
	}

	public void setOptionAStatus(boolean optionAStatus) {
		this.optionAStatus = optionAStatus;
	}

	public boolean isOptionBStatus() {
		return optionBStatus;
	}

	public void setOptionBStatus(boolean optionBStatus) {
		this.optionBStatus = optionBStatus;
	}

	public boolean isOptionCStatus() {
		return optionCStatus;
	}

	public void setOptionCStatus(boolean optionCStatus) {
		this.optionCStatus = optionCStatus;
	}

	public boolean isOptionDStatus() {
		return optionDStatus;
	}

	public void setOptionDStatus(boolean optionDStatus) {
		this.optionDStatus = optionDStatus;
	}

	public boolean isOptionEStatus() {
		return optionEStatus;
	}

	public void setOptionEStatus(boolean optionEStatus) {
		this.optionEStatus = optionEStatus;
	}

	public byte getOptionIndex() {
		return optionIndex;
	}

	public void setOptionIndex(byte optionIndex) {
		this.optionIndex = optionIndex;
	}

	public long getMakerId() {
		return makerId;
	}

	public void setMakerId(long makerId) {
		this.makerId = makerId;
	}

	public Timestamp getMakerDate() {
		return makerDate;
	}

	public void setMakerDate(Timestamp makerDate) {
		this.makerDate = makerDate;
	}

	public String getMakerComment() {
		return makerComment;
	}

	public void setMakerComment(String makerComment) {
		this.makerComment = makerComment;
	}
}