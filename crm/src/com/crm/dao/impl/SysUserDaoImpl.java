package com.crm.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.crm.dao.SysUserDao;
import com.crm.pojo.SysUser;

public class SysUserDaoImpl implements SysUserDao {
	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	//---
	//---
	//---
	
	@Override
	public void add(SysUser sysUser) {
		Session session = sessionFactory.getCurrentSession();
		session.save(sysUser);
	}

	@Override
	public void delete(SysUser sysUser) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(sysUser);
	}

	@Override
	public void update(SysUser sysUser) {
		Session session = sessionFactory.getCurrentSession();
		session.update(sysUser);
	}

	@Override
	public SysUser findById(long id) {
		Session session = sessionFactory.openSession();
		SysUser sysUser = session.get(SysUser.class, id);
		return sysUser;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SysUser> findAll() {
		Session session = sessionFactory.openSession();
		Query<SysUser> query = session.createQuery("FROM SysUser");
		List<SysUser> sysUsers = query.list();
		return sysUsers;
	}

}