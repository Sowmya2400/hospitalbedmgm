package com.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Model
{
	String name;
	String area;
	int nob;
	String specialist;
	int nod;
	
	public Model()
	{
		super();
		// TODO Auto-generated constructor stub
	}
	public Model(String name, String area, int nob, String specialist, int nod) {
		super();
		this.name = name;
		this.area = area;
		this.nob = nob;
		this.specialist = specialist;
		this.nod = nod;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getNob() {
		return nob;
	}
	public void setNob(int nob) {
		this.nob = nob;
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public int getNod() {
		return nod;
	}
	public void setNod(int nod) {
		this.nod = nod;
	}
	
	
}
