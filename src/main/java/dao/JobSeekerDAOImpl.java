/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Jobseeker;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class JobSeekerDAOImpl extends GenericDAOImpl<Jobseeker, Integer>{

    public JobSeekerDAOImpl() {
        super(Jobseeker.class);
    }
    
    public JobSeekerDAOImpl(Class<Jobseeker> type) {
        super(type);
    }

    @Override
    public List<Jobseeker> getAll() {
        return factory.getCurrentSession()
                .getNamedQuery("Jobseeker.findAll").list();
    }
 
    @Override
    public Long getCountAll() {
        return (Long) factory.getCurrentSession()
                .getNamedQuery("Jobseeker.count").list().get(0);
    }
    
    public Jobseeker getByAccountId(Integer accountId){
        try{
            return   (Jobseeker) factory.getCurrentSession()
                .getNamedQuery("Jobseeker.findByAccountId")
                    .setString("accountId", accountId.toString()).list().get(0);
        }catch(IndexOutOfBoundsException e){
            return null;
        }
        
    }
}
