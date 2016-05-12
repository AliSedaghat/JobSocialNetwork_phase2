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
    List<Jobseeker> getall() {
        return factory.getCurrentSession()
                .getNamedQuery("Jobseeker.findAll").list();
    }
    
}
