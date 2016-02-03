package ru.sokolov.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ru.sokolov.springmvc.models.Student;

@Controller
public class StudentAdmissionController {
	
	@RequestMapping(value="/admissionForm.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		
		ModelAndView model = new ModelAndView("AdmissionForm");
		
		return model;
	}
	
	@ModelAttribute
	public void addingCommonObject(Model model) {
		
		model.addAttribute("headerMessage", "Warlord college of engeneering, Russia");
	}
	
	@RequestMapping(value="/submitAdmissionForm.html", method=RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("student") Student student,
			BindingResult result) {
		
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("AdmissionForm");
			return model;
		}
		
		ModelAndView model = new ModelAndView("AdmissionSuccess");
		
		return model;
	}
}
