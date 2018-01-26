package com.techdroit.quizccint.question;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.techdroit.quizccint.misc.ApachePOIExcelRead;
import com.techdroit.quizccint.misc.QuestionMisc;
import com.techdroit.quizccint.quiz.section.IQuizSectionService;
import com.techdroit.quizccint.quiz.section.QuizSection;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class UploadController {

    //Save the uploaded file to this folder
    //private static String UPLOADED_FOLDER = "F://temp//";
    private static String UPLOADED_FOLDER = "E://files//quiz//";
    //private static String UPLOADED_FOLDER = "/temp";
    
    @Autowired
	private IQuizSectionService quizSectionService;

	@Autowired
	private IQuestionService questionService;
    
    private final Logger logger = Logger.getLogger(UploadController.class);

    @GetMapping("/upload")
    public String index() {
        return "file-upload";
    }

    @PostMapping("/upload") // //new annotation since 4.3
    public String singleFileUpload(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes, Model model) {

        if (file.isEmpty()) {
            //redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            //return "redirect:uploadStatus";
        	model.addAttribute("message", "Please select a file to upload");
            return "file-upload";
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/uploadStatus";
    }

    
    private void updateNumberOfQuestions(Question question) {

		QuizSection quizSection = quizSectionService.getQuizSectionById(question.getSectionId());
		List<Question> questionsList = questionService.getAllQuestionsByQuizIdAndSection(question.getQuizId(),
				question.getSectionId());
		quizSection.setNumberOfQuestions(questionsList.size());
		quizSectionService.updateQuizSection(quizSection);
	}
    
    @GetMapping("/uploadStatus")
    public String uploadStatus(Model model) {
    	
    	try {
    		
    		List<Question> questionList = ApachePOIExcelRead.readQuestionFromExcel();
    		for(Question q : questionList) {
        		Gson gson = new Gson();
        		logger.info(gson.toJson(q, Question.class));
        		questionService.addQuestion(q);
        		updateNumberOfQuestions(q);
        	}
        	model.addAttribute("questionList",questionList);
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    		//logger.error();
    	}
    	
        return "upload-status";
    }
}