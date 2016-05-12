/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author SAEED
 * @param <T> kind of class
 * @param <PK> primary key of the class
 */
public interface GenericDao<T, PK extends Serializable> {
    
    public PK create(T o);
    
    public T read(PK id);
    
    public void update(T o);
    
    public void delete(T o);
    
    List<T> getall();
}
