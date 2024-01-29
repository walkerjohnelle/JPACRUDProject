package com.skilldistillery.ufc.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.ufc.entities.controllers.UfcFighterController;
import com.skilldistillery.ufc.entities.data.UfcFighterDAO;

@SpringBootTest
@Transactional
class BootMvcufcApplicationTests {

    @Autowired
    private UfcFighterController controller;

    @Autowired
    private UfcFighterDAO dao;

    @Test
    void contextLoads() {
        assertNotNull(controller);
    }

    @Test
    void testGetFighterById() {
        UfcFighters fighter = dao.findById(1);
        assertNotNull(fighter);
        assertEquals("Islam", fighter.getFirstName());
        assertEquals("Makhachev", fighter.getLastName());
        assertEquals(32, fighter.getAge());
    }

//    @Test
//    void testGetAllFighters() {
//        String viewName = controller.getAllFighters(null);
//        assertEquals("home", viewName);
//    }
//
//    @Test
//    void testCreateFighterForm() {
//        String viewName = controller.createFighterForm(null);
//        assertEquals("createFighter", viewName);
//    }
//
//    @Test
//    void testProcessCreateFighterForm() {
//        UfcFighters fighter = new UfcFighters();
//        fighter.setFirstName("New");
//        fighter.setLastName("Fighter");
//        fighter.setAge(24);
//        fighter.setFightingStyle("Boxer");
//        fighter.setWeightclass("Middleweight");
//        fighter.setWins(29);
//        fighter.setLosses(0);
//        fighter.setDraws(0);
//        fighter.setKnockouts(11);
//        fighter.setSubmissions(10);
//        fighter.setDecisions(8);
//        fighter.setActive(true);
//        fighter.setChampion(false);
//        String viewName = controller.processCreateFighterForm(fighter, null);
//        assertEquals("redirect:getFighter.do?id=" + fighter.getId(), viewName);
//    }
//
//    @Test
//    void testUpdateFighterForm() {
//        int fighterId = 15;
//        String viewName = controller.updateFighterForm(fighterId, null);
//        assertEquals("updateFighter", viewName);
//    }
//
//    @Test
//    void testProcessUpdateFighterForm() {
//        UfcFighters fighter = new UfcFighters();
//        fighter.setId(15);
//        fighter.setFirstName("Kamaru*");
//        fighter.setLastName("Usman*");
//        String viewName = controller.processUpdateFighterForm(fighter, null);
//        assertEquals("redirect:getFighter.do?id=" + fighter.getId(), viewName);
//    }
//
//    @Test
//    void testDeleteFighterForm() {
//        int fighterId = 1;
//        String viewName = controller.deleteFighterForm(fighterId, null);
//        assertEquals("deleteFighter", viewName);
//    }
//
//    @Test
//    void testDeleteFighter() {
//        // Assuming there is a valid fighter with ID 1 in the database
//        int fighterId = 1;
//        String viewName = controller.deleteFighter(fighterId, null);
//        assertEquals("redirect:/displayMessage?isDeleted=true", viewName);
//    }
}
