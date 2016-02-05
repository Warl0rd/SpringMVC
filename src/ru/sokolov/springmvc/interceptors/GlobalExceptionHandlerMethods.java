package ru.sokolov.springmvc.interceptors;

import java.io.IOException;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandlerMethods {
	@ExceptionHandler(value=NullPointerException.class)
	public String handleNullPointerException(Exception e) {
		
		System.out.println("Null Pointer Exception occured: "+e);
		
		return "exceptions/NullPointerException";
	}
	
	@ExceptionHandler(value=IOException.class)
	public String handleIOException(Exception e) {
		
		System.out.println("IO Exception occured: "+e);
		
		return "exceptions/IOException";
	}
	
	@ExceptionHandler(value=Exception.class)
	public String handleException(Exception e) {
		
		System.out.println("Unknown Exception occured: "+e);
		
		return "exceptions/Exception";
	}
}
