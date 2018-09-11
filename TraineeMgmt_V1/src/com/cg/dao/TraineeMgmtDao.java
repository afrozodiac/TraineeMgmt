package com.cg.dao;

import java.util.List;

import com.cg.entities.Trainee;

public interface TraineeMgmtDao  
{
	public List<Trainee> FetchAllTrainee();
	public void addTrainee(Trainee tdetails);
	void deleteId(int id);
	List<Trainee> search(int id);
	void update(Trainee tdetails);
}
