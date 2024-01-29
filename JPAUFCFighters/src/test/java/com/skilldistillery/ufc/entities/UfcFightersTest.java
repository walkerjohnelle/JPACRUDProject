package com.skilldistillery.ufc.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class UfcFightersTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private UfcFighters ufcFighters;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("UFCFighters");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		ufcFighters = em.find(UfcFighters.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	void test() {
		assertNotNull(ufcFighters);
		assertEquals("Islam", ufcFighters.getFirstName());
		assertEquals("Makhachev", ufcFighters.getLastName());
		assertEquals(32, ufcFighters.getAge());
		assertEquals("Russian", ufcFighters.getNationality());
		assertEquals("Lightweight", ufcFighters.getWeightclass());
		assertEquals(25, ufcFighters.getWins());
		assertEquals(1, ufcFighters.getLosses());
		assertEquals(0, ufcFighters.getDraws());
		assertEquals(5, ufcFighters.getKnockouts());
		assertEquals(11, ufcFighters.getSubmissions());
		assertEquals(9, ufcFighters.getDecisions());
		assertTrue(ufcFighters.getChampion(), "Test case should be true");
		assertTrue(ufcFighters.getActive(), "Test case should be active");

	}

}
