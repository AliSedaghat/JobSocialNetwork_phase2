/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author SAEED
 * @param <T> kind of class
 * @param <PK> primary key of the class
 */
public class GenericDaoImpl<T, PK extends Serializable>
    implements GenericDao<T, PK>{

    protected Class<T> type;
    protected SessionFactory factory;
    
    public GenericDaoImpl(Class<T> type) {
        this.type = type;
        try{
            factory = new Configuration().configure().buildSessionFactory();
        }catch (Throwable ex) { 
           System.err.println("Failed to create sessionFactory object." + ex);
           throw new ExceptionInInitializerError(ex);
        }
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
    
}