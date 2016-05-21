/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entitymanager;

import databasemodels.Jobseeker;

/**
 *
 * @author SAEED
 */
public interface JobseekerManager {
    public Integer getCountAll();
    public Integer create(Jobseeker jobseeker);
    public Jobseeker get(Integer id);
    public void update(Jobseeker jobseeker);
    public void createOrUpdate(Jobseeker jobseeker);
    public Jobseeker getbyAccountId(Integer accountId);
}
