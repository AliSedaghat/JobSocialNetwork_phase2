/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Employer;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class EmployerDAOImpl extends GenericDAOImpl<Employer, Integer>{

    public EmployerDAOImpl() {
        super(Employer.class);
    }
    
    public EmployerDAOImpl(Class<Employer> type) {
        super(type);
    }

    @Override
    public List<Employer> getAll() {
        return factory.getCurrentSession()
                .getNamedQuery("Employer.findAll").list();
    }

    @Override
    public Long getCountAll() {
        return (Long) factory.getCurrentSession()
                .getNamedQuery("Employer.count").list().get(0);
    }
    
    public Employer getByAccountId(Integer accountId){
        try{
            return  (Employer) factory.getCurrentSession()
                    .getNamedQuery("Employer.findByAccountId")
                        .setString("accountId", accountId.toString()).list().get(0);
        }catch(IndexOutOfBoundsException e){
            return null;
        }
    }
    
}
