/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import java.util.List;
import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 *
 * @author SAEED
 * @param <T> kind of class
 * @param <PK> primary key of the class
 */
@Service
public abstract class GenericDAOImpl<T, PK extends Serializable>
    implements GenericDAO<T, PK>{

    protected Class<T> type;
    
    @Autowired
    protected SessionFactory factory;
    
    public GenericDAOImpl(Class<T> type) {
        this.type = type;        
    }
    
    @Override
    public PK create(T o) {
        return (PK) factory.getCurrentSession().save(o);
    }

    @Override
    public T read(PK id) {
        return (T) factory.getCurrentSession().get(type, id);
    }

    @Override
    public void update(T o) {
        factory.getCurrentSession().update(o);
    }

    @Override
    public void delete(T o) {
        factory.getCurrentSession().delete(o);
    }
    
    @Override
    public void createOrUpdate(T o){
        factory.getCurrentSession().saveOrUpdate(o);
    }
    
    public abstract List<T> getAll();
    
    public abstract Integer getCountAll();
}
