package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.County;

public interface CountyDAO {

		County findById(int countyId);
		List<County> findAll();
}
