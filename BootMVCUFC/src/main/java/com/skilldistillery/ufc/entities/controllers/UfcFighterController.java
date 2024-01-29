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

	@GetMapping("createFighter.do")
	public String createFighterForm(Model model) {
		model.addAttribute("fighter", new UfcFighters());
		return "createFighter";
	}

	@PostMapping("createFighter.do")
	public String processCreateFighterForm(@ModelAttribute("fighter") UfcFighters fighter, RedirectAttributes redir) {
		UfcFighters newFighter = fighterDAO.createFighter(fighter);

		if (newFighter != null) {
			return "redirect:getFighter.do?id=" + newFighter.getId();
		} else {
			redir.addFlashAttribute("error", "Failed to create a new fighter. Please try again.");
			return "redirect:createFighter.do";
		}
	}

	@GetMapping("updateFighter.do")
	public String updateFighterForm(@RequestParam(name = "id") int id, Model model) {
	    UfcFighters fighter = fighterDAO.findById(id);
	    System.out.println("ID received: " + id);
	    model.addAttribute("fighter", fighter);
	    return "updateFighter";
	}


	@PostMapping("updateFighter.do")
	public String processUpdateFighterForm(@ModelAttribute("fighter") UfcFighters updatedFighter,
			RedirectAttributes redir) {
		UfcFighters fighter = fighterDAO.updateFighter(updatedFighter.getId(), updatedFighter);

		if (fighter != null) {
			return "redirect:getFighter.do?id=" + fighter.getId();
		} else {
			redir.addFlashAttribute("error", "Failed to update the fighter. Please try again.");
			return "redirect:updateFighter.do?id=" + updatedFighter.getId();
		}
	}
	
	@GetMapping("deleteFighter.do")
	public String deleteFighterForm(@RequestParam(name = "id") int id, Model model) {
	    UfcFighters fighter = fighterDAO.findById(id);
	    model.addAttribute("fighter", fighter);
	    return "deleteFighter";
	}


	@PostMapping("deleteFighter.do")
	public String deleteFighter(@RequestParam(name = "id") int id, RedirectAttributes redir) {
	    System.out.println("Deleting fighter with ID: " + id);
	    boolean isDeleted = fighterDAO.deleteFighter(id);

	    if (isDeleted) {
	        System.out.println("Fighter deleted successfully.");
	        redir.addFlashAttribute("message", "Fighter deleted successfully.");
	        return "redirect:/displayMessage?isDeleted=" + isDeleted;
	    } else {
	        System.out.println("Failed to delete fighter.");
	        redir.addFlashAttribute("error", "Failed to delete fighter. Please try again.");
	        return "redirect:/displayMessage?isDeleted=" + (!isDeleted);
	    }
	}
	

}