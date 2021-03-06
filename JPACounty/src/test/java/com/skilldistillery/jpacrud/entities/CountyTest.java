package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CountyTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private County county;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACounty");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		county = em.find(County.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		county = null;
	}

	@Test
	void test() {
		assertNotNull(county);
		assertEquals("Adair", county.getCountyName());
		assertEquals(540, county.getDoe());
		assertEquals(22, county.getDoeFawn());
		assertEquals(556, county.getAntleredBuck());
		assertEquals(73, county.getButtonBuck());
		assertEquals(5, county.getShedBuck());
		assertEquals(1196, county.getTotalDeer());
		
	}

}
