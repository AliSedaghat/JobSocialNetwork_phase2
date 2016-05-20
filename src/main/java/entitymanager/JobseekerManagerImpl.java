/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.JobSeekerDAOImpl;

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
    
}
