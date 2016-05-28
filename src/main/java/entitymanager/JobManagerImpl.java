/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.JobDAOImpl;
import databasemodels.Job;

/**
 *
 * @author SAEED
 */
@Service
public class JobManagerImpl {
    @Autowired
    private JobDAOImpl jobDAO;
    
    @Transactional
    public Long getCountAll() {
        return jobDAO.getCountAll();
    }
    
    @Transactional
    public void createOrUpdate(Job job) {
        jobDAO.createOrUpdate(job);
    }
    
    @Transactional
    public Job get(Integer id) {
        return jobDAO.read(id);
    }
}
