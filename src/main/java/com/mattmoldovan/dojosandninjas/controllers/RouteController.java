package com.mattmoldovan.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.mattmoldovan.dojosandninjas.models.Dojo;
import com.mattmoldovan.dojosandninjas.models.Ninja;
import com.mattmoldovan.dojosandninjas.services.DojoService;
import com.mattmoldovan.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class RouteController {

	@Autowired
	private NinjaService ninjaService;

	@Autowired
	private DojoService dojoService;

	@GetMapping("/dojos/new")
	public String renderCreateDojo(Model model) {
		model.addAttribute("newDojo", new Dojo());
		return "createDojo.jsp";
	}

	@PostMapping("/process/createDojo")
	public String processCreateDojo(@Valid @ModelAttribute("newDojo") Dojo newDojo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "createDojo.jsp";
		} else {
			dojoService.createDojo(newDojo);
			return "redirect:/dojos/new";
		}
	}
	
	@GetMapping("/ninjas/new")
	public String renderCreateNinja(Model model) {
		model.addAttribute("newNinja", new Ninja());
		model.addAttribute("dojoList", dojoService.allDojos());
		return"createNinja.jsp";
	}
	
	@PostMapping("/process/createNinja")
	public String processCreateNinja(@Valid @ModelAttribute("newNinja") Ninja newNinja, BindingResult result, Model model) {
		if(result.hasErrors()){
			model.addAttribute("dojoList", dojoService.allDojos());
			return "createNinja.jsp";
		} else {
			ninjaService.createNinja(newNinja);
			return "redirect:/ninjas";
		}
	}
	
	@GetMapping("/ninjas")
	public String allNinjas(Model model) {
		model.addAttribute("ninjaList", ninjaService.allNinjas());
		return"allNinja.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String dojoDetailsPage(@PathVariable("id")Long id, Model model) {
		model.addAttribute("oneDojo", dojoService.findDojo(id));
		return"showDojosNinjas.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
