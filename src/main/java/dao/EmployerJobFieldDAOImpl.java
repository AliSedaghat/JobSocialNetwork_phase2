/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Employerjobfield;
import java.util.List;

/**
 *
 * @author SAEED
 */
public class EmployerJobFieldDAOImpl extends GenericDAOImpl<Employerjobfield, Integer>{

    public EmployerJobFieldDAOImpl(Class<Employerjobfield> type) {
        super(type);
    }

    @Override
    public List<Employerjobfield> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Integer getCountAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}