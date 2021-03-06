package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.dao.CountyDAO;
import com.skilldistillery.jpacrud.entities.County;

@Controller
public class CountyController {

	@Autowired
	private CountyDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
//		model.addAttribute("county", dao.findAll());
		return "home";
	}

	@RequestMapping(path = { "getAllCounty.do" })
	public String showAll(Model model) {
		List<County> c = dao.findAll();
		model.addAttribute("county", c);
		return "showResults";
	}

	@RequestMapping(path = { "getCounty.do" })
	public String showCounty(Integer countyId, Model model) {
		model.addAttribute("county", dao.findById(countyId));
		return "showCounty";
	}

	@RequestMapping(path = { "deleteCounty.do" }, method = RequestMethod.GET)
	public String deleteCounty(Integer countyId, Model model) {
		County c1 = null;
		c1 = dao.findById(countyId);
		if (c1 != null) {
			dao.delete(c1);
			model.addAttribute("county", c1);
		}
		return "deleteResults";
	}

	@RequestMapping(path = { "createCounty.do" }, method = RequestMethod.POST)
	public String createCounty(County county, Model model) {
		County c = dao.create(county);
		model.addAttribute("county", c);
		return "showCreateResults";
	}
	
	
	@RequestMapping(path = { "countyToEdit.do" }, method = RequestMethod.GET)
	public String countyUpdating(int countyId, Model model) {
		County c = dao.findById(countyId);
		model.addAttribute("county", c);
		return "updatingCounty";
	}
	
	@RequestMapping(path = { "updatingCounty.do" }, method = RequestMethod.POST)
	public String countyUpdate(@RequestParam("countyId") int countyId, County county, Model model) {
		County c = dao.findById(countyId);
		c.setCountyName(county.getCountyName());
		c.setDoe(county.getDoe());
		c.setDoeFawn(county.getDoeFawn());
		c.setAntleredBuck(county.getAntleredBuck());
		c.setButtonBuck(county.getButtonBuck());
		c.setShedBuck(county.getShedBuck());
		c.setTotalDeer(county.getTotalDeer());
		County cpass = dao.updateCounty(c);
		model.addAttribute("county", cpass);
		return "updatedCounty";
	}
}
