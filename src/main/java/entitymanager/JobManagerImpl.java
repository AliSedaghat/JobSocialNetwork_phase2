/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.JobDAOImpl;

/**
 *
 * @author SAEED
 */
public class JobManagerImpl implements JobManager{

    private JobDAOImpl jobDAO;
    
    @Override
    public Integer getCountAll() {
        return jobDAO.getCountAll();
    }
    
}
