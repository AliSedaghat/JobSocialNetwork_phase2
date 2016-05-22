/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.EmployerJobFieldDAOImpl;
import databasemodels.Employerjobfield;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SAEED
 */
@Service
public class EmployerJobFieldManagerImpl implements EmployerJobFieldManager{
    @Autowired
    private EmployerJobFieldDAOImpl employerJobFieldDAO;
    
    @Override
    @Transactional
    public Integer create(Employerjobfield employerjobfield) {
        return employerJobFieldDAO.create(employerjobfield);
    }

    @Override
    @Transactional
    public void delete(Employerjobfield employerjobfield) {
        employerJobFieldDAO.delete(employerjobfield);
    }
    
}
