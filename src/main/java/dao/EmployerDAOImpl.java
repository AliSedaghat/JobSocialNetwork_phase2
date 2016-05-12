/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Employer;
import java.util.List;

/**
 *
 * @author SAEED
 */
public class EmployerDAOImpl extends GenericDAOImpl<Employer, Integer>{

    public EmployerDAOImpl(Class<Employer> type) {
        super(type);
    }

    @Override
    List<Employer> getall() {
        return factory.getCurrentSession()
                .getNamedQuery("Employer.findAll").list();
    }
    
    
    
}
