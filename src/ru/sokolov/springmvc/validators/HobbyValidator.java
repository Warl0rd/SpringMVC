package ru.sokolov.springmvc.validators;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class HobbyValidator implements ConstraintValidator<IsValidHobby, String> {

	@Override
	public void initialize(IsValidHobby arg0) {}

	@Override
	public boolean isValid(String studentHobby, ConstraintValidatorContext ctx) {
		
		if (studentHobby == null) {
			
			return false;
		}
		
		if (studentHobby.matches("Chess|Music|Football|Cricket|Hockey")) {
			
			return true;
		} else {
			
			return false;
		}
	}

}
