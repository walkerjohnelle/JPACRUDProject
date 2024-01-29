package com.skilldistillery.ufc.entities.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.ufc.entities.UfcFighters;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class UfcFighterDAOImpl implements UfcFighterDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public UfcFighters findById(int id) {
		UfcFighters managed = em.find(UfcFighters.class, id);

		return managed;
	}

	@Override
	public List<UfcFighters> findAll() {
		String jpql = "SELECT fighters FROM UfcFighters fighters";

		List<UfcFighters> fighters = em.createQuery(jpql, UfcFighters.class).getResultList();
		return fighters;
	}

	@Override
	public UfcFighters createFighter(UfcFighters fighter) {
		try {

			em.persist(fighter);

			return fighter;
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
}
