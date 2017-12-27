package com.techdroit.quizccint.quiz.section;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "quiz_sections")
public class QuizSection {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="sect_id")
	private long sectionId;
	
	@Column(name="quiz_id")
	private long quizId;
	
	@Column(name="sect_name")
	private String sectionName;
	
	@Column(name="sect_desc")
	private String sectionDescription;
	
	@Column(name="mk_id")
	private long makerId;
	
	@Column(name="mk_date")
	private Timestamp makerDate;
	
	@Column(name="mk_comment")
	private String makerComment;

	public long getSectionId() {
		return sectionId;
	}

	public void setSectionId(long sectionId) {
		this.sectionId = sectionId;
	}

	public long getQuizId() {
		return quizId;
	}

	public void setQuizId(long quizId) {
		this.quizId = quizId;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getSectionDescription() {
		return sectionDescription;
	}

	public void setSectionDescription(String sectionDescription) {
		this.sectionDescription = sectionDescription;
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