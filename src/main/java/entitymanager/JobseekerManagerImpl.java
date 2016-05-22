/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.JobSeekerDAOImpl;
import databasemodels.Jobseeker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SAEED
 */
@Service
public class JobseekerManagerImpl implements JobseekerManager{
    @Autowired
    private JobSeekerDAOImpl jobSeekerDAO;
    
    @Override
    @Transactional
    public Integer getCountAll() {
        return jobSeekerDAO.getCountAll();
    }
    
    @Override
    @Transactional
    public Integer create(Jobseeker jobseeker) {
        return jobSeekerDAO.create(jobseeker);
    }
    
    @Override
    @Transactional
    public void update(Jobseeker jobseeker) {
        jobSeekerDAO.update(jobseeker);
    }
    
    @Override
    @Transactional
    public Jobseeker get(Integer id) {
        return jobSeekerDAO.read(id);
    }

    @Override
    @Transactional
    public void createOrUpdate(Jobseeker jobseeker) {
        jobSeekerDAO.createOrUpdate(jobseeker);
    }

    @Override
    @Transactional
    public Jobseeker getbyAccountId(Integer accountId) {
        return jobSeekerDAO.getByAccountId(accountId);
    }
    
}
