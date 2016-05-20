/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import databasemodels.Employerjobfield;

/**
 *
 * @author SAEED
 */
public interface EmployerJobFieldManager {
    public Integer create(Employerjobfield employerjobfield);
    public void delete(Employerjobfield employerjobfield);
}
