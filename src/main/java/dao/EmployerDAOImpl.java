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
    public List<Employer> getAll() {
        return factory.getCurrentSession()
                .getNamedQuery("Employer.findAll").list();
    }

    @Override
    public Integer getCountAll() {
        return (Integer) factory.getCurrentSession()
                .getNamedQuery("Employer.count").list().get(0);
    }
    
    public Employer getByAccountId(Integer accountId){
        return  (Employer) factory.getCurrentSession()
                .getNamedQuery("Employer.findByAccountId")
                    .setString("accountId", accountId.toString()).list().get(0);
    }
    
}
