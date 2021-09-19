package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.County;

@Service
@Transactional
public class CountyDaoImpl implements CountyDAO{
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public County findById(int countyId) {
		// TODO Auto-generated method stub
		return em.find(County.class, countyId);
	}

	@Override
	public List<County> findAll() {
		// TODO Auto-generated method stub
		List<County> counties;
		String jpql = "Select c from County c";
		return em.createQuery(jpql, County.class).getResultList();
	}

	@Override
	public County create(County county) {
		// TODO Auto-generated method stub
		em.persist(county);
		em.flush();
		return county;
	}

}
