/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Job;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class JobDAOImpl extends GenericDAOImpl<Job, Integer>{

    public JobDAOImpl() {
        super(Job.class);
    }
    
    public JobDAOImpl(Class<Job> type) {
        super(type);
    }

    @Override
    public List<Job> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Long getCountAll() {
        return (Long) factory.getCurrentSession()
                .getNamedQuery("Job.count").list().get(0);
    }
    
}
