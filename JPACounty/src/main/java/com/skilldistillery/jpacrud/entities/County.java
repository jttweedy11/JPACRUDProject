package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class County {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "county_name")
	private String countyName;
	@Column(name = "doe")
	private Integer doe;
	@Column(name = "doe_fawn")
	private Integer doeFawn;
	@Column(name = "antlered_buck")
	private Integer antleredBuck;
	@Column(name = "button_buck")
	private Integer buttonBuck;
	@Column(name = "shed_buck")
	private Integer shedBuck;
	@Column(name = "total_deer")
	private Integer totalDeer;
	
	
	//TODO: New properties, add getters and setters and constructor
	public County() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountyName() {
		return countyName;
	}
	public void setCountyName(String countyName) {
		this.countyName = countyName;
	}
	public Integer getDoe() {
		return doe;
	}
	public void setDoes(Integer doe) {
		this.doe = doe;
	}
	public Integer getDoeFawn() {
		return doeFawn;
	}
	public void setDoeFawn(Integer doeFawn) {
		this.doeFawn = doeFawn;
	}
	public Integer getAntleredBuck() {
		return antleredBuck;
	}
	public void setAntleredBuck(Integer antleredBuck) {
		this.antleredBuck = antleredBuck;
	}
	public Integer getButtonBuck() {
		return buttonBuck;
	}
	public void setButtonBuck(Integer buttonBuck) {
		this.buttonBuck = buttonBuck;
	}
	public Integer getShedBuck() {
		return shedBuck;
	}
	public void setShedBuck(Integer shedBuck) {
		this.shedBuck = shedBuck;
	}
	public Integer getTotalDeer() {
		return totalDeer;
	}
	public void setTotalDeer(Integer totalDeer) {
		this.totalDeer = totalDeer;
	}
	@Override
	public String toString() {
		return "County [id=" + id + ", countyName=" + countyName + ", does=" + doe + ", doeFawn=" + doeFawn
				+ ", antleredBuck=" + antleredBuck + ", buttonBuck=" + buttonBuck + ", shedBuck=" + shedBuck
				+ ", totalDeer=" + totalDeer + "]";
	}
	
}
