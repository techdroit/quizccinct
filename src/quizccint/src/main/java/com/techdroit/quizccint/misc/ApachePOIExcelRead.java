package com.techdroit.quizccint.misc;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.google.gson.Gson;
import com.techdroit.quizccint.question.Question;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ApachePOIExcelRead {

	// private static final String FILE_NAME = "/tmp/MyFirstExcel.xlsx";
	// private static final String FILE_NAME = "F://temp//POIDemo.xlsx";
	//private static final String FILE_NAME = "F://temp//Quizccint.xlsx";
	private static String FILE_NAME = "E://files//quiz//Quizccint.xlsx";

	public static List<Question> readQuestionFromExcel() {

		List<Question> questionList = new ArrayList<Question>();
		
		try {

			FileInputStream excelFile = new FileInputStream(new File(FILE_NAME));
			Workbook workbook = new XSSFWorkbook(excelFile);
			Sheet datatypeSheet = workbook.getSheetAt(0);
			Iterator<Row> iterator = datatypeSheet.iterator();

			while (iterator.hasNext()) {

				Row currentRow = iterator.next();
				int rowNum = currentRow.getRowNum();
				//System.out.println(rowNum);
				Iterator<Cell> cellIterator = currentRow.iterator();

				Question q = new Question();
				//q.setQuestionId(rowNum);
				
				// Skip the header row
				if (rowNum > 0) {

					while (cellIterator.hasNext()) {

						Cell currentCell = cellIterator.next();
						int columnIndex = currentCell.getColumnIndex();
						//System.out.print("("+columnIndex+")");
						// getCellTypeEnum shown as deprecated for version 3.15
						// getCellTypeEnum ill be renamed to getCellType starting from version 4.0
						//if (currentCell.getCellTypeEnum() == CellType.STRING) {
							//System.out.print(currentCell.getStringCellValue() + "--");
						//} else if (currentCell.getCellTypeEnum() == CellType.NUMERIC) {
							//System.out.print((int) currentCell.getNumericCellValue() + "--");
						//}
						
						switch (columnIndex) {
						case 0:
							//q.setQuestionId((long) currentCell.getNumericCellValue());
							break;
						case 1:
							q.setQuizId((int) currentCell.getNumericCellValue());
							break;
						case 2:
							q.setSectionId((int) currentCell.getNumericCellValue());
							break;
						case 3:	
							q.setQuestionName(currentCell.getStringCellValue());
							break;
						case 4:
							q.setQuestionReference(currentCell.getStringCellValue());
							break;
						case 5:
							q.setStatusId((int) currentCell.getNumericCellValue() != 0);
							break;
						case 6:
							q.setQuestionTypeId((byte) currentCell.getNumericCellValue());
							break;
						case 7:
							q.setDifficultyLevelId((byte) currentCell.getNumericCellValue());
							break;
						case 8:
							q.setOptionA(currentCell.getStringCellValue());
							break;
						case 9:
							q.setOptionB(currentCell.getStringCellValue());
							break;
						case 10:
							q.setOptionC(currentCell.getStringCellValue());
							break;
						case 11:
							q.setOptionD(currentCell.getStringCellValue());
							break;
						case 12:
							q.setOptionE(currentCell.getStringCellValue());
							break;
						case 13:
							q.setOptionAAnswer((int) currentCell.getNumericCellValue() != 0);
							break;
						case 14:
							q.setOptionBAnswer((int) currentCell.getNumericCellValue() != 0);
							break;
						case 15:
							q.setOptionCAnswer((int) currentCell.getNumericCellValue() != 0);
							break;
						case 16:
							q.setOptionDAnswer((int) currentCell.getNumericCellValue() != 0);
							break;
						case 17:
							q.setOptionEAnswer((int) currentCell.getNumericCellValue() != 0);
							break;
						case 18:
							q.setOptionValue((byte) currentCell.getNumericCellValue());
							break;
						case 19:
							q.setOptionCorrect((byte) currentCell.getNumericCellValue());
							break;
						case 20:
							q.setQuestionMarks((byte) currentCell.getNumericCellValue());
							break;
						case 21:
							q.setMakerId((long) currentCell.getNumericCellValue());
							break;
						case 22:
							q.setMakerDate(new Timestamp(System.currentTimeMillis()));
							break;
						case 23:
							q.setMakerComment(currentCell.getStringCellValue());
							break;
						default:
							break;
						}

					}
					//System.out.println();
					questionList.add(q);
				}
				rowNum++;
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return questionList;
	}
	
	public static void main(String[] args) {
		List<Question> questionList = ApachePOIExcelRead.readQuestionFromExcel();
		
		for(Question q : questionList) {
			Gson gson = new Gson();
			System.out.println(gson.toJson(q, Question.class));
		}
	}
}