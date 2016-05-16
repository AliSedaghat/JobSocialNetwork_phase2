/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import dao.EmployerDAOImpl;

/**
 *
 * @author SAEED
 */
public class EmployerManagerImpl implements EmployerManager{

    private EmployerDAOImpl employerDAO;
    
    @Override
    public Integer getCountAll() {
        return employerDAO.getCountAll();
    }
    
}
