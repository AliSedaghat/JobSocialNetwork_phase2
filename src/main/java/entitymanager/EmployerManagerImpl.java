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
public class EmployerManagerImpl{
    @Autowired
    private EmployerDAOImpl employerDAO;
    
    @Transactional
    public Long getCountAll() {
        return employerDAO.getCountAll();
    }

    @Transactional
    public void createOrUpdate(Employer employer) {
        employerDAO.createOrUpdate(employer);
    }

    @Transactional
    public Employer getbyAccountId(Integer accountId) {
        return employerDAO.getByAccountId(accountId);
    }
    
    @Transactional
    public Employer get(Integer id) {
        return employerDAO.read(id);
    }
}
