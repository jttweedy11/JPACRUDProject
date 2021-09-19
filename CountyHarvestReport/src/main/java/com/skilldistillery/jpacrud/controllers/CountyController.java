package com.skilldistillery.jpacrud.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacrud.dao.CountyDAO;
import com.skilldistillery.jpacrud.entities.County;

@Controller
public class CountyController {
	
	
	@Autowired
	private CountyDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("county", dao.findAll());
		return "home";
	}
	
	@RequestMapping(path = {"getCounty.do"})
	public String showCounty(Integer countyId, Model model) {
		model.addAttribute("county", dao.findById(countyId));
		return "showCounty";
	}
	@RequestMapping(path = {"createCounty.do"}, method = RequestMethod.POST)
	public String createCounty(County county, Model model) {
		County c = dao.create(county);
		model.addAttribute("county", c);
		return "showCreateResults";
	}
}
