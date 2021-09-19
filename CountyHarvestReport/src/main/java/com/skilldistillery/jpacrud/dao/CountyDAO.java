package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.County;

public interface CountyDAO {

		County findById(int countyId);
		County create(County county);
		List<County> findAll();
		County delete(County county);
}
