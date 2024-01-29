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

		em.persist(fighter);

		return fighter;
	}

	@Override
	public UfcFighters updateFighter(int id, UfcFighters updatedFighter) {
		if (updatedFighter == null) {
			return null;
		}

		UfcFighters managed = em.find(UfcFighters.class, id);

		managed.setFirstName(updatedFighter.getFirstName());
		managed.setLastName(updatedFighter.getLastName());
		managed.setAge(updatedFighter.getAge());
		managed.setWeightclass(updatedFighter.getWeightclass());
		managed.setNationality(updatedFighter.getNationality());
		managed.setFightingStyle(updatedFighter.getFightingStyle());
		managed.setWins(updatedFighter.getWins());
		managed.setLosses(updatedFighter.getLosses());
		managed.setDraws(updatedFighter.getDraws());
		managed.setKnockouts(updatedFighter.getKnockouts());
		managed.setSubmissions(updatedFighter.getSubmissions());
		managed.setDecisions(updatedFighter.getDecisions());
		managed.setChampion(updatedFighter.getChampion());
		managed.setActive(updatedFighter.getActive());

		return updatedFighter;
	}

	@Override
	public boolean deleteFighter(int id) {
		UfcFighters managed = em.find(UfcFighters.class, id);

		em.remove(managed);

		return true;
	}

}
