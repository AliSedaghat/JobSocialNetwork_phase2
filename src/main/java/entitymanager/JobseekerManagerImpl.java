/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.JobSeekerDAOImpl;

/**
 *
 * @author SAEED
 */
public class JobseekerManagerImpl implements JobseekerManager{

    private JobSeekerDAOImpl jobSeekerDAO;
    
    @Override
    public Integer getCountAll() {
        return jobSeekerDAO.getCountAll();
    }
    
}
