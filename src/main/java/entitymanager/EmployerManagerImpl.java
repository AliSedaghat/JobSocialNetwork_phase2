/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.EmployerDAOImpl;
import databasemodels.Employer;

/**
 *
 * @author SAEED
 */
@Service
public class EmployerManagerImpl implements EmployerManager{
    @Autowired
    private EmployerDAOImpl employerDAO;
    
    @Override
    @Transactional
    public Integer getCountAll() {
        return employerDAO.getCountAll();
    }

    @Override
    @Transactional
    public void createOrUpdate(Employer employer) {
        employerDAO.createOrUpdate(employer);
    }

    @Override
    @Transactional
    public Employer getbyAccountId(Integer accountId) {
        return employerDAO.getByAccountId(accountId);
    }
    
    @Override
    @Transactional
    public Employer get(Integer id) {
        return employerDAO.read(id);
    }
    
    
    
}
