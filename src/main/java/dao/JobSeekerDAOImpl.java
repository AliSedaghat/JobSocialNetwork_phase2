/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Jobseeker;
import java.util.List;

/**
 *
 * @author SAEED
 */
public class JobSeekerDAOImpl extends GenericDAOImpl<Jobseeker, Integer>{

    public JobSeekerDAOImpl(Class<Jobseeker> type) {
        super(type);
    }

    @Override
    public List<Jobseeker> getAll() {
        return factory.getCurrentSession()
                .getNamedQuery("Jobseeker.findAll").list();
    }
 
    @Override
    public Integer getCountAll() {
        return (Integer) factory.getCurrentSession()
                .getNamedQuery("Jobseeker.count").list().get(0);
    }
    
    public Jobseeker getByAccountId(Integer accountId){
        return   (Jobseeker) factory.getCurrentSession()
                .getNamedQuery("Jobseeker.findByAccountId")
                    .setString("accountId", accountId.toString()).list().get(0);
    }
}
