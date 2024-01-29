package com.skilldistillery.ufc.entities.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UfcMessageController {

	    @GetMapping("displayMessage")
	    public String displayMessage(@RequestParam(name = "isDeleted", required = false) Boolean isDeleted, Model model) {
	        if (isDeleted != null && isDeleted) {
	            model.addAttribute("message", "Fighter deleted successfully.");
	        } else {
	            model.addAttribute("error", "Failed to delete fighter. Please try again.");
	        }
	        return "displayMessage";
	    }
	}


