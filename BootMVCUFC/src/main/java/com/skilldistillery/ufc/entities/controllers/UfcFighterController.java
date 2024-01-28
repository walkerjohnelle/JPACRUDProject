package com.skilldistillery.ufc.entities.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.ufc.entities.UfcFighters;
import com.skilldistillery.ufc.entities.data.UfcFighterDAO;

@Controller
public class UfcFighterController {
	@Autowired
	private UfcFighterDAO fighterDAO;

	@RequestMapping(path = { "", "/", "home.do" })
	public String index() {

		return "home";
	}

	@GetMapping(path = "getFighter.do", params = "id")
	public String getFighterById(@RequestParam("id") int id, Model model) {
		String viewName = "show";
		UfcFighters fighter = fighterDAO.findById(id);
		model.addAttribute("fighter", fighter);
		return viewName;
	}

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String getAllFighters(Model model) {
		List<UfcFighters> fighters = fighterDAO.findAll();
		model.addAttribute("fighters", fighters);
		return "home";
	}

	@PostMapping(path = "createFighterForm.do")
	public String createFighterForm(@ModelAttribute("fighter") UfcFighters fighter, RedirectAttributes redir) {
	    UfcFighters newFighter = fighterDAO.createFighter(fighter);

	    if (newFighter != null) {
	        // Redirect to the details page for the newly created fighter
	        return "redirect:getFighter.do?id=" + newFighter.getId();
	    } else {
	        // Add an error message to be displayed on the form page
	        redir.addFlashAttribute("error", "Failed to create a new fighter. Please try again.");
	        return "redirect:createFighter.do";
	    }
	}


	@RequestMapping(path = "createFighter.do")
	public String createFighter(Model model) {
		model.addAttribute("fighter", new UfcFighters());
		return "createFighter";
	}
}