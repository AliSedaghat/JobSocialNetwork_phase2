/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import databasemodels.Employerjobfield;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author SAEED
 */
@Repository
public class EmployerJobFieldDAOImpl extends GenericDAOImpl<Employerjobfield, Integer>{

    public EmployerJobFieldDAOImpl() {
        super(Employerjobfield.class);
    }
    
    public EmployerJobFieldDAOImpl(Class<Employerjobfield> type) {
        super(type);
    }

    @Override
    public List<Employerjobfield> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Long getCountAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
