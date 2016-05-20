/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.EmployerJobFieldDAOImpl;
import databasemodels.Employerjobfield;

/**
 *
 * @author SAEED
 */
public class EmployerJobFieldManagerImpl implements EmployerJobFieldManager{

    private EmployerJobFieldDAOImpl employerJobFieldDAO;
    
    @Override
    public Integer create(Employerjobfield employerjobfield) {
        return employerJobFieldDAO.create(employerjobfield);
    }

    @Override
    public void delete(Employerjobfield employerjobfield) {
        employerJobFieldDAO.delete(employerjobfield);
    }
    
}
