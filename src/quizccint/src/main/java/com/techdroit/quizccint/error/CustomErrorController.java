package com.techdroit.quizccint.error;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController {

	private static final String PATH = "/error";

	@RequestMapping(value = PATH)
	public String error() {
		return "400";
	}
	
	@RequestMapping("/405")
	public String error405() {
		return "405";
	}

	@RequestMapping("/500")
	public String error500() {
		return "500";
	}

	@RequestMapping("/501")
	public String error501() {
		return "501";
	}

	@RequestMapping("/502")
	public String error502() {
		return "502";
	}

	@RequestMapping("/503")
	public String error503() {
		return "503";
	}

	@RequestMapping("/504")
	public String error504() {
		return "504";
	}

	@RequestMapping("/505")
	public String error505() {
		return "505";
	}

	@Override
	public String getErrorPath() {
		return PATH;
	}

}