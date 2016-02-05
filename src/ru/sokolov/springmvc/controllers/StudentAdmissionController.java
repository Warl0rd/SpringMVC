package ru.sokolov.springmvc.controllers;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ru.sokolov.springmvc.models.Student;
import ru.sokolov.springmvc.validators.StudentNameEditor;

@Controller
public class StudentAdmissionController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		//Not include the field in the model
//		binder.setDisallowedFields(new String[] {"studentMobile"});
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
		binder.registerCustomEditor(Date.class, "studentDOB", new CustomDateEditor(dateFormat, false));
		binder.registerCustomEditor(String.class,  "studentName", new StudentNameEditor());
	}
	
	@RequestMapping(value="/admissionForm.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm() throws Exception {
		
//		for testing
//		String exceprion = "null";
//		if ("null".equals(exceprion)) {
//			
//			throw new ArithmeticException();
//		}
		
		ModelAndView model = new ModelAndView("AdmissionForm");
		
		return model;
	}
	
	@ModelAttribute
	public void addingCommonObject(Model model) {
		
		model.addAttribute("headerMessage", "Warlord college of engeneering, Russia");
	}
	
	@RequestMapping(value="/submitAdmissionForm.html", method=RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@Valid @ModelAttribute("student") Student student,
			BindingResult result) {
		
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("AdmissionForm");
			return model;
		}
		
		ModelAndView model = new ModelAndView("AdmissionSuccess");
		
		return model;
	}
	
	@ExceptionHandler(value=NullPointerException.class)
	public String handleNullPointerException(Exception e) {
		
		System.out.println("Null Pointer Exception occured: "+e);
		
		return "NullPointerException";
	}
	
	@ExceptionHandler(value=IOException.class)
	public String handleIOException(Exception e) {
		
		System.out.println("IO Exception occured: "+e);
		
		return "IOException";
	}
	
	@ExceptionHandler(value=Exception.class)
	public String handleException(Exception e) {
		
		System.out.println("Unknown Exception occured: "+e);
		
		return "Exception";
	}
}
