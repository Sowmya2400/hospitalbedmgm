package com.method;

import java.util.ArrayList;

import com.model.Model;

public class Method
{
	ArrayList<Model> list=new ArrayList<Model>();
	public ArrayList<Model> mymethod(Model stud)
	{
		list.add(stud);
		return list;
	}
}
