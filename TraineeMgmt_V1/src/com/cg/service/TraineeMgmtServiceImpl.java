package com.cg.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.dao.TraineeMgmtDao;
import com.cg.entities.Trainee;

@Service
@Transactional
public class TraineeMgmtServiceImpl implements TraineeMgmtService 
{
	@Autowired
	TraineeMgmtDao tdao;
	@Override
	public List<Trainee> FetchAllTrainee() 
	{
		return tdao.FetchAllTrainee();
	}

	@Override
	public void addTrainee(Trainee tdetails) 
	{
		tdao.addTrainee(tdetails);
	}
	@Override
	public void deleteId(int id)
	{
		tdao.deleteId(id);
	}
	
	@Override
	public List<Trainee> search(int id)
	{
		return tdao.search(id);
	}
	
	@Override
	public void update(Trainee tdetails)
	{
		tdao.update(tdetails);
	}
	
}
