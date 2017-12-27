package com.techdroit.quizccint.misc;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MiscTask {

	public static java.sql.Date formatDate(Timestamp t) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String outDate = "";
		if (t != null) {
			try {
				outDate = sdf.format(t);
			} catch (Exception ex) {
				
			}
		}
		return java.sql.Date.valueOf(outDate);
	}

	public static java.sql.Date formatDate(String inDate) {

		SimpleDateFormat inSDF = new SimpleDateFormat("mm/dd/yyyy");
		SimpleDateFormat outSDF = new SimpleDateFormat("yyyy-mm-dd");

		String outDate = "";
		if (inDate != null) {
			try {
				Date date = inSDF.parse(inDate);
				outDate = outSDF.format(date);
			} catch (ParseException ex) {
			}
		}
		return java.sql.Date.valueOf(outDate);
	}

	public static void main(String[] args) {
		System.out.println(MiscTask.formatDate("12/10/2013"));
		Timestamp t = new Timestamp(System.currentTimeMillis());
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//System.out.println("My date formatted is: " + sdf.format(t));
		System.out.println("My date formatted is: " + MiscTask.formatDate(t));
	}
}