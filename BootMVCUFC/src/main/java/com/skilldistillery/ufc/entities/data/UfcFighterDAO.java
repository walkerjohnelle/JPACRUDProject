package com.skilldistillery.ufc.entities.data;

import java.util.List;

import com.skilldistillery.ufc.entities.UfcFighters;

public interface UfcFighterDAO {
	UfcFighters findById(int id);

	List<UfcFighters> findAll();
	
	UfcFighters createFighter(UfcFighters fighter);
	
	
}
