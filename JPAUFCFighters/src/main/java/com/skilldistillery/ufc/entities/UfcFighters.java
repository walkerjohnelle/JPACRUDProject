package com.skilldistillery.ufc.entities;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "ufc_fighters")
public class UfcFighters {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	private int age;
	private String weightclass;
	private int wins;
	private int losses;
	private int draws;
	private int knockouts;
	private int submissions;
	private int decisions;
	private String nationality;
	@Column(name = "fighting_style")
	private String fightingStyle;
	private boolean champion;
	private boolean active;

	public UfcFighters() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getWeightclass() {
		return weightclass;
	}

	public void setWeightclass(String weightclass) {
		this.weightclass = weightclass;
	}

	public int getWins() {
		return wins;
	}

	public void setWins(int wins) {
		this.wins = wins;
	}

	public int getLosses() {
		return losses;
	}

	public void setLosses(int losses) {
		this.losses = losses;
	}

	public int getDraws() {
		return draws;
	}

	public void setDraws(int draws) {
		this.draws = draws;
	}

	public int getKnockouts() {
		return knockouts;
	}

	public void setKnockouts(int knockouts) {
		this.knockouts = knockouts;
	}

	public int getSubmissions() {
		return submissions;
	}

	public void setSubmissions(int submissions) {
		this.submissions = submissions;
	}

	public int getDecisions() {
		return decisions;
	}

	public void setDecisions(int decisions) {
		this.decisions = decisions;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getFightingStyle() {
		return fightingStyle;
	}

	public void setFightingStyle(String fightingStyle) {
		this.fightingStyle = fightingStyle;
	}

	public boolean isChampion() {
		return champion;
	}

	public void setChampion(boolean isChampion) {
		this.champion = isChampion;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean isActive) {
		this.active = isActive;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UfcFighters other = (UfcFighters) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "UFC Fighter ID: " + id + "|| Name: " + firstName + " " + lastName + "|| Age: " + age
				+ "|| Weightclass: " + weightclass + "|| (Wins-Losses-Draws): (" + wins + "-" + losses + "-" + draws
				+ ")|| KOs: " + knockouts + "|| Submissions: " + submissions + "|| Decisions: " + decisions
				+ "|| Nationality: " + nationality + "|| Fighting Style: " + fightingStyle + "|| Current Champion: "
				+ champion + "|| Active: " + active;
	}

}
