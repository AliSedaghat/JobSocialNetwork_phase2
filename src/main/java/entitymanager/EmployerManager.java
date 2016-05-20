/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import databasemodels.Employer;

/**
 *
 * @author SAEED
 */
public interface EmployerManager {
    public Integer getCountAll();
    public void createOrUpdate(Employer employer);
    public Employer getbyAccountId(Integer accountId);
}
