package com.cg.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContexts;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.entities.Trainee;

@Repository
public class TraineeMgmtDaoImpl implements TraineeMgmtDao
{
	@PersistenceContext
	private EntityManager em;
	@Override
	public List<Trainee> FetchAllTrainee()
	{
		String jpql="select m from Trainee m";
		TypedQuery<Trainee> query=em.createQuery(jpql,Trainee.class);
		em.flush();
		return query.getResultList();
		
	}
	@Override
	public void addTrainee(Trainee tdetails) 
	{
		em.persist(tdetails);
		em.close();
	}
	
	@Override
	public void deleteId(int id)
	{
		Query query = em.createNativeQuery("DELETE FROM TRAINEE WHERE ID = " + id);
		query.executeUpdate();
	}
	
	@Override
	public List<Trainee> search(int id)
	{
		String jpql="select m from Trainee m where ID = "+ id;
		TypedQuery<Trainee> query=em.createQuery(jpql,Trainee.class);
		em.flush();
		return query.getResultList();
	}
	
	@Override
	public void update(Trainee tdetails)
	{
		int id=tdetails.getId();
		Query query = em.createNativeQuery("DELETE FROM TRAINEE WHERE ID = " + id);
		query.executeUpdate();
		em.persist(tdetails);
		em.close();
	}
	
	
	
}
